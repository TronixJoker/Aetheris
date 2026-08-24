"""语音端点检测（VAD）模块.

基于 sherpa-onnx silero VAD，在客户端本地检测用户何时说完一句话。
解决"说完话后一直处于识别状态、不自动停止"的问题。

设计要点：
- 音频监听器回调运行在 PortAudio 高优先级线程，这里只做入队，
  实际 VAD 推理在独立工作线程执行，避免阻塞采集。
- silero VAD 需要 512 样本窗口（16kHz 下约 32ms），
  而输入帧是 320 样本（20ms），内部攒够再喂。
- 检测到一段完整语音（说话→静音≥阈值）后触发回调，
  回调在工作线程执行，调用方需自行调度回事件循环。
"""

import threading
from queue import Empty, Queue
from typing import Callable, Optional

import numpy as np

from src.logging import get_logger
from src.utils.config_manager import ConfigManager
from src.utils.resource_finder import get_models_dir

logger = get_logger()

# silero VAD 固定窗口大小（16kHz）
SILERO_WINDOW_SIZE = 512


class SpeechEndDetector:
    """语音结束检测器.

    持续接收麦克风音频（float32 / 16kHz / 单声道），
    当检测到一段语音结束（说完话后静音超过阈值）时触发回调。

    用法:
        detector = SpeechEndDetector()
        detector.on_speech_end = callback  # callback(samples, duration_ms)
        detector.start()
        codec.add_audio_listener(detector)  # 实现 on_audio_data
        ...
        detector.stop()
    """

    def __init__(self):
        self.enabled = False
        self.on_speech_end: Optional[Callable[[np.ndarray, float], None]] = None

        self._vad = None
        self._sample_buffer = np.empty(0, dtype=np.float32)
        self._queue: "Queue[Optional[np.ndarray]]" = Queue()
        self._worker: Optional[threading.Thread] = None
        self._running = False
        self._active = False  # 仅在 LISTENING 状态时处理音频
        self._lock = threading.Lock()

        # 配置参数
        self._load_config()

        # 统计信息
        self._speech_count = 0

    # -------------------------
    # 生命周期
    # -------------------------
    def start(self) -> bool:
        """加载模型并启动检测线程."""
        try:
            if self._running:
                return True

            if not self._load_model():
                return False

            self._running = True
            self._worker = threading.Thread(
                target=self._process_loop,
                name="vad-worker",
                daemon=True,
            )
            self._worker.start()
            self.enabled = True
            logger.info(
                f"语音端点检测已启动 (静音阈值={self._silence_duration}s, "
                f"最短语音={self._min_speech_duration}s)"
            )
            return True
        except Exception as e:
            logger.error(f"语音端点检测启动失败: {e}", exc_info=True)
            return False

    def stop(self) -> None:
        """停止检测线程并释放资源."""
        self._running = False
        self.enabled = False
        # 唤醒工作线程使其退出
        self._queue.put(None)
        if self._worker and self._worker.is_alive():
            self._worker.join(timeout=2.0)
        self._worker = None
        with self._lock:
            self._vad = None
            self._sample_buffer = np.empty(0, dtype=np.float32)

    # -------------------------
    # AudioListener 接口（由 AudioCodec 在音频线程调用）
    # -------------------------
    def on_audio_data(self, audio_data: np.ndarray) -> None:
        """接收音频帧（float32, 16kHz, 单声道）.

        只做入队，不做推理——该方法在 PortAudio 线程执行。
        仅在激活（arm）状态下才入队，避免处理非监听期音频。
        """
        if not (self._running and self._active):
            return
        try:
            self._queue.put(audio_data)
        except Exception:
            pass

    # -------------------------
    # 激活控制（由设备状态驱动）
    # -------------------------
    def arm(self) -> None:
        """激活检测（进入 LISTENING 状态时调用）：清空旧缓冲，开始新一轮检测."""
        if not self._running:
            return
        self.reset()
        self._active = True

    def disarm(self) -> None:
        """停用检测（离开 LISTENING 状态时调用）."""
        self._active = False

    # -------------------------
    # 内部实现
    # -------------------------
    def _load_config(self) -> None:
        config = ConfigManager.get_instance()
        self._threshold = float(
            config.get_config("VAD_OPTIONS.THRESHOLD", 0.5)
        )
        self._silence_duration = float(
            config.get_config("VAD_OPTIONS.SILENCE_DURATION", 0.7)
        )
        self._min_speech_duration = float(
            config.get_config("VAD_OPTIONS.MIN_SPEECH_DURATION", 0.3)
        )
        self._num_threads = int(config.get_config("VAD_OPTIONS.NUM_THREADS", 1))

    def _load_model(self) -> bool:
        """加载 silero VAD 模型."""
        try:
            import sherpa_onnx

            model_path = get_models_dir() / "vad" / "silero_vad.onnx"
            if not model_path.exists():
                logger.warning(f"VAD 模型不存在，语音端点检测不可用: {model_path}")
                return False

            vad_config = sherpa_onnx.VadModelConfig()
            vad_config.silero_vad.model = str(model_path)
            vad_config.silero_vad.threshold = self._threshold
            vad_config.silero_vad.min_silence_duration = self._silence_duration
            vad_config.silero_vad.min_speech_duration = self._min_speech_duration
            vad_config.sample_rate = 16000
            vad_config.num_threads = self._num_threads

            self._vad = sherpa_onnx.VoiceActivityDetector(
                vad_config, buffer_size_in_seconds=60
            )
            logger.info(f"silero VAD 模型加载成功: {model_path}")
            return True
        except ImportError:
            logger.warning("sherpa_onnx 未安装，语音端点检测不可用")
            return False
        except Exception as e:
            logger.error(f"VAD 模型加载失败: {e}", exc_info=True)
            return False

    def _process_loop(self) -> None:
        """工作线程主循环：消费音频帧，运行 VAD 推理."""
        while self._running:
            try:
                item = self._queue.get(timeout=0.5)
            except Empty:
                continue
            if item is None:
                break

            try:
                self._process_frame(item)
            except Exception as e:
                logger.warning(f"VAD 处理帧失败: {e}")

    def _process_frame(self, frame: np.ndarray) -> None:
        """处理单个音频帧：攒够 512 样本喂 VAD，检测语音段结束."""
        vad = self._vad
        if vad is None:
            return

        # 攒够 silero 窗口
        self._sample_buffer = np.concatenate([self._sample_buffer, frame])
        while len(self._sample_buffer) >= SILERO_WINDOW_SIZE:
            window = self._sample_buffer[:SILERO_WINDOW_SIZE]
            self._sample_buffer = self._sample_buffer[SILERO_WINDOW_SIZE:]
            vad.accept_waveform(window)

        # VAD 检测到一段完整语音（说话→静音）会产出语音段
        while not vad.empty():
            segment = vad.front
            samples = np.array(segment.samples, dtype=np.float32)
            duration_ms = len(samples) / 16.0  # 16kHz → ms
            vad.pop()

            # 过滤过短的段（咳嗽/碰撞声等）
            if duration_ms < self._min_speech_duration * 1000:
                continue

            self._speech_count += 1
            logger.debug(
                f"检测到语音段 #{self._speech_count}: {duration_ms:.0f}ms"
            )

            if self.on_speech_end:
                try:
                    self.on_speech_end(samples, duration_ms)
                except Exception as e:
                    logger.warning(f"语音结束回调执行失败: {e}")

    def reset(self) -> None:
        """重置 VAD 状态（清空缓冲，开始新的一轮检测）."""
        with self._lock:
            if self._vad is not None:
                try:
                    self._vad.reset()
                except Exception:
                    pass
            self._sample_buffer = np.empty(0, dtype=np.float32)
        # 丢弃积压帧
        try:
            while True:
                self._queue.get_nowait()
        except Exception:
            pass

    @property
    def speech_count(self) -> int:
        """已检测到的语音段数（用于调试/注册流程）."""
        return self._speech_count
