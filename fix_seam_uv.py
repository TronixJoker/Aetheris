import struct
import numpy as np
from PIL import Image

with open('/workspace/apk_decoded/assets/pet_model.bin', 'rb') as f:
    data = f.read()
floats = np.frombuffer(data[4:], dtype='<f4').copy()
verts = floats.reshape(-1, 8).copy()
pos = verts[:, 0:3]
uv = verts[:, 6:8].copy()

img = Image.open('/workspace/apk_decoded/assets/pet_texture.png').convert('RGBA')
arr = np.array(img)
h, w = arr.shape[:2]

# 找纹理中一个中等灰度(180左右)且不透明的区域作为重定向目标
gray_target = None
for r in range(h//4, 3*h//4, 10):
    for c in range(w//4, 3*w//4, 10):
        if arr[r,c,3] > 0:
            b = arr[r,c,:3].mean()
            if 175 < b < 195:
                gray_target = (r, c)
                break
    if gray_target: break
print(f"灰度目标像素: row={gray_target[0]}, col={gray_target[1]}, RGB={arr[gray_target[0],gray_target[1],:3]}")

# 目标UV
target_row, target_col = gray_target
target_v = 1 - target_row/(h-1)
target_u = target_col/(w-1)
print(f"目标UV: u={target_u:.4f}, v={target_v:.4f}")

# 连接区域
conn_mask = (pos[:,1] > 0.1) & (pos[:,1] < 0.7)

# 采样当前颜色
def sample(i):
    v = uv[i,1]; u = uv[i,0]
    row = int((1-v)*(h-1)); col = int(u*(w-1))
    return max(0,min(h-1,row)), max(0,min(w-1,col))

colors = np.array([arr[sample(i)] for i in range(len(verts))])
brightness = colors[:,:3].mean(axis=1)

# 连接区域的极端亮度顶点: 重定向UV到灰度区域
black_verts = conn_mask & (brightness < 80)
white_verts = conn_mask & (brightness > 220)
print(f"\n重定向前: 黑{black_verts.sum()} 白{white_verts.sum()}")

# 把这些顶点的UV设为目标UV
verts[black_verts, 6] = target_u
verts[black_verts, 7] = target_v
verts[white_verts, 6] = target_u
verts[white_verts, 7] = target_v

# 保存bin
out = bytearray()
out += struct.pack('<i', len(verts))
out += verts.astype('<f4').tobytes()
with open('/workspace/apk_decoded/assets/pet_model.bin', 'wb') as f:
    f.write(out)
print(f"→ 保存bin ({len(out)}字节)")

# 验证
colors_new = np.array([arr[sample(i)] for i in range(len(verts))])
brightness_new = colors_new[:,:3].mean(axis=1)
print(f"\n重定向后连接区域:")
print(f"  黑色(<80): {(conn_mask & (brightness_new<80)).sum()}")
print(f"  白色(>220): {(conn_mask & (brightness_new>220)).sum()}")
print(f"  亮度均值: {brightness_new[conn_mask].mean():.0f}")
