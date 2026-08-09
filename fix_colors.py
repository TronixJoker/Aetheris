from PIL import Image
import numpy as np

# 加载当前纹理(已处理背景透明)
img = Image.open('/workspace/apk_decoded/assets/pet_texture.png').convert('RGBA')
arr = np.array(img)
rgb = arr[:,:,:3].copy()
alpha = arr[:,:,3].copy()

# 找彩色像素(饱和度>20)
saturation = rgb.max(axis=2).astype(int) - rgb.min(axis=2).astype(int)
colored_mask = saturation > 20
print(f"彩色像素: {colored_mask.sum()}")

# 把彩色像素转为灰度(取亮度均值)
# 用Y = 0.299R + 0.587G + 0.114B
gray_val = (0.299*rgb[:,:,0] + 0.587*rgb[:,:,1] + 0.114*rgb[:,:,2]).astype(np.uint8)

# 只修改彩色像素: RGB三通道都设为灰度值
rgb_new = rgb.copy()
for c in range(3):
    rgb_new[:,:,c] = np.where(colored_mask, gray_val, rgb[:,:,c])

arr[:,:,:3] = rgb_new
Image.fromarray(arr).save('/workspace/apk_decoded/assets/pet_texture.png')

# 验证
saturation_new = rgb_new.max(axis=2).astype(int) - rgb_new.min(axis=2).astype(int)
colored_new = (saturation_new > 20).sum()
print(f"处理后彩色像素: {colored_new}")
print(f"→ 已将 {colored_mask.sum()} 个彩色像素转为灰度(亮度保持)")

# 采样验证: 原本偏蓝的区域
test_row, test_col = 916, 1252
print(f"\n采样点(row=916,col=1252):")
print(f"  原RGB: {rgb[test_row,test_col]}")
print(f"  新RGB: {rgb_new[test_row,test_col]}")
