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

# 翻转后Y: 头Y=0, 脚Y=1.093
# 加载纹理(已去色)
tex = np.array(Image.open('/workspace/apk_decoded/assets/pet_texture.png').convert('RGBA'))
h, w = tex.shape[:2]

# 采样每个顶点颜色
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

# 用户说: 手臂和身体连接处 白色外边 黑色内里
# 找: 亮度极端的顶点(很白或很黑) 且 在连接区域
brightness = colors[:,:3].mean(axis=1)

# 翻转后Y范围[0,1.093], 头Y=0, 脚Y=1.093
# 连接处: 头身连接(Y≈0.15-0.3), 手臂连接(Y≈0.3-0.6, |X|大)
print(f"=== 亮度分布 ===")
print(f"很白(亮度>230): {(brightness>230).sum()}")
print(f"很黑(亮度<60): {(brightness<60).sum()}")

# 找很白和很黑的顶点位置
white_mask = brightness > 230
black_mask = brightness < 60

print(f"\n=== 白色顶点(亮度>230)位置 ===")
if white_mask.sum() > 0:
    wp = pos[white_mask]
    print(f"  数量: {white_mask.sum()}")
    print(f"  Y范围[{wp[:,1].min():.3f},{wp[:,1].max():.3f}]")
    print(f"  X范围[{wp[:,0].min():.3f},{wp[:,0].max():.3f}]")
    # 按Y分段
    for y_lo in np.arange(0, 1.1, 0.1):
        seg = (wp[:,1] >= y_lo) & (wp[:,1] < y_lo+0.1)
        if seg.sum() > 0:
            print(f"    Y[{y_lo:.1f},{y_lo+0.1:.1f}): {seg.sum()}个, X范围[{wp[seg,0].min():.3f},{wp[seg,0].max():.3f}]")

print(f"\n=== 黑色顶点(亮度<60)位置 ===")
if black_mask.sum() > 0:
    bp = pos[black_mask]
    print(f"  数量: {black_mask.sum()}")
    print(f"  Y范围[{bp[:,1].min():.3f},{bp[:,1].max():.3f}]")
    print(f"  X范围[{bp[:,0].min():.3f},{bp[:,0].max():.3f}]")
    for y_lo in np.arange(0, 1.1, 0.1):
        seg = (bp[:,1] >= y_lo) & (bp[:,1] < y_lo+0.1)
        if seg.sum() > 0:
            print(f"    Y[{y_lo:.1f},{y_lo+0.1:.1f}): {seg.sum()}个, X范围[{bp[seg,0].min():.3f},{bp[seg,0].max():.3f}]")

# 重点: 连接处相邻的白/黑顶点
# 手臂连接: Y 0.3-0.6, |X|>0.3
print(f"\n=== 手臂连接处(Y0.3-0.6,|X|>0.3) ===")
arm_mask = (pos[:,1] > 0.3) & (pos[:,1] < 0.6) & (np.abs(pos[:,0]) > 0.3)
arm_colors = colors[arm_mask]
arm_brightness = arm_colors[:,:3].mean(axis=1)
print(f"顶点数: {arm_mask.sum()}")
print(f"  白色(>230): {(arm_brightness>230).sum()}")
print(f"  黑色(<60): {(arm_brightness<60).sum()}")
print(f"  亮度均值: {arm_brightness.mean():.0f}")

# 头身连接: Y 0.15-0.3
print(f"\n=== 头身连接处(Y0.15-0.3) ===")
neck_mask = (pos[:,1] > 0.15) & (pos[:,1] < 0.3)
neck_colors = colors[neck_mask]
neck_brightness = neck_colors[:,:3].mean(axis=1)
print(f"顶点数: {neck_mask.sum()}")
print(f"  白色(>230): {(neck_brightness>230).sum()}")
print(f"  黑色(<60): {(neck_brightness<60).sum()}")
print(f"  亮度均值: {neck_brightness.mean():.0f}")
