import struct
import numpy as np
from PIL import Image

# 读取当前 bin
with open('/workspace/apk_decoded/assets/pet_model.bin', 'rb') as f:
    data = f.read()
vertex_count = struct.unpack('<i', data[:4])[0]
floats = np.frombuffer(data[4:], dtype='<f4')
verts = floats.reshape(-1, 8)
pos = verts[:, 0:3]
uv = verts[:, 6:8]

# 翻转后的Y: 头Y=0, 脚Y=1.093
# 找手臂/头部连接区域: Y在中间附近, 且X偏离中心(手臂在两侧)
print(f"Y范围: [{pos[:,1].min():.3f},{pos[:,1].max():.3f}]")
print(f"X范围: [{pos[:,0].min():.3f},{pos[:,0].max():.3f}]")

# 加载纹理
tex = np.array(Image.open('/workspace/apk_decoded/assets/pet_texture.png').convert('RGBA'))
h, w = tex.shape[:2]

# 采样每个顶点的纹理颜色 (不翻转V)
colors = []
for i in range(len(verts)):
    v = uv[i,1]
    u = uv[i,0]
    row = int((1-v)*(h-1))
    col = int(u*(w-1))
    row = max(0,min(h-1,row))
    col = max(0,min(w-1,col))
    colors.append(tex[row,col])
colors = np.array(colors)

# 按Y分段看颜色
print(f"\n=== 按Y分段颜色 ===")
y_sorted_idx = np.argsort(pos[:,1])
n = len(y_sorted_idx)
for i in range(15):
    seg = y_sorted_idx[i*n//15:(i+1)*n//15]
    y_mean = pos[seg,1].mean()
    rgb_mean = colors[seg].mean(axis=0)
    print(f"  Y[{pos[seg,1].min():.3f},{pos[seg,1].max():.3f}] 均值{y_mean:.3f}: RGB({rgb_mean[0]:.0f},{rgb_mean[1]:.0f},{rgb_mean[2]:.0f}) A={rgb_mean[3]:.0f}")

# 头部(Y接近0)和身体(Y中间)连接处, 手臂(X大)的颜色
# 找连接区域: Y在0.3-0.6之间
print(f"\n=== 连接区域(Y 0.3-0.6)颜色分布 ===")
conn_mask = (pos[:,1] > 0.3) & (pos[:,1] < 0.6)
conn_colors = colors[conn_mask]
conn_pos = pos[conn_mask]
print(f"顶点数: {conn_mask.sum()}")

# 手臂区域(X绝对值大)
arm_mask = np.abs(conn_pos[:,0]) > 0.3
body_mask = np.abs(conn_pos[:,0]) < 0.2
print(f"  手臂(|X|>0.3): {arm_mask.sum()}个, RGB均值={conn_colors[arm_mask].mean(axis=0)[:3]}")
print(f"  身体(|X|<0.2): {body_mask.sum()}个, RGB均值={conn_colors[body_mask].mean(axis=0)[:3]}")

# 头部连接(Y<0.15)
print(f"\n=== 头部区域(Y<0.15) ===")
head_mask = pos[:,1] < 0.15
head_colors = colors[head_mask]
head_pos = pos[head_mask]
# 头部中心 vs 边缘
head_center = np.abs(head_pos[:,0]) < 0.2
head_edge = np.abs(head_pos[:,0]) > 0.3
print(f"  头中心: {head_center.sum()}个, RGB={head_colors[head_center].mean(axis=0)[:3]}")
print(f"  头边缘: {head_edge.sum()}个, RGB={head_colors[head_edge].mean(axis=0)[:3]}")
