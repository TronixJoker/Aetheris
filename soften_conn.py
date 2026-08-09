import struct
import numpy as np
from PIL import Image
from scipy import ndimage

# 读取bin
with open('/workspace/apk_decoded/assets/pet_model.bin', 'rb') as f:
    data = f.read()
floats = np.frombuffer(data[4:], dtype='<f4')
verts = floats.reshape(-1, 8)
pos = verts[:, 0:3]
uv = verts[:, 6:8]

# 1.9.13: 头Y=0(上), 脚Y=1.093(下)
# 连接处: Y 0.1-0.7
conn_mask = (pos[:,1] > 0.1) & (pos[:,1] < 0.7)

# 加载纹理
img = Image.open('/workspace/apk_decoded/assets/pet_texture.png').convert('RGBA')
arr = np.array(img)
rgb = arr[:,:,:3].copy()
alpha = arr[:,:,3]
h, w = rgb.shape[:2]
brightness = rgb.mean(axis=2)

# 找连接处顶点采样到的纹理像素
conn_pixels = set()
for i in np.where(conn_mask)[0]:
    v = uv[i,1]; u = uv[i,0]
    row = int((1-v)*(h-1)); col = int(u*(w-1))
    row = max(0,min(h-1,row)); col = max(0,min(w-1,col))
    conn_pixels.add((row,col))

print(f"连接处顶点采样的纹理像素数: {len(conn_pixels)}")

# 这些像素中, 黑色描边(亮度<80)的
conn_black_pixels = [(r,c) for r,c in conn_pixels if brightness[r,c] < 80]
print(f"其中黑色描边像素: {len(conn_black_pixels)}")

# 向量化柔化: 对这些黑色像素, 用周围5x5非黑像素的均值替换
# 但保留描边感: 设为周围均值的70%
new_rgb = rgb.copy()
modified = 0
for r, c in conn_black_pixels:
    r0, r1 = max(0,r-2), min(h,r+3)
    c0, c1 = max(0,c-2), min(w,c+3)
    nb = brightness[r0:r1, c0:c1]
    nb_valid = nb[nb >= 80]
    if len(nb_valid) > 0:
        target = int(nb_valid.mean() * 0.7)  # 70%保留描边感
        new_rgb[r,c] = [target, target, target]
        modified += 1

arr[:,:,:3] = new_rgb
Image.fromarray(arr).save('/workspace/apk_decoded/assets/pet_texture.png')
print(f"→ 柔化 {modified} 个连接处描边像素 (保留70%描边感)")

# 验证: 重新采样连接处顶点
def sample(i):
    v = uv[i,1]; u = uv[i,0]
    row = int((1-v)*(h-1)); col = int(u*(w-1))
    return max(0,min(h-1,row)), max(0,min(w-1,col))

colors_new = np.array([arr[sample(i)] for i in range(len(verts))])
brightness_new = colors_new[:,:3].mean(axis=1)
conn_bright = brightness_new[conn_mask]
print(f"\n连接处处理后:")
print(f"  黑色(<80): {(conn_bright<80).sum()}")
print(f"  亮度均值: {conn_bright.mean():.0f}")
