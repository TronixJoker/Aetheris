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

def sample(i):
    v = uv[i,1]; u = uv[i,0]
    row = int((1-v)*(h-1)); col = int(u*(w-1))
    return max(0,min(h-1,row)), max(0,min(w-1,col))

colors = np.array([arr[sample(i)] for i in range(len(verts))])
brightness = colors[:,:3].mean(axis=1)

# 把黑色顶点和白色顶点分别标记, 看它们是否在连接处相邻
black_mask = brightness < 80
white_mask = brightness > 230

# 计算每个黑色顶点周围(3D空间)是否有白色顶点
from scipy.spatial import cKDTree
white_pos = pos[white_mask]
black_pos = pos[black_mask]
print(f"黑色顶点: {len(black_pos)}, 白色顶点: {len(white_pos)}")

# 建白色顶点的KD树, 找每个黑色顶点最近的白色顶点
tree = cKDTree(white_pos)
distances, indices = tree.query(black_pos, k=1)
print(f"\n黑色顶点到最近白色顶点距离:")
print(f"  最小: {distances.min():.4f}")
print(f"  均值: {distances.mean():.4f}")
print(f"  <0.02的: {(distances < 0.02).sum()} (相邻)")

# 这些相邻的黑白顶点就是"白边黑里"的接缝
adjacent_black_idx = np.where(black_mask)[0][distances < 0.02]
print(f"\n与白色相邻的黑色顶点: {len(adjacent_black_idx)}")

# 看这些顶点位置
adj_pos = pos[adjacent_black_idx]
print(f"  Y范围: [{adj_pos[:,1].min():.3f},{adj_pos[:,1].max():.3f}]")
print(f"  X范围: [{adj_pos[:,0].min():.3f},{adj_pos[:,0].max():.3f}]")

# 关键: 这些黑色顶点的UV采样到的是什么?
adj_colors = colors[adjacent_black_idx]
print(f"  颜色RGB均值: {adj_colors[:,:3].mean(axis=0)}")

# 看这些黑色顶点的UV
adj_uvs = uv[adjacent_black_idx]
print(f"  UV: U[{adj_uvs[:,0].min():.3f},{adj_uvs[:,0].max():.3f}] V[{adj_uvs[:,1].min():.3f},{adj_uvs[:,1].max():.3f}]")

# 采样纹理上这些UV位置附近的像素
print(f"\n采样UV附近的纹理像素:")
for i in range(min(5, len(adjacent_black_idx))):
    idx = adjacent_black_idx[i]
    r, c = sample(idx)
    # 看周围5x5
    print(f"  顶点{idx} pos=({pos[idx,0]:.2f},{pos[idx,1]:.2f},{pos[idx,2]:.2f}) uv=({uv[idx,0]:.3f},{uv[idx,1]:.3f}) texel[{r},{c}]={arr[r,c,:3]}")
    # 周围
    for dr in [-2,0,2]:
        row_vals = []
        for dc in [-2,0,2]:
            rr,cc = max(0,min(h-1,r+dr)), max(0,min(w-1,c+dc))
            row_vals.append(f"{arr[rr,cc,:3].mean():.0f}")
        print(f"    row{dr}: {' '.join(row_vals)}")
