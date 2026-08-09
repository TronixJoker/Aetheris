from PIL import Image
import numpy as np

# 检查 pet_texture.png
img = Image.open('/workspace/apk_decoded/assets/pet_texture.png').convert('RGBA')
arr = np.array(img)
print(f"纹理尺寸: {img.size}")
print(f"模式: {img.mode}")

# alpha 通道
alpha = arr[:,:,3]
print(f"\n=== Alpha 通道 ===")
print(f"范围: [{alpha.min()}, {alpha.max()}]")
print(f"均值: {alpha.mean():.1f}")
unique, counts = np.unique(alpha, return_counts=True)
print(f"唯一值(前10): {list(zip(unique[:10], counts[:10]))}")

# 检查是否有黑色像素 (RGB 都接近0)
rgb = arr[:,:,:3]
black_mask = (rgb.sum(axis=2) < 30)  # RGB总和<30 视为黑色
white_mask = (rgb.sum(axis=2) > 720)  # RGB总和>720 视为白色
print(f"\n=== 颜色分布 ===")
print(f"黑色像素: {black_mask.sum()} ({black_mask.sum()/rgb.size*100/3:.1f}%)")
print(f"白色像素: {white_mask.sum()} ({white_mask.sum()/rgb.size*100/3:.1f}%)")

# 检查四角颜色
print(f"\n=== 四角颜色 (R,G,B,A) ===")
h, w = arr.shape[:2]
print(f"左上: {arr[0,0]}")
print(f"右上: {arr[0,w-1]}")
print(f"左下: {arr[h-1,0]}")
print(f"右下: {arr[h-1,w-1]}")

# 检查透明像素的 RGB
transparent_mask = alpha < 128
if transparent_mask.sum() > 0:
    print(f"\n=== 透明像素的 RGB ===")
    trans_rgb = rgb[transparent_mask]
    print(f"透明像素数: {transparent_mask.sum()}")
    print(f"透明像素 RGB 均值: {trans_rgb.mean(axis=0)}")
    print(f"透明像素 RGB 唯一值(前5): {np.unique(trans_rgb.reshape(-1,3), axis=0)[:5]}")
