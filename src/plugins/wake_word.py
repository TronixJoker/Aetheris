"""唤醒词插件.

检测唤醒词并触发对话。
"""

import asyncio
from typing import TYPE_CHECKING, Optional

from src.constants.constants import AbortReason
from src.core.event_bus import Events
from src.logging import get_logger
from src.plugins.base import Plugin

if TYPE_CHECKING:
    from src.bootstrap.protocols import PluginCommands, PluginContext

logger = get_logger()

WATCHDOG_CHECK_INTERVAL = 10  # 看门狗检查间隔（秒）


class WakeWordPlugin(Plugin):
    name = "wake_word"
    priority = 30
    requires = ["audio"]

    def __init__(self) -> None:
        super().__init__()
        self.detector = None
        self._watchdog_task = None

    @property
    def _audio_plugin(self):
        """通过依赖注入获取 AudioPlugin."""
        return self.get_dep("audio")

    async def setup(self, ctx: "PluginContext", cmd: "PluginCommands") -> None:
        await super().setup(ctx, cmd)
        # 订阅配置变更事件（轻量，不加载模型）
        ctx.event_bus.on(Events.CONFIG_CHANGED, self._on_config_changed)

    async def _on_config_changed(self, data=None):
        """配置变更时重新加载唤醒词模型."""
        logger.info("WakeWordPlugin: 收到配置变更事件，重新加载唤醒词模型")
        await self.reload_model()

    async def start(self) -> None:
        try:
            # 延迟加载模型到 start() 阶段，避免 setup() 时与 PortAudio DLL 冲突
            if self.detector is None:
                from src.audio_processing.wake_word_detect import WakeWordDetector

                self.detector = WakeWordDetector()
                if not await self.detector.initialize():
                    logger.info("唤醒词检测器未启用或初始化失败")
                    self.detector = None
                    return
                self.detector.on_detected(self._on_detected)
                self.detector.on_error = self._on_error

            if not self._audio_plugin or not self._audio_plugin.codec:
                logger.warning("未找到 audio_codec，无法启动唤醒词检测")
                return
            await self.detector.start(self._audio_plugin.codec)

            # 启动看门狗：检测循环异常退出后自动重启，避免用户静默失去唤醒能力
            if self._watchdog_task is None or self._watchdog_task.done():
                self._watchdog_task = self._cmd.spawn(
                    self._watchdog_loop(), name="wake_word:watchdog"
                )
        except ImportError as e:
            logger.error(f"无法导入唤醒词检测器: {e}")
            self.detector = None
        except Exception as e:
            logger.error(f"启动唤醒词检测器失败: {e}", exc_info=True)

    async def _watchdog_loop(self) -> None:
        """周期性检查唤醒词检测循环是否死亡，若死亡则重启.

        检测循环在累计 MAX_ERRORS 次错误后会 break 退出，但 _running 仍为 True，
        导致用户静默失去唤醒能力。看门狗负责发现并恢复这种状态。
        """
        while True:
            try:
                await asyncio.sleep(WATCHDOG_CHECK_INTERVAL)
                detector = self.detector
                if detector is None:
                    continue
                # 检测任务已结束但仍标记为 running 且不在停止流程中 → 异常退出
                task = getattr(detector, "_detection_task", None)
                if (
                    getattr(detector, "_running", False)
                    and not getattr(detector, "_stopping", False)
                    and (task is None or task.done())
                ):
                    logger.warning("唤醒词检测循环已死亡，尝试重启...")
                    try:
                        await detector.stop()
                    except Exception as e:
                        logger.debug(f"重启前 stop 失败: {e}")

                    codec = (
                        self._audio_plugin.codec
                        if self._audio_plugin
                        else None
                    )
                    if codec is None:
                        logger.warning("无 audio codec，无法重启唤醒词检测")
                        continue

                    ok = await detector.start(codec)
                    if ok:
                        logger.info("唤醒词检测循环已重启")
                        try:
                            await self._ctx.event_bus.emit(
                                Events.UI_UPDATE_STATUS,
                                {"status": "唤醒词已恢复", "connected": True},
                            )
                        except Exception:
                            pass
                    else:
                        logger.error("唤醒词检测循环重启失败")
            except asyncio.CancelledError:
                break
            except Exception as e:
                logger.debug(f"唤醒词看门狗异常: {e}")

    async def stop(self) -> None:
        # 先停看门狗，避免关闭期间它误判检测器死亡而尝试重启
        if self._watchdog_task and not self._watchdog_task.done():
            self._watchdog_task.cancel()
            try:
                await self._watchdog_task
            except asyncio.CancelledError:
                pass
            self._watchdog_task = None

        if self.detector:
            try:
                await self.detector.stop()
            except Exception as e:
                logger.warning(f"停止唤醒词检测器失败: {e}")

    def register_resources(self, pool) -> None:
        detector = self.detector
        if detector:
            pool.register("wake_word.detector", detector.shutdown)

    async def reload_model(self, model_path: Optional[str] = None) -> bool:
        """热重载唤醒词模型.

        Args:
            model_path: 新模型路径（如 "models/en"）。如果为 None，从配置读取。

        Returns:
            是否重载成功
        """
        if not self.detector:
            logger.warning("检测器未初始化，无法热重载")
            return False

        try:
            return await self.detector.reload(model_path)
        except Exception as e:
            logger.error(f"热重载唤醒词模型失败: {e}", exc_info=True)
            return False

    async def _on_detected(self, wake_word, full_text):
        """
        唤醒词检测回调.
        """
        try:
            if self._ctx.is_speaking():
                await self._cmd.abort_speaking(AbortReason.WAKE_WORD_DETECTED)
                if self._audio_plugin and self._audio_plugin.codec:
                    await self._audio_plugin.codec.clear_audio_queue()
            else:
                # 启动自动对话
                await self._cmd.connect_protocol()
                from src.constants.constants import ListeningMode

                mode = (
                    ListeningMode.REALTIME
                    if self._ctx.get_config().get_config("AEC_OPTIONS.ENABLED", True)
                    else ListeningMode.AUTO_STOP
                )
                await self._cmd.start_listening(mode)
        except Exception as e:
            logger.error(f"处理唤醒词检测失败: {e}", exc_info=True)

    async def _on_error(self, error):
        """
        唤醒词检测错误回调.
        """
        logger.error(f"唤醒词检测错误: {error}")
