import struct
import numpy as np
from PIL import Image

with open('/tmp/v110_extract/assets/pet_model.bin', 'rb') as f:
    data = f.read()
floats = np.frombuffer(data[4:], dtype='<f4')
verts = floats.reshape(-1, 8)
pos = verts[:, 0:3]
uv = verts[:, 6:8]

tex = np.array(Image.open('/tmp/v110_extract/assets/pet_texture.png').convert('RGB'))
h, w = tex.shape[:2]

# 头部顶点: Y在最大密度区(Y接近0)
head_mask = pos[:,1] > -0.05  # 真正的头部(Y接近0)
print(f"头部顶点(Y>-0.05): {head_mask.sum()}个")
head_uvs = uv[head_mask]

# 不翻转: V_render = V_bin, row = (1-V)*(h-1)
# 采样头部顶点对应的纹理颜色
head_colors = []
for i in range(head_mask.sum()):
    v = head_uvs[i, 1]
    u = head_uvs[i, 0]
    row = int((1 - v) * (h-1))
    col = int(u * (w-1))
    row = max(0, min(h-1, row))
    col = max(0, min(w-1, col))
    head_colors.append(tex[row, col])

head_colors = np.array(head_colors)
print(f"\n不翻转 - 头部采样颜色:")
print(f"  RGB均值: {head_colors.mean(axis=0)}")
print(f"  深色像素(眼睛特征,RGB和<90): {(head_colors.sum(axis=1)<90).sum()}个 / {len(head_colors)}")

# V翻转: V_render = 1-V_bin, row = (1-(1-V))*(h-1) = V*(h-1)
head_colors_flip = []
for i in range(head_mask.sum()):
    v = head_uvs[i, 1]
    u = head_uvs[i, 0]
    v_render = 1 - v
    row = int((1 - v_render) * (h-1))  # = int(v*(h-1))
    col = int(u * (w-1))
    row = max(0, min(h-1, row))
    col = max(0, min(w-1, col))
    head_colors_flip.append(tex[row, col])

head_colors_flip = np.array(head_colors_flip)
print(f"\nV翻转 - 头部采样颜色:")
print(f"  RGB均值: {head_colors_flip.mean(axis=0)}")
print(f"  深色像素(眼睛特征,RGB和<90): {(head_colors_flip.sum(axis=1)<90).sum()}个 / {len(head_colors_flip)}")

print(f"\n=== 判断 ===")
if (head_colors.sum(axis=1)<90).sum() > (head_colors_flip.sum(axis=1)<90).sum():
    print("不翻转: 头部采样到更多深色(眼睛) → 不翻转正确")
else:
    print("V翻转: 头部采样到更多深色(眼睛) → V翻转正确")

# 也看脚部
foot_mask = pos[:,1] < -1.0
print(f"\n脚部顶点(Y<-1.0): {foot_mask.sum()}个")
foot_uvs = uv[foot_mask]
foot_colors = []
for i in range(foot_mask.sum()):
    v = foot_uvs[i, 1]
    u = foot_uvs[i, 0]
    row = int((1 - v) * (h-1))
    col = int(u * (w-1))
    row = max(0, min(h-1, row))
    col = max(0, min(w-1, col))
    foot_colors.append(tex[row, col])
foot_colors = np.array(foot_colors)
print(f"不翻转 - 脚部采样深色: {(foot_colors.sum(axis=1)<90).sum()}个 / {len(foot_colors)}")
