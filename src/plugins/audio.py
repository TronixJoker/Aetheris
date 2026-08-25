"""音频插件.

负责音频采集、编码、播放和发送。
"""

import asyncio
import os
from typing import TYPE_CHECKING, Optional

from src.audio_codecs.audio_codec import AudioCodec
from src.core.event_bus import Events
from src.logging import get_logger
from src.plugins.base import Plugin

if TYPE_CHECKING:
    from src.bootstrap.protocols import PluginCommands, PluginContext

logger = get_logger()

MAX_CONCURRENT_AUDIO_SENDS = 4


class AudioPlugin(Plugin):
    name = "audio"
    priority = 10  # 最高优先级，其他插件依赖 audio_codec

    def __init__(self) -> None:
        super().__init__()
        self.codec: Optional[AudioCodec] = None
        self._send_sem = asyncio.Semaphore(MAX_CONCURRENT_AUDIO_SENDS)
        # 静音期使用单调递增 token 防止并发状态切换时旧任务把标志提前清掉
        self._silence_token = 0
        self._in_silence_period = False
        # 客户端 VAD（说完话自动停止识别）
        self._vad_detector = None
        # 声纹人物识别
        self._speaker_mgr = None

    async def setup(self, ctx: "PluginContext", cmd: "PluginCommands") -> None:
        await super().setup(ctx, cmd)

        if os.getenv("XIAOZHI_DISABLE_AUDIO") == "1":
            logger.warning("音频已通过 XIAOZHI_DISABLE_AUDIO=1 禁用")
            await ctx.event_bus.emit(
                Events.UI_UPDATE_STATUS,
                {"status": "音频已禁用", "connected": False},
            )
            return

        try:
            self.codec = AudioCodec()
            await self.codec.initialize()
            self.codec.set_encoded_callback(self._on_encoded_audio)

            from src.mcp.tools.music.music_player import get_music_player_instance

            music_player = get_music_player_instance()
            music_player.set_audio_codec(self.codec)

            # 订阅配置变更事件
            ctx.event_bus.on(Events.CONFIG_CHANGED, self._on_config_changed)
            # 订阅声纹重置请求（来自设置界面）
            ctx.event_bus.on(Events.SPEAKER_RESET_REQUEST, self._on_speaker_reset)

            # 初始化客户端 VAD + 声纹识别（模型加载放后台任务，不阻塞启动）
            self._init_speech_modules()
            if self._vad_detector or self._speaker_mgr:
                self._cmd.spawn(self._load_speech_models(), "speech-models")

        except Exception as e:
            logger.error(f"音频插件初始化失败: {e}", exc_info=True)
            self.codec = None
            # 通知 UI：音频不可用，否则用户听不到声音又不知道原因
            try:
                await ctx.event_bus.emit(
                    Events.UI_UPDATE_STATUS,
                    {"status": "音频设备不可用", "connected": False},
                )
            except Exception:
                pass

    def _init_speech_modules(self) -> None:
        """创建 VAD 与声纹识别实例（不加载模型）."""
        try:
            vad_enabled = bool(
                self._ctx.get_config().get_config("VAD_OPTIONS.ENABLED", True)
            )
            if vad_enabled:
                from src.audio_processing.vad import SpeechEndDetector

                self._vad_detector = SpeechEndDetector()
                self._vad_detector.on_speech_end = self._on_speech_end
        except Exception as e:
            logger.warning(f"VAD 初始化失败（不影响基础功能）: {e}")
            self._vad_detector = None

        try:
            spk_enabled = bool(
                self._ctx.get_config().get_config("SPEAKER_ID_OPTIONS.ENABLED", True)
            )
            if spk_enabled:
                from src.audio_processing.speaker_recognition import (
                    SpeakerRecognitionManager,
                )

                self._speaker_mgr = SpeakerRecognitionManager()
                self._speaker_mgr.on_identified = self._on_speaker_identified
                self._speaker_mgr.on_enroll_progress = self._on_enroll_progress
                self._speaker_mgr.on_enrolled = self._on_enrolled
        except Exception as e:
            logger.warning(f"声纹识别初始化失败（不影响基础功能）: {e}")
            self._speaker_mgr = None

    async def _load_speech_models(self) -> None:
        """后台加载 VAD / 声纹模型并挂载到音频管线."""
        try:
            if self._vad_detector is not None:
                ok = await asyncio.to_thread(self._vad_detector.start)
                if ok and self.codec:
                    self.codec.add_audio_listener(self._vad_detector)
                    logger.info("客户端 VAD 已启用：说完话将自动停止识别")
                else:
                    self._vad_detector = None
        except Exception as e:
            logger.warning(f"VAD 模型加载失败（自动停止识别不可用）: {e}")
            self._vad_detector = None

        try:
            if self._speaker_mgr is not None:
                ok = await asyncio.to_thread(self._speaker_mgr.initialize)
                if ok:
                    logger.info("声纹人物识别已启用")
                else:
                    self._speaker_mgr = None
        except Exception as e:
            logger.warning(f"声纹模型加载失败（人物识别不可用）: {e}")
            self._speaker_mgr = None

    def _on_speech_end(self, samples, duration_ms: float) -> None:
        """VAD 检测到用户说完一句话（工作线程调用）.

        1. 用该语音段做声纹识别
        2. 通知容器自动结束本轮监听
        """
        # 声纹识别（在本线程执行，约几十毫秒，不阻塞音频采集）
        if self._speaker_mgr is not None and self._speaker_mgr.enabled:
            try:
                self._speaker_mgr.process_speech(samples)
            except Exception as e:
                logger.debug(f"声纹识别失败: {e}")

        # 自动停止识别（调度回事件循环）
        if self._vad_detector is not None:
            try:
                self._cmd.on_speech_end()
            except Exception as e:
                logger.warning(f"调度自动停止失败: {e}")

    def _on_speaker_identified(self, name: str, score: float) -> None:
        """声纹识别结果回调（工作线程调用），转发到事件总线."""
        try:
            self._cmd.schedule_command_nowait(self._emit_speaker_event, name, score)
        except Exception as e:
            logger.debug(f"调度声纹事件失败: {e}")

    def _on_enroll_progress(self, current: int, total: int) -> None:
        """声纹注册进度回调（工作线程调用）."""
        try:
            self._cmd.schedule_command_nowait(
                self._emit_enroll_event, "enroll_progress", current, total
            )
        except Exception as e:
            logger.debug(f"调度注册进度事件失败: {e}")

    def _on_enrolled(self, name: str) -> None:
        """声纹注册完成回调（工作线程调用）."""
        try:
            self._cmd.schedule_command_nowait(
                self._emit_enroll_event, "enrolled", 0, 0, name
            )
        except Exception as e:
            logger.debug(f"调度注册完成事件失败: {e}")

    async def _emit_speaker_event(self, name: str, score: float) -> None:
        """在事件循环中发出声纹识别事件（UI 插件消费）."""
        try:
            await self._ctx.event_bus.emit(
                Events.SPEAKER_IDENTIFIED,
                {"type": "identified", "name": name, "score": score},
            )
        except Exception as e:
            logger.debug(f"发出声纹事件失败: {e}")

    async def _emit_enroll_event(
        self, kind: str, current: int = 0, total: int = 0, name: str = ""
    ) -> None:
        """在事件循环中发出声纹注册事件（UI 插件消费）."""
        try:
            data = {"type": kind, "current": current, "total": total, "name": name}
            await self._ctx.event_bus.emit(Events.SPEAKER_IDENTIFIED, data)
        except Exception as e:
            logger.debug(f"发出注册事件失败: {e}")

    async def _on_config_changed(self, data=None):
        """配置变更时重新加载音频设备."""
        if self.codec:
            logger.info("AudioPlugin: 收到配置变更事件，重新加载音频设备")
            await self.codec.reload_devices()

    async def _on_speaker_reset(self, _=None) -> None:
        """处理声纹重置请求：清空已注册声纹，重新进入注册流程."""
        if self._speaker_mgr is None or not self._speaker_mgr.enabled:
            logger.info("声纹识别未启用，无需重置")
            return
        try:
            self._speaker_mgr.reset_profiles()
            logger.info("声纹档案已重置，将重新注册主人")
        except Exception as e:
            logger.error(f"重置声纹档案失败: {e}", exc_info=True)

    async def on_device_state_changed(self, state):
        """
        设备状态变化时处理.
        """
        if not self.codec:
            return

        from src.constants.constants import DeviceState

        # VAD 门控：仅在聆听状态检测语音结束
        if self._vad_detector is not None:
            if state == DeviceState.LISTENING:
                self._vad_detector.arm()
            else:
                self._vad_detector.disarm()

        if state == DeviceState.LISTENING:
            # 用 token 防止并发状态切换时旧任务把标志提前清掉，
            # 否则快速 LISTENING→IDLE→LISTENING 切换会让静音期失效，TTS 尾音/按钮回声漏入麦
            self._silence_token += 1
            my_token = self._silence_token
            self._in_silence_period = True
            try:
                await asyncio.sleep(0.2)
            finally:
                if my_token == self._silence_token:
                    self._in_silence_period = False

    async def on_incoming_json(self, message) -> None:
        """
        处理 TTS 事件.
        """
        if not isinstance(message, dict):
            return

        try:
            if message.get("type") == "tts":
                state = message.get("state")
                if state == "start":
                    await self._pause_music_for_tts()
                elif state == "stop":
                    await self._resume_music_after_tts()
        except Exception as e:
            logger.error(f"处理 TTS 事件失败: {e}", exc_info=True)

    async def on_incoming_audio(self, data: bytes) -> None:
        """
        接收并播放音频数据.
        """
        if self.codec:
            try:
                await self.codec.write_audio(data)
            except Exception as e:
                logger.debug(f"写入音频数据失败: {e}")

    async def _pause_music_for_tts(self):
        """TTS 开始时暂停音乐（不清空 output_buffer，避免丢弃 TTS 帧）."""
        try:
            from src.mcp.tools.music.events import MusicControlRequest

            logger.info("TTS 开始，发送音乐暂停请求")
            await self._ctx.event_bus.emit(
                Events.MUSIC_PAUSE_REQUEST, MusicControlRequest(source="tts")
            )
        except Exception as e:
            logger.warning(f"发送音乐暂停请求失败: {e}")

    async def _resume_music_after_tts(self):
        """TTS 结束后恢复音乐"""
        try:
            # 通过事件总线发送恢复请求
            from src.mcp.tools.music.events import MusicControlRequest

            logger.info("TTS 播放完成，发送音乐恢复请求")
            await self._ctx.event_bus.emit(
                Events.MUSIC_RESUME_REQUEST, MusicControlRequest(source="tts")
            )
        except Exception as e:
            logger.error(f"发送音乐恢复请求失败: {e}", exc_info=True)

    def register_resources(self, pool) -> None:
        codec = self.codec
        vad_detector = self._vad_detector

        if vad_detector:
            pool.register("audio.vad", lambda: vad_detector.stop())

        if codec:

            async def _cleanup():
                """音频编解码器完整清理"""
                import gc

                try:
                    if vad_detector:
                        vad_detector.stop()
                except Exception:
                    pass
                try:
                    from src.mcp.tools.music.music_player import get_music_player_instance

                    try:
                        music_player = get_music_player_instance()
                        if music_player.is_playing:
                            await music_player.stop()
                        if music_player.decoder:
                            await music_player.decoder.stop()
                            music_player.decoder = None
                        music_player.set_audio_codec(None)
                    except Exception as e:
                        logger.debug(f"清理音乐播放器失败: {e}")
                except Exception:
                    pass
                gc.collect()
                await codec.close()

            pool.register("audio.codec", _cleanup)

    def _on_encoded_audio(self, encoded_data: bytes) -> None:
        """
        音频编码回调（从音频线程调用）.
        """
        try:
            if not self._cmd:
                return
            self._cmd.schedule_command_nowait(self._send_audio_async, encoded_data)
        except Exception as e:
            logger.error(f"调度音频发送失败: {e}")

    async def _send_audio_async(self, encoded_data: bytes) -> None:
        """
        异步发送音频数据.
        """
        async with self._send_sem:
            try:
                if not self._ctx.is_audio_channel_opened():
                    return
                if self._should_send_microphone_audio():
                    await self._cmd.send_audio(encoded_data)
            except Exception as e:
                logger.error(f"发送音频数据失败: {e}")

    def _should_send_microphone_audio(self) -> bool:
        """
        判断是否应该发送麦克风音频.
        """
        try:
            if self._in_silence_period:
                return False
            return self._ctx.should_capture_audio()
        except Exception:
            return False
