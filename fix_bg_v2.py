from PIL import Image
import numpy as np

img = Image.open('/tmp/v110_extract/assets/pet_texture.png').convert('RGBA')
arr = np.array(img)
rgb = arr[:,:,:3].copy()
alpha = arr[:,:,3].copy()

# 1.9.10 纹理: alpha全255, 背景是深灰(RGB 20-35)
# 眼睛等是纯黑(RGB接近0) 或 有颜色的深色
# 区分: 背景是"低饱和的深灰"(RGB三通道接近且20-50)
#       主体深色是"纯黑"(RGB接近0) 或 "有颜色"(饱和度高)

brightness = rgb.mean(axis=2)
saturation = rgb.max(axis=2).astype(int) - rgb.min(axis=2).astype(int)

# 背景: 深灰 (亮度15-80, 饱和<15) - 排除纯黑(亮度<15)和高饱和
bg_mask = (brightness >= 15) & (brightness < 80) & (saturation < 15)
print(f"背景候选(深灰,亮度15-80,饱和<15): {bg_mask.sum()} ({bg_mask.sum()/rgb.size*100/3:.1f}%)")

# 看背景像素的RGB分布
if bg_mask.sum() > 0:
    bg_rgb = rgb[bg_mask]
    print(f"背景RGB均值: {bg_rgb.mean(axis=0)}")
    print(f"背景RGB范围: R[{bg_rgb[:,0].min()}-{bg_rgb[:,0].max()}]")

# 检查眼睛(纯黑)是否被排除
eye_dark = brightness < 15  # 纯黑
print(f"\n纯黑像素(亮度<15): {eye_dark.sum()}")
print(f"  其中被误判为背景: {(eye_dark & bg_mask).sum()}")

# 设背景为透明
alpha[bg_mask] = 0
arr[:,:,3] = alpha

Image.fromarray(arr).save('/workspace/apk_decoded/assets/pet_texture.png')
print(f"\n→ 保存, 透明像素: {(alpha==0).sum()} ({(alpha==0).sum()/alpha.size*100:.1f}%)")

# 验证眼睛
eye_row = 1947
eye_alpha = alpha[eye_row]
eye_rgb_row = rgb[eye_row]
eye_dark_row = eye_rgb_row.sum(axis=1) < 90
print(f"眼睛行(row={eye_row}): 深色{eye_dark_row.sum()}个, 透明{(eye_alpha[eye_dark_row]==0).sum()}个")
