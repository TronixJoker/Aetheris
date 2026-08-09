import struct
import numpy as np
from PIL import Image

with open('/workspace/apk_decoded/assets/pet_model.bin', 'rb') as f:
    data = f.read()
floats = np.frombuffer(data[4:], dtype='<f4')
verts = floats.reshape(-1, 8)
pos = verts[:, 0:3]
uv = verts[:, 6:8]

img = Image.open('/workspace/apk_decoded/assets/pet_texture.png').convert('RGBA')
arr = np.array(img)
rgb = arr[:,:,:3]
alpha = arr[:,:,3]
h, w = rgb.shape[:2]

# 采样
colors = np.zeros((len(verts), 4), dtype=np.uint8)
for i in range(len(verts)):
    v = uv[i,1]; u = uv[i,0]
    row = int((1-v)*(h-1)); col = int(u*(w-1))
    row = max(0,min(h-1,row)); col = max(0,min(w-1,col))
    colors[i] = arr[row,col]
brightness = colors[:,:3].mean(axis=1)

# 连接区域剩余黑色顶点
conn_mask = (pos[:,1] > 0.1) & (pos[:,1] < 0.7)
black_verts = conn_mask & (brightness < 70)
print(f"剩余黑色顶点: {black_verts.sum()}")

# 这些黑色顶点的纹理位置, 以及周围3x3范围都改为灰色
target_gray = 189
modified = 0
for i in np.where(black_verts)[0]:
    v = uv[i,1]; u = uv[i,0]
    row = int((1-v)*(h-1)); col = int(u*(w-1))
    row = max(0,min(h-1,row)); col = max(0,min(w-1,col))
    # 修改3x3范围
    for dr in range(-1,2):
        for dc in range(-1,2):
            r = max(0,min(h-1,row+dr))
            c = max(0,min(w-1,col+dc))
            if alpha[r,c] > 0 and rgb[r,c].mean() < 70:
                rgb[r,c] = [target_gray, target_gray, target_gray]
                modified += 1

arr[:,:,:3] = rgb
Image.fromarray(arr).save('/workspace/apk_decoded/assets/pet_texture.png')
print(f"→ 修改 {modified} 个黑色像素")

# 验证
colors_new = np.zeros((len(verts), 4), dtype=np.uint8)
for i in range(len(verts)):
    v = uv[i,1]; u = uv[i,0]
    row = int((1-v)*(h-1)); col = int(u*(w-1))
    row = max(0,min(h-1,row)); col = max(0,min(w-1,col))
    colors_new[i] = arr[row,col]
brightness_new = colors_new[:,:3].mean(axis=1)
print(f"\n最终连接区域:")
print(f"  白色(>220): {(conn_mask & (brightness_new>220)).sum()}")
print(f"  黑色(<70): {(conn_mask & (brightness_new<70)).sum()}")
print(f"  亮度均值: {brightness_new[conn_mask].mean():.0f}")
