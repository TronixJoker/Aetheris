import struct
import numpy as np
from PIL import Image

# 读取当前 bin
with open('/workspace/apk_decoded/assets/pet_model.bin', 'rb') as f:
    data = f.read()
floats = np.frombuffer(data[4:], dtype='<f4')
verts = floats.reshape(-1, 8)
pos = verts[:, 0:3]
uv = verts[:, 6:8]

# 加载纹理
img = Image.open('/workspace/apk_decoded/assets/pet_texture.png').convert('RGBA')
arr = np.array(img)
rgb = arr[:,:,:3]
alpha = arr[:,:,3]
h, w = rgb.shape[:2]

# 采样每个顶点颜色
colors = np.zeros((len(verts), 4), dtype=np.uint8)
for i in range(len(verts)):
    v = uv[i,1]
    u = uv[i,0]
    row = int((1-v)*(h-1))
    col = int(u*(w-1))
    row = max(0,min(h-1,row))
    col = max(0,min(w-1,col))
    colors[i] = arr[row,col]

brightness = colors[:,:3].mean(axis=1)

# 翻转后Y: 头Y=0, 脚Y=1.093
# 连接区域: Y 0.1-0.7 (头身连接+手臂连接)
# 在这些区域, 把极端亮度(白>220或黑<70)的顶点对应的纹理像素改为中等灰色

# 计算每个区域的平均亮度(排除极端值), 作为目标色调
conn_mask = (pos[:,1] > 0.1) & (pos[:,1] < 0.7)
conn_brightness = brightness[conn_mask]
# 中间值
median_brightness = np.median(conn_brightness[(conn_brightness > 70) & (conn_brightness < 220)])
print(f"连接区域中间亮度: {median_brightness:.0f}")

# 找需要修改的顶点: 连接区域内的极端亮度
white_verts = conn_mask & (brightness > 220)
black_verts = conn_mask & (brightness < 70)
print(f"连接区域白色顶点(>220): {white_verts.sum()}")
print(f"连接区域黑色顶点(<70): {black_verts.sum()}")

# 修改纹理: 把这些顶点对应的纹理像素设为中等灰色
target_gray = int(median_brightness)
modified_pixels = set()
for mask, name in [(white_verts, '白'), (black_verts, '黑')]:
    indices = np.where(mask)[0]
    for i in indices:
        v = uv[i,1]
        u = uv[i,0]
        row = int((1-v)*(h-1))
        col = int(u*(w-1))
        row = max(0,min(h-1,row))
        col = max(0,min(w-1,col))
        # 只修改非透明像素
        if alpha[row,col] > 0:
            modified_pixels.add((row,col))

print(f"需修改纹理像素数: {len(modified_pixels)}")

# 应用修改: 设为中等灰色
for row, col in modified_pixels:
    rgb[row,col] = [target_gray, target_gray, target_gray]

arr[:,:,:3] = rgb
Image.fromarray(arr).save('/workspace/apk_decoded/assets/pet_texture.png')
print(f"→ 已将 {len(modified_pixels)} 个接缝像素改为灰度({target_gray})")

# 验证: 重新采样
colors_new = np.zeros((len(verts), 4), dtype=np.uint8)
for i in range(len(verts)):
    v = uv[i,1]
    u = uv[i,0]
    row = int((1-v)*(h-1))
    col = int(u*(w-1))
    row = max(0,min(h-1,row))
    col = max(0,min(w-1,col))
    colors_new[i] = arr[row,col]
brightness_new = colors_new[:,:3].mean(axis=1)
print(f"\n处理后连接区域:")
print(f"  白色顶点(>220): {(conn_mask & (brightness_new>220)).sum()}")
print(f"  黑色顶点(<70): {(conn_mask & (brightness_new<70)).sum()}")
