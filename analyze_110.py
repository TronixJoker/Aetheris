import struct
import numpy as np
from PIL import Image

# 读取 1.9.10 原始 bin
with open('/tmp/v110_extract/assets/pet_model.bin', 'rb') as f:
    data = f.read()

vertex_count = struct.unpack('<i', data[:4])[0]
floats = np.frombuffer(data[4:], dtype='<f4')
verts = floats.reshape(-1, 8)
print(f"1.9.10 bin: {vertex_count} 顶点")

pos = verts[:, 0:3]
uv = verts[:, 6:8]
print(f"X[{pos[:,0].min():.3f},{pos[:,0].max():.3f}]")
print(f"Y[{pos[:,1].min():.3f},{pos[:,1].max():.3f}]")
print(f"Z[{pos[:,2].min():.3f},{pos[:,2].max():.3f}]")
print(f"U[{uv[:,0].min():.3f},{uv[:,0].max():.3f}] V[{uv[:,1].min():.3f},{uv[:,1].max():.3f}]")

# 顶点密度沿 Y 轴
y_min, y_max = pos[:,1].min(), pos[:,1].max()
print(f"\n=== 沿 Y 轴顶点密度 (头脚判断) ===")
n_slices = 20
for i in range(n_slices):
    y_lo = y_min + (y_max - y_min) * i / n_slices
    y_hi = y_min + (y_max - y_min) * (i+1) / n_slices
    mask = (pos[:,1] >= y_lo) & (pos[:,1] < y_hi)
    count = mask.sum()
    bar = '#' * (count // 200)
    print(f"  Y[{y_lo:.3f},{y_hi:.3f}): {count:5d} {bar}")

# 用 V 分段看 Y 位置 (V翻转后)
print(f"\n=== V 分段 -> Y 均值 (smali做了1-V翻转) ===")
# smali: texCoords[tuv+1] = 1.0 - raw[7]
# 所以渲染时用的 V_render = 1 - V_bin
v_render = 1 - uv[:,1]
v_sorted_idx = np.argsort(v_render)
n = len(v_sorted_idx)
for i in range(10):
    seg = v_sorted_idx[i*n//10:(i+1)*n//10]
    v_lo = v_render[seg].min()
    v_hi = v_render[seg].max()
    y_mean = pos[seg, 1].mean()
    print(f"  V_render[{v_lo:.2f},{v_hi:.2f}]: Y均值={y_mean:.3f}")

# 纹理图片分析 (眼睛位置)
tex = np.array(Image.open('/tmp/v110_extract/assets/pet_texture.png').convert('RGB'))
h, w = tex.shape[:2]
# 找深色像素(眼睛)
black_mask = tex.sum(axis=2) < 90
row_black = black_mask.sum(axis=1)
top_rows = np.argsort(row_black)[-10:][::-1]
print(f"\n=== 纹理深色像素最多的行(眼睛特征) ===")
for r in sorted(top_rows)[:5]:
    print(f"  row={r} ({r/h*100:.0f}%): {row_black[r]} 个深色像素")

# 眼睛在图片的百分比位置 -> V_render值
eye_row = sorted(top_rows)[0]
# GLUtils.texImage2D: Bitmap row=0(顶) -> V=1, row=h-1(底) -> V=0
# 即 V_render = 1 - row/(h-1)
eye_v_render = 1 - eye_row / (h-1)
print(f"\n眼睛 row={eye_row} -> V_render={eye_v_render:.3f}")

# 找 V_render ≈ eye_v_render 的顶点, 看其 Y
tol = 0.05
mask = np.abs(v_render - eye_v_render) < tol
if mask.sum() > 0:
    eye_y = pos[mask, 1].mean()
    print(f"V_render≈{eye_v_render:.3f} 的顶点: {mask.sum()}个, Y均值={eye_y:.3f}")
    y_range = pos[:,1].max() - pos[:,1].min()
    print(f"  Y范围中心={pos[:,1].min()+y_range/2:.3f}, 范围={y_range:.3f}")
    if eye_y > pos[:,1].min() + y_range/2:
        print(f"  → 眼睛在Y上方(头部朝上) ✓ 正立")
    else:
        print(f"  → 眼睛在Y下方(头部朝下) ✗ 倒立")

print(f"\n=== 结论 ===")
print(f"1.9.10 bin 当前朝向 + V翻转后的实际效果")
