from PIL import Image
import numpy as np

img = Image.open('/workspace/apk_decoded/assets/pet_texture.png').convert('RGBA')
arr = np.array(img)
rgb = arr[:,:,:3]
alpha = arr[:,:,3].copy()

# 背景: 深灰色 (RGB 20-35, 低饱和)
# 但要保留机器人的深色部分(眼睛等)
# 区别: 背景是大面积连续的深灰, 眼睛是小块深色

# 先识别背景: 亮度<60 且 饱和度<20
brightness = rgb.mean(axis=2)
saturation = rgb.max(axis=2).astype(int) - rgb.min(axis=2).astype(int)
bg_candidate = (brightness < 60) & (saturation < 20)

# 用连通区域分析: 只保留大面积的背景区域(去除小块深色如眼睛)
# 简化: 从四角做flood fill 找背景
from scipy import ndimage

# 标记背景候选的连通区域
labeled, num_features = ndimage.label(bg_candidate)
print(f"背景候选连通区域数: {num_features}")

# 找四角所属的连通区域
h, w = bg_candidate.shape
corner_labels = set()
for r, c in [(0,0), (0,w-1), (h-1,0), (h-1,w-1)]:
    if bg_candidate[r,c]:
        corner_labels.add(labeled[r,c])
print(f"四角所属连通区域: {corner_labels}")

# 统计每个连通区域大小
sizes = ndimage.sum(bg_candidate, labeled, range(1, num_features+1))
print(f"连通区域大小(前10大): {sorted(sizes, reverse=True)[:10]}")

# 只把四角连通区域(大背景)设为透明, 保留小区域(眼睛等)
bg_final = np.zeros_like(bg_candidate)
for label in corner_labels:
    if label > 0:
        bg_final |= (labeled == label)

print(f"最终背景像素: {bg_final.sum()} ({bg_final.sum()/bg_candidate.size*100:.1f}%)")

# 设为透明
alpha[bg_final] = 0
arr[:,:,3] = alpha

# 保存
Image.fromarray(arr).save('/workspace/apk_decoded/assets/pet_texture.png')
print(f"→ 保存, 透明像素: {(alpha==0).sum()}")

# 验证: 眼睛区域(row=1947)是否保留
eye_row = 1947
eye_alpha = alpha[eye_row]
eye_rgb = rgb[eye_row]
eye_dark = (eye_rgb.sum(axis=1) < 90)
print(f"\n眼睛行(row={eye_row}): 深色像素{eye_dark.sum()}个, 其中透明{(eye_alpha[eye_dark]==0).sum()}个")
if (eye_alpha[eye_dark]==0).sum() == 0:
    print("→ 眼睛深色像素全部保留 ✓")
else:
    print("→ 警告: 眼睛被误设为透明 ✗")
