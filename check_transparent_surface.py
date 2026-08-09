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
alpha = arr[:,:,3]
h, w = alpha.shape

# 采样每个顶点的alpha
def sample_alpha(i):
    v = uv[i,1]; u = uv[i,0]
    row = int((1-v)*(h-1)); col = int(u*(w-1))
    row = max(0,min(h-1,row)); col = max(0,min(w-1,col))
    return alpha[row,col], row, col

# 检查有多少顶点采样到透明像素
transparent_verts = 0
transparent_positions = []
for i in range(len(verts)):
    a, r, c = sample_alpha(i)
    if a < 128:
        transparent_verts += 1
        transparent_positions.append((pos[i,0], pos[i,1], pos[i,2], r, c))

print(f"采样到透明像素的顶点数: {transparent_verts} / {len(verts)} ({transparent_verts/len(verts)*100:.1f}%)")

if transparent_verts > 0:
    tp = np.array([(p[0],p[1],p[2]) for p in transparent_positions])
    print(f"\n这些顶点位置:")
    print(f"  X范围: [{tp[:,0].min():.3f},{tp[:,0].max():.3f}]")
    print(f"  Y范围: [{tp[:,1].min():.3f},{tp[:,1].max():.3f}]")
    print(f"  Z范围: [{tp[:,2].min():.3f},{tp[:,2].max():.3f}]")
    
    # 按Y分段
    print(f"\n按Y分段(1.9.13: 头Y=0, 脚Y=1.093):")
    for y_lo in np.arange(0, 1.2, 0.1):
        seg = (tp[:,1] >= y_lo) & (tp[:,1] < y_lo+0.1)
        if seg.sum() > 0:
            print(f"  Y[{y_lo:.1f},{y_lo+0.1:.1f}): {seg.sum()}个透明顶点")
    
    # 看这些透明顶点在纹理上的位置
    tex_positions = [(p[3], p[4]) for p in transparent_positions]
    tex_rows = [p[0] for p in tex_positions]
    tex_cols = [p[1] for p in tex_positions]
    print(f"\n纹理位置: row[{min(tex_rows)},{max(tex_rows)}] col[{min(tex_cols)},{max(tex_cols)}]")
