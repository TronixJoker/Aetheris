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

# 连接区域
conn_mask = (pos[:,1] > 0.1) & (pos[:,1] < 0.7)

# 采样
def sample(i):
    v = uv[i,1]; u = uv[i,0]
    row = int((1-v)*(h-1)); col = int(u*(w-1))
    return max(0,min(h-1,row)), max(0,min(w-1,col))

colors = np.array([arr[sample(i)] for i in range(len(verts))])
brightness = colors[:,:3].mean(axis=1)

# 找连接区域所有极端亮度顶点对应的纹理像素, 用5x5范围修改
target_gray = 189
black_verts = conn_mask & (brightness < 80)
white_verts = conn_mask & (brightness > 220)
print(f"黑色顶点: {black_verts.sum()}, 白色顶点: {white_verts.sum()}")

modified_pixels = set()
for mask in [black_verts, white_verts]:
    for i in np.where(mask)[0]:
        row, col = sample(i)
        # 5x5范围
        for dr in range(-2,3):
            for dc in range(-2,3):
                r = max(0,min(h-1,row+dr))
                c = max(0,min(w-1,col+dc))
                if alpha[r,c] > 0:
                    b = rgb[r,c].mean()
                    # 只改极端亮度
                    if b < 80 or b > 220:
                        modified_pixels.add((r,c))

print(f"修改像素数: {len(modified_pixels)}")
for r, c in modified_pixels:
    rgb[r,c] = [target_gray, target_gray, target_gray]

arr[:,:,:3] = rgb
Image.fromarray(arr).save('/workspace/apk_decoded/assets/pet_texture.png')

# 验证
colors_new = np.array([arr[sample(i)] for i in range(len(verts))])
brightness_new = colors_new[:,:3].mean(axis=1)
print(f"\n最终:")
print(f"  白色(>220): {(conn_mask & (brightness_new>220)).sum()}")
print(f"  黑色(<80): {(conn_mask & (brightness_new<80)).sum()}")
print(f"  亮度均值: {brightness_new[conn_mask].mean():.0f}")
