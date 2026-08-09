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
h, w = arr.shape[:2]

# 采样每个顶点颜色
def sample(i):
    v = uv[i,1]; u = uv[i,0]
    row = int((1-v)*(h-1)); col = int(u*(w-1))
    return max(0,min(h-1,row)), max(0,min(w-1,col))

colors = np.array([arr[sample(i)] for i in range(len(verts))])
brightness = colors[:,:3].mean(axis=1)

# 渲染顶点颜色到2D图(正面视图)
# 翻转后: 头Y=0(上), 脚Y=1.093(下), X左右
# 创建画布
canvas_w, canvas_h = 400, 600
canvas = np.zeros((canvas_h, canvas_w, 3), dtype=np.uint8)

# 投影: X->canvas_col, Y->canvas_row
x_min, x_max = pos[:,0].min(), pos[:,0].max()
y_min, y_max = pos[:,1].min(), pos[:,1].max()

for i in range(len(verts)):
    # Y翻转显示(屏幕Y向下, 模型Y向上)
    cx = int((pos[i,0] - x_min) / (x_max - x_min) * (canvas_w-1))
    cy = int((1 - (pos[i,1] - y_min) / (y_max - y_min)) * (canvas_h-1))
    cx = max(0, min(canvas_w-1, cx))
    cy = max(0, min(canvas_h-1, cy))
    # 用顶点颜色
    if colors[i,3] > 0:  # 不透明
        canvas[cy, cx] = colors[i,:3]

Image.fromarray(canvas).save('/tmp/vertex_render.png')
print("→ /tmp/vertex_render.png (顶点颜色正面图)")

# 统计连接处(Y 0.1-0.7)的颜色分布
conn_mask = (pos[:,1] > 0.1) & (pos[:,1] < 0.7)
conn_bright = brightness[conn_mask]
print(f"\n连接处亮度分布:")
print(f"  顶点数: {conn_mask.sum()}")
print(f"  亮度范围: [{conn_bright.min():.0f},{conn_bright.max():.0f}]")
print(f"  亮度均值: {conn_bright.mean():.0f}")

# 亮度直方图
for b in range(0, 256, 20):
    cnt = ((conn_bright >= b) & (conn_bright < b+20)).sum()
    if cnt > 0:
        bar = '#' * (cnt // 200)
        print(f"  [{b:3d}-{b+20:3d}): {cnt:5d} {bar}")
