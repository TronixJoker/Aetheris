from PIL import Image
import numpy as np

# 1.9.13原始纹理
img = Image.open('/workspace/apk_decoded/assets/pet_texture.png').convert('RGBA')
arr = np.array(img)
rgb = arr[:,:,:3]
alpha = arr[:,:,3]
h, w = rgb.shape[:2]

print(f"纹理: {w}x{h}, alpha范围[{alpha.min()},{alpha.max()}]")
print(f"RGB范围: R[{rgb[:,:,0].min()}-{rgb[:,:,0].max()}]")

# 检查: 是否是线稿风格(白底黑线)
brightness = rgb.mean(axis=2)
# 白色背景
white_pct = (brightness > 230).sum() / brightness.size * 100
# 黑色线条
black_pct = (brightness < 60).sum() / brightness.size * 100
# 中间灰
gray_pct = ((brightness >= 60) & (brightness <= 230)).sum() / brightness.size * 100
print(f"\n亮度分布: 白({white_pct:.1f}%) 灰({gray_pct:.1f}%) 黑({black_pct:.1f}%)")

# 看黑色像素是否形成线条(描边)
black_mask = brightness < 60
# 黑色像素的alpha
black_alpha = alpha[black_mask]
print(f"\n黑色像素alpha: [{black_alpha.min()},{black_alpha.max()}], 均值{black_alpha.mean():.0f}")

# alpha分布
print(f"\nalpha分布:")
for a in range(0, 256, 32):
    cnt = ((alpha >= a) & (alpha < a+32)).sum()
    if cnt > 0:
        print(f"  alpha[{a}-{a+32}): {cnt} ({cnt/alpha.size*100:.1f}%)")

# 关键: 纹理是否有透明背景?
transparent = alpha < 128
print(f"\n透明像素(alpha<128): {transparent.sum()} ({transparent.sum()/alpha.size*100:.1f}%)")
if transparent.sum() > 0:
    # 透明像素的RGB
    trans_rgb = rgb[transparent]
    print(f"透明像素RGB均值: {trans_rgb.mean(axis=0)}")
    # 不透明像素
    opaque = alpha >= 128
    opaque_bright = brightness[opaque]
    print(f"不透明像素亮度: 白(>230){(opaque_bright>230).sum()} 灰{(opaque_bright>=60).sum()&(opaque_bright<=230).sum()} 黑(<60){(opaque_bright<60).sum()}")
