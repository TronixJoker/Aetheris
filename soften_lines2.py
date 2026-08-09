from PIL import Image
import numpy as np

img = Image.open('/workspace/apk_decoded/assets/pet_texture.png').convert('RGBA')
arr = np.array(img)
rgb = arr[:,:,:3].copy()
alpha = arr[:,:,3]
h, w = rgb.shape[:2]

brightness = rgb.mean(axis=2)
black_mask = (brightness < 80) & (alpha > 0)
print(f"黑色描边像素: {black_mask.sum()}")

# 对每个黑色像素, 计算周围3x3非黑像素的平均亮度, 作为新亮度
black_idx = np.where(black_mask)
new_rgb = rgb.copy()

for r, c in zip(*black_idx):
    r0, r1 = max(0,r-2), min(h,r+3)
    c0, c1 = max(0,c-2), min(w,c+3)
    neighborhood = brightness[r0:r1, c0:c1]
    neighbor_mask = neighborhood >= 80  # 非黑邻居
    if neighbor_mask.sum() > 0:
        target = neighborhood[neighbor_mask].mean()
        # 提升到邻居均值的90%(保留轻微描边感)
        new_bright = int(target * 0.9)
        new_rgb[r, c] = [new_bright, new_bright, new_bright]

arr[:,:,:3] = new_rgb
Image.fromarray(arr).save('/workspace/apk_decoded/assets/pet_texture.png')

# 验证
brightness_new = new_rgb.mean(axis=2)
black_new = ((brightness_new < 80) & (alpha > 0)).sum()
print(f"处理后黑色像素(<80): {black_new}")
print(f"原黑色像素新亮度均值: {brightness_new[black_mask].mean():.0f}")
