import struct
import numpy as np
from PIL import Image

# 重新读取修改后的bin
with open('/workspace/apk_decoded/assets/pet_model.bin', 'rb') as f:
    data = f.read()
floats = np.frombuffer(data[4:], dtype='<f4')
verts = floats.reshape(-1, 8)
pos = verts[:, 0:3]
uv = verts[:, 6:8]

img = Image.open('/workspace/apk_decoded/assets/pet_texture.png').convert('RGBA')
arr = np.array(img)
h, w = arr.shape[:2]

def sample(i):
    v = uv[i,1]; u = uv[i,0]
    row = int((1-v)*(h-1)); col = int(u*(w-1))
    return max(0,min(h-1,row)), max(0,min(w-1,col))

colors = np.array([arr[sample(i)] for i in range(len(verts))])
brightness = colors[:,:3].mean(axis=1)

conn_mask = (pos[:,1] > 0.1) & (pos[:,1] < 0.7)
print(f"连接区域验证:")
print(f"  黑色(<80): {(conn_mask & (brightness<80)).sum()}")
print(f"  白色(>220): {(conn_mask & (brightness>220)).sum()}")
print(f"  亮度均值: {brightness[conn_mask].mean():.0f}")

# 全局验证
print(f"\n全局:")
print(f"  黑色(<80): {(brightness<80).sum()}")
print(f"  白色(>220): {(brightness>220).sum()}")
