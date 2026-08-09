from PIL import Image
import numpy as np

img = Image.open('/workspace/apk_decoded/assets/pet_texture.png').convert('RGBA')
arr = np.array(img)
rgb = arr[:,:,:3]

# 计算每个像素的亮度
brightness = rgb.mean(axis=2)
# 计算像素的饱和度 (max-min)
saturation = rgb.max(axis=2).astype(int) - rgb.min(axis=2).astype(int)

# 直方图: 亮度分布
print("=== 亮度直方图 ===")
for b in range(0, 256, 16):
    count = ((brightness >= b) & (brightness < b+16)).sum()
    if count > 0:
        print(f"  [{b:3d}-{b+16:3d}): {count}")

# 深色低饱和 (背景特征: 暗 + 灰)
bg_mask = (brightness < 60) & (saturation < 20)
print(f"\n=== 背景候选 (亮度<60 且 饱和度<20) ===")
print(f"像素数: {bg_mask.sum()} ({bg_mask.sum()/rgb.size*100/3:.1f}%)")

# 看背景候选像素的 RGB 分布
if bg_mask.sum() > 0:
    bg_rgb = rgb[bg_mask]
    print(f"背景 RGB 均值: {bg_rgb.mean(axis=0)}")
    print(f"背景 RGB 范围: R[{bg_rgb[:,0].min()}-{bg_rgb[:,0].max()}], G[{bg_rgb[:,1].min()}-{bg_rgb[:,1].max()}], B[{bg_rgb[:,2].min()}-{bg_rgb[:,2].max()}]")

# 机器人主体 (亮 或 彩色)
subject_mask = (brightness >= 60) | (saturation >= 20)
print(f"\n=== 主体候选 ===")
print(f"像素数: {subject_mask.sum()} ({subject_mask.sum()/rgb.size*100/3:.1f}%)")

# 保存一个分析图: 背景标红, 主体标绿
vis = np.zeros_like(arr)
vis[bg_mask] = [255, 0, 0, 255]  # 背景红
vis[subject_mask] = [0, 255, 0, 255]  # 主体绿
Image.fromarray(vis).save('/tmp/texture_analysis.png')
print("-> /tmp/texture_analysis.png")
