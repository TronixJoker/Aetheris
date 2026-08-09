import struct
import numpy as np
from PIL import Image

with open('/workspace/apk_decoded/assets/pet_model.bin', 'rb') as f:
    data = f.read()
floats = np.frombuffer(data[4:], dtype='<f4')
verts = floats.reshape(-1, 8)
uv = verts[:, 6:8]

img = Image.open('/workspace/apk_decoded/assets/pet_texture.png').convert('RGBA')
arr = np.array(img)
rgb = arr[:,:,:3]
alpha = arr[:,:,3]
h, w = alpha.shape

# 收集所有被顶点采样到的透明像素位置
sampled_transparent = set()
for i in range(len(verts)):
    v = uv[i,1]; u = uv[i,0]
    row = int((1-v)*(h-1)); col = int(u*(w-1))
    row = max(0,min(h-1,row)); col = max(0,min(w-1,col))
    if alpha[row,col] < 128:
        sampled_transparent.add((row,col))

print(f"被顶点采样的透明像素: {len(sampled_transparent)}")

# 用周围不透明像素的颜色填充这些透明像素, 并设alpha=255
# 多次迭代扩散, 直到所有采样透明像素都被填充
brightness = rgb.mean(axis=2)
new_alpha = alpha.copy()
new_rgb = rgb.copy()

# 先标记需要修复的像素
to_fix = sampled_transparent.copy()
iteration = 0
while to_fix:
    iteration += 1
    next_fix = set()
    for r, c in to_fix:
        # 找周围5x5不透明像素
        r0, r1 = max(0,r-3), min(h,r+4)
        c0, c1 = max(0,c-3), min(w,c+4)
        neighborhood_alpha = new_alpha[r0:r1, c0:c1]
        neighborhood_rgb = new_rgb[r0:r1, c0:c1]
        opaque_mask = neighborhood_alpha >= 128
        if opaque_mask.sum() > 0:
            # 用不透明邻居的平均颜色
            mean_color = neighborhood_rgb[opaque_mask].mean(axis=0).astype(np.uint8)
            new_rgb[r,c] = mean_color
            new_alpha[r,c] = 255
        else:
            next_fix.add((r,c))
    if len(next_fix) == len(to_fix):
        # 没有进展, 用全局不透明均值
        global_mean = rgb[alpha >= 128].mean(axis=0).astype(np.uint8)
        for r, c in next_fix:
            new_rgb[r,c] = global_mean
            new_alpha[r,c] = 255
        break
    to_fix = next_fix
    print(f"  迭代{iteration}: 剩余{len(to_fix)}")

arr[:,:,:3] = new_rgb
arr[:,:,3] = new_alpha
Image.fromarray(arr).save('/workspace/apk_decoded/assets/pet_texture.png')

# 验证: 重新采样
transparent_after = 0
for i in range(len(verts)):
    v = uv[i,1]; u = uv[i,0]
    row = int((1-v)*(h-1)); col = int(u*(w-1))
    row = max(0,min(h-1,row)); col = max(0,min(w-1,col))
    if new_alpha[row,col] < 128:
        transparent_after += 1

print(f"\n修复后被采样的透明顶点: {transparent_after} (应为0)")
print(f"纹理总透明像素: {(new_alpha<128).sum()} (背景仍透明)")
