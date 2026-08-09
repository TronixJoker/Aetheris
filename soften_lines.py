from PIL import Image
import numpy as np
from scipy import ndimage

img = Image.open('/workspace/apk_decoded/assets/pet_texture.png').convert('RGBA')
arr = np.array(img)
rgb = arr[:,:,:3].copy()
alpha = arr[:,:,3]
h, w = rgb.shape[:2]

brightness = rgb.mean(axis=2)

# 找黑色描边像素(亮度<80, 不透明)
black_mask = (brightness < 80) & (alpha > 0)
print(f"黑色描边像素: {black_mask.sum()}")

# 方法: 把黑色描边像素的亮度提升到周围平均亮度
# 用形态学膨胀找黑色像素的邻居(非黑)
dilated = ndimage.binary_dilation(black_mask, iterations=1)
neighbors = dilated & ~black_mask & (alpha > 0)

# 计算邻居的平均亮度(作为目标)
neighbor_brightness = brightness.copy()
# 对每个黑色像素, 用周围非黑像素的平均亮度替换
# 用滤波: 把黑色像素设为NaN, 然后用周围填充
bright_float = brightness.astype(float).copy()
bright_float[black_mask] = np.nan

# 用3x3邻域均值填充NaN
from scipy.ndimage import generic_filter
def nanmean(x):
    valid = x[~np.isnan(x)]
    return valid.mean() if len(valid) > 0 else 0

# 只对黑色像素做局部填充
filled = bright_float.copy()
# 简单方法: 多次迭代用邻居均值填充
for _ in range(3):
    for r, c in zip(*np.where(np.isnan(filled))):
        # 取3x3邻域
        r0, r1 = max(0,r-1), min(h,r+2)
        c0, c1 = max(0,c-1), min(w,c+2)
        neighborhood = filled[r0:r1, c0:c1]
        valid = neighborhood[~np.isnan(neighborhood)]
        if len(valid) > 0:
            filled[r,c] = valid.mean()

# 把黑色像素的亮度提升到周围均值(但保留一点暗度作为描边感)
target_brightness = filled[black_mask]
# 提升到周围的80%(保留轻微描边)
original_black = brightness[black_mask]
# 目标 = 周围均值 * 0.9 (轻微暗)
new_brightness = (target_brightness * 0.9).clip(0, 255)

# 应用: 把黑色像素的RGB设为新亮度(保持灰度)
for c in range(3):
    rgb_channel = rgb[:,:,c].astype(float)
    # 黑色像素: 保持其相对RGB比例, 整体提升亮度
    black_pixels_rgb = rgb[black_mask].astype(float)
    # 计算每个黑色像素的亮度提升比例
    ratio = np.where(original_black > 0, new_brightness / original_black, 1.0)
    rgb_channel[black_mask] = (black_pixels_rgb[:,c] if c==0 else rgb[black_mask,c].astype(float)) * ratio if c==0 else rgb[black_mask,c].astype(float) * ratio
    rgb[:,:,c] = rgb_channel.astype(np.uint8)

# 简化: 直接把黑色像素设为灰度(目标亮度)
rgb_simple = rgb.copy()
gray_val = new_brightness.astype(np.uint8)
for c in range(3):
    rgb_simple[:,:,c] = np.where(black_mask, gray_val, rgb[:,:,c])

arr[:,:,:3] = rgb_simple
Image.fromarray(arr).save('/workspace/apk_decoded/assets/pet_texture.png')

# 验证
brightness_new = rgb_simple.mean(axis=2)
black_new = (brightness_new < 80) & (alpha > 0)
print(f"处理后黑色像素: {black_new.sum()}")
print(f"原黑色像素新亮度: 均值{brightness_new[black_mask].mean():.0f}")
