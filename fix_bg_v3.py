from PIL import Image
import numpy as np

img = Image.open('/tmp/v110_extract/assets/pet_texture.png').convert('RGBA')
arr = np.array(img)
rgb = arr[:,:,:3].copy()
alpha = arr[:,:,3].copy()

brightness = rgb.mean(axis=2)
saturation = rgb.max(axis=2).astype(int) - rgb.min(axis=2).astype(int)

# 分析眼睛行的像素特征
eye_row = 1947
eye_rgb = rgb[eye_row]
eye_dark = eye_rgb.sum(axis=1) < 90
print(f"=== 眼睛行(row={eye_row})深色像素特征 ===")
eye_dark_pixels = eye_rgb[eye_dark]
print(f"数量: {len(eye_dark_pixels)}")
print(f"RGB均值: {eye_dark_pixels.mean(axis=0)}")
print(f"亮度范围: [{eye_dark_pixels.mean(axis=1).min():.0f},{eye_dark_pixels.mean(axis=1).max():.0f}]")
print(f"饱和度范围: [{(eye_dark_pixels.max(axis=1).astype(int)-eye_dark_pixels.min(axis=1).astype(int)).min()},{(eye_dark_pixels.max(axis=1).astype(int)-eye_dark_pixels.min(axis=1).astype(int)).max()}]")

# 看背景(四角)特征
print(f"\n=== 四角背景特征 ===")
corners = [rgb[0,0], rgb[0,-1], rgb[-1,0], rgb[-1,-1]]
for c in corners:
    b = c.mean()
    s = c.max().astype(int) - c.min().astype(int)
    print(f"  RGB={c} 亮度={b:.0f} 饱和={s}")

# 眼睛是纯黑(亮度很低<40), 背景是深灰(亮度40-80)
# 用亮度区分: 亮度<40 = 主体(眼睛等)保留, 亮度40-80且饱和<15 = 背景透明
bg_mask = (brightness >= 40) & (brightness < 85) & (saturation < 15)
print(f"\n背景候选(亮度40-85,饱和<15): {bg_mask.sum()}")

# 验证眼睛
eye_in_bg = (eye_dark_pixels.mean(axis=1) >= 40) & (eye_dark_pixels.mean(axis=1) < 85)
eye_sat = eye_dark_pixels.max(axis=1).astype(int) - eye_dark_pixels.min(axis=1).astype(int)
eye_in_bg &= (eye_sat < 15)
print(f"眼睛被误判为背景: {eye_in_bg.sum()}/{len(eye_dark_pixels)}")

alpha[bg_mask] = 0
arr[:,:,3] = alpha

Image.fromarray(arr).save('/workspace/apk_decoded/assets/pet_texture.png')
print(f"\n→ 保存, 透明像素: {(alpha==0).sum()}")

# 最终验证
eye_alpha = alpha[eye_row]
eye_dark_final = rgb[eye_row].sum(axis=1) < 90
print(f"眼睛行: 深色{eye_dark_final.sum()}个, 透明{(eye_alpha[eye_dark_final]==0).sum()}个")
