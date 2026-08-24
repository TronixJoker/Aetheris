"""声纹识别（人物识别）模块.

基于 sherpa-onnx 3DSpeaker CAM++ 模型，识别"现在说话的是谁"。

工作流程：
1. 首次使用：自动注册——前 N 句有效语音自动注册为主人声纹
2. 后续对话：每句话说完（由 VAD 分段），提取声纹与已注册声纹比对
3. 相似度超过阈值 → 识别为对应人物；否则 → 陌生人

声纹数据持久化在用户数据目录，重启后无需重新注册。
"""

import threading
from typing import Callable, Optional

import numpy as np

from src.logging import get_logger
from src.utils.config_manager import ConfigManager
from src.utils.resource_finder import get_models_dir, get_user_data_dir

logger = get_logger()

# 提取声纹所需的最短语音时长（秒）；CAM++ 需要 >= 0.5s，留些余量
MIN_SEGMENT_SECONDS = 1.0


class SpeakerRecognitionManager:
    """声纹识别管理器.

    职责:
    - 加载 CAM++ 声纹提取模型
    - 管理已注册人物声纹（含持久化）
    - 自动注册主人（前 N 句话）
    - 识别说话人

    用法:
        mgr = SpeakerRecognitionManager()
        mgr.initialize()            # 加载模型 + 已注册声纹
        mgr.on_identified = cb      # cb(name, score)，陌生人时 name=""
        emb = mgr.extract(samples)  # 提取声纹（工作线程调用）
    """

    def __init__(self):
        self.enabled = False
        # 识别结果回调：cb(name: str, score: float)；name 为空表示陌生人
        self.on_identified: Optional[Callable[[str, float], None]] = None
        # 注册进度回调：cb(current: int, total: int)
        self.on_enroll_progress: Optional[Callable[[int, int], None]] = None
        # 注册完成回调：cb(name: str)
        self.on_enrolled: Optional[Callable[[str], None]] = None

        self._extractor = None
        self._manager = None  # sherpa SpeakerEmbeddingManager
        self._lock = threading.Lock()

        # 配置
        self._load_config()

        # 自动注册状态
        self._enroll_embeddings: list = []
        self._enroll_done = False
        self._owner_name: str = "主人"

        # 声纹持久化路径
        self._profile_dir = get_user_data_dir() / "speaker_profiles"

    # -------------------------
    # 初始化
    # -------------------------
    def initialize(self) -> bool:
        """加载模型和已注册声纹.

        Returns:
            bool: 初始化是否成功（模型缺失时禁用功能，不影响主流程）
        """
        try:
            import sherpa_onnx

            model_path = get_models_dir() / "speaker-id" / "speaker_model.onnx"
            if not model_path.exists():
                logger.warning(f"声纹模型不存在，人物识别不可用: {model_path}")
                return False

            extractor_config = sherpa_onnx.SpeakerEmbeddingExtractorConfig(
                model=str(model_path),
                num_threads=self._num_threads,
                provider="cpu",
            )
            self._extractor = sherpa_onnx.SpeakerEmbeddingExtractor(extractor_config)
            self._manager = sherpa_onnx.SpeakerEmbeddingManager(
                self._extractor.dim
            )

            self._load_profiles()
            self.enabled = True
            logger.info(
                f"声纹识别初始化成功 (维度={self._extractor.dim}, "
                f"已注册 {self._manager.num_speakers} 人)"
            )
            return True
        except ImportError:
            logger.warning("sherpa_onnx 未安装，人物识别不可用")
            return False
        except Exception as e:
            logger.error(f"声纹识别初始化失败: {e}", exc_info=True)
            return False

    # -------------------------
    # 对外接口
    # -------------------------
    def extract_embedding(self, samples: np.ndarray) -> Optional[np.ndarray]:
        """提取声纹 embedding.

        Args:
            samples: float32 音频（16kHz 单声道），时长需 >= MIN_SEGMENT_SECONDS

        Returns:
            192 维 embedding，失败/过短返回 None
        """
        if self._extractor is None:
            return None
        try:
            if len(samples) < int(MIN_SEGMENT_SECONDS * 16000):
                return None

            stream = self._extractor.create_stream()
            stream.accept_waveform(16000, samples)
            embedding = self._extractor.compute(stream)
            if not embedding:
                return None
            return np.array(embedding, dtype=np.float32)
        except Exception as e:
            logger.warning(f"声纹提取失败: {e}")
            return None

    def process_speech(self, samples: np.ndarray) -> None:
        """处理一段完整语音：注册或识别（由 VAD 语音结束回调调用）.

        工作线程调用，回调通过 on_identified 通知（调用方负责线程调度）。
        """
        if not self.enabled or self._manager is None:
            return

        try:
            embedding = self.extract_embedding(samples)
            if embedding is None:
                return

            with self._lock:
                # 阶段 1：自动注册主人
                if not self._enroll_done:
                    self._enroll_embeddings.append(embedding)
                    current = len(self._enroll_embeddings)
                    logger.info(
                        f"[声纹注册] 采集第 {current}"
                        f"/{self._enroll_segments} 句主人语音"
                    )
                    if self.on_enroll_progress:
                        try:
                            self.on_enroll_progress(current, self._enroll_segments)
                        except Exception:
                            pass
                    if current >= self._enroll_segments:
                        self._finish_enrollment()
                    return

                # 阶段 2：识别说话人
                self._identify(embedding)
        except Exception as e:
            logger.warning(f"声纹处理失败: {e}")

    def _identify(self, embedding: np.ndarray) -> None:
        """比对声纹，触发识别回调."""
        name = ""
        score = 0.0
        try:
            # search 返回匹配到的人物名（未超过阈值时为空字符串）
            name = str(self._manager.search(embedding, threshold=self._threshold))

            # 计算相似度：命中时对命中人物；陌生人时取最高分用于展示
            if name:
                try:
                    score = float(self._manager.score(name, embedding))
                except (TypeError, ValueError):
                    score = 0.0
            else:
                for spk in self._manager.all_speakers:
                    try:
                        s = float(self._manager.score(spk, embedding))
                        score = max(score, s)
                    except Exception:
                        continue
        except Exception as e:
            logger.warning(f"声纹比对失败: {e}")
            return

        if name:
            logger.info(f"[人物识别] {name} (相似度 {score:.3f})")
        else:
            logger.info(f"[人物识别] 陌生人 (最高相似度 {score:.3f})")

        if self.on_identified:
            try:
                self.on_identified(name, score)
            except Exception as e:
                logger.warning(f"识别回调执行失败: {e}")

    # -------------------------
    # 注册管理
    # -------------------------
    def _finish_enrollment(self) -> None:
        """完成主人注册：多句 embedding 取平均，入库并持久化."""
        try:
            embeddings = np.stack(self._enroll_embeddings)
            mean_embedding = embeddings.mean(axis=0)
            # 归一化
            norm = np.linalg.norm(mean_embedding)
            if norm > 0:
                mean_embedding = mean_embedding / norm

            self._manager.add(self._owner_name, mean_embedding)
            self._save_profile(self._owner_name, mean_embedding)
            self._enroll_done = True
            self._enroll_embeddings.clear()
            logger.info(f"[声纹注册] 主人「{self._owner_name}」声纹注册完成")
            if self.on_enrolled:
                try:
                    self.on_enrolled(self._owner_name)
                except Exception:
                    pass
        except Exception as e:
            logger.error(f"声纹注册失败: {e}", exc_info=True)

    def enroll(self, name: str, samples: np.ndarray) -> bool:
        """手动注册一个人物（供后续扩展多人物注册）."""
        if self._manager is None:
            return False
        embedding = self.extract_embedding(samples)
        if embedding is None:
            return False
        with self._lock:
            ok = self._manager.add(name, embedding)
            if ok:
                self._save_profile(name, embedding)
        return ok

    def reset_profiles(self) -> None:
        """清空所有已注册声纹（重新注册主人）."""
        with self._lock:
            try:
                if self._profile_dir.exists():
                    for f in self._profile_dir.glob("*.npy"):
                        f.unlink(missing_ok=True)
            except Exception as e:
                logger.warning(f"清理声纹文件失败: {e}")
            # 重新构造空管理器
            if self._extractor is not None:
                import sherpa_onnx

                self._manager = sherpa_onnx.SpeakerEmbeddingManager(
                    self._extractor.dim
                )
            self._enroll_embeddings.clear()
            self._enroll_done = False
            logger.info("已清空声纹档案，将重新注册主人")

    # -------------------------
    # 持久化
    # -------------------------
    def _save_profile(self, name: str, embedding: np.ndarray) -> None:
        """保存单个声纹到用户数据目录."""
        try:
            self._profile_dir.mkdir(parents=True, exist_ok=True)
            safe_name = name.replace("/", "_").replace("\\", "_")
            np.save(self._profile_dir / f"{safe_name}.npy", embedding)
        except Exception as e:
            logger.warning(f"保存声纹失败: {e}")

    def _load_profiles(self) -> None:
        """从用户数据目录加载已注册声纹."""
        try:
            if not self._profile_dir.exists():
                return
            files = list(self._profile_dir.glob("*.npy"))
            if not files:
                return

            for f in files:
                embedding = np.load(f)
                name = f.stem
                if self._manager.add(name, embedding):
                    logger.info(f"[声纹] 已加载人物档案: {name}")

            # 已有主人档案则无需再注册
            if self._manager.num_speakers > 0:
                self._enroll_done = True
        except Exception as e:
            logger.warning(f"加载声纹档案失败: {e}")

    def _load_config(self) -> None:
        config = ConfigManager.get_instance()
        self._threshold = float(config.get_config("SPEAKER_ID_OPTIONS.THRESHOLD", 0.55))
        self._enroll_segments = int(
            config.get_config("SPEAKER_ID_OPTIONS.ENROLL_SEGMENTS", 3)
        )
        self._num_threads = int(config.get_config("SPEAKER_ID_OPTIONS.NUM_THREADS", 1))
        self._owner_name = str(
            config.get_config("SPEAKER_ID_OPTIONS.OWNER_NAME", "主人")
        )

    # -------------------------
    # 状态查询
    # -------------------------
    @property
    def is_enrolled(self) -> bool:
        """主人声纹是否已注册."""
        return self._enroll_done

    @property
    def registered_count(self) -> int:
        """已注册人数."""
        if self._manager is None:
            return 0
        try:
            return self._manager.num_speakers
        except Exception:
            return 0
