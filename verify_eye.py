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

# 眼睛在 row=1947 (95%) -> V_render = 1 - 1947/2047 = 0.051
eye_v_render = 1 - 1947 / (h-1)
print(f"眼睛 row=1947 -> V_render={eye_v_render:.3f}")

# 头部顶点 Y接近0
head_mask = pos[:,1] > -0.1
head_v_bin = uv[head_mask, 1]
print(f"\n头部顶点(Y>-0.1): {head_mask.sum()}个")
print(f"头部 V_bin 均值={head_v_bin.mean():.3f}")

# 情况1: 不翻转 V_render = V_bin
v_render_noflip = uv[:,1]
# 情况2: V翻转 V_render = 1 - V_bin
v_render_flip = 1 - uv[:,1]

# 头部顶点的 V_render 在两种情况下
head_vr_noflip = v_render_noflip[head_mask].mean()
head_vr_flip = v_render_flip[head_mask].mean()
print(f"\n不翻转: 头部 V_render={head_vr_noflip:.3f} (眼睛应在{eye_v_render:.3f})")
print(f"V翻转:  头部 V_render={head_vr_flip:.3f} (眼睛应在{eye_v_render:.3f})")

# 哪种更接近眼睛位置
dist_noflip = abs(head_vr_noflip - eye_v_render)
dist_flip = abs(head_vr_flip - eye_v_render)
print(f"\n不翻转距离眼睛: {dist_noflip:.3f}")
print(f"V翻转距离眼睛: {dist_flip:.3f}")

if dist_noflip < dist_flip:
    print("→ 不翻转更接近眼睛位置")
    correct = 'noflip'
else:
    print("→ V翻转更接近眼睛位置")
    correct = 'flip'

# 但距离都很大, 说明bin中的V映射和纹理不是直接对应
# 可能bin的UV已经是为某种坐标系设计的
# 让我看完整的 V_render vs Y 关系
print(f"\n=== 完整 V_render(翻转) vs Y 关系 ===")
v_render = 1 - uv[:,1]  # 翻转
v_sorted_idx = np.argsort(v_render)
n = len(v_sorted_idx)
print(f"V_render分段 -> Y均值 (Y大=头部):")
for i in range(10):
    seg = v_sorted_idx[i*n//10:(i+1)*n//10]
    vr_lo = v_render[seg].min()
    vr_hi = v_render[seg].max()
    y_mean = pos[seg, 1].mean()
    y_min_seg = pos[seg, 1].min()
    y_max_seg = pos[seg, 1].max()
    print(f"  V_render[{vr_lo:.2f},{vr_hi:.2f}]: Y[{y_min_seg:.3f},{y_max_seg:.3f}] 均值={y_mean:.3f}")

# 眼睛在 V_render=0.05, 找这个V范围的顶点Y
tol = 0.03
eye_mask = np.abs(v_render - eye_v_render) < tol
print(f"\nV_render≈{eye_v_render:.3f}(眼睛)的顶点: {eye_mask.sum()}个")
if eye_mask.sum() > 0:
    print(f"  Y范围[{pos[eye_mask,1].min():.3f},{pos[eye_mask,1].max():.3f}] 均值={pos[eye_mask,1].mean():.3f}")
    y_center = (pos[:,1].max() + pos[:,1].min())/2
    if pos[eye_mask,1].mean() > y_center:
        print(f"  → 在Y上方(头部) ✓ 正立")
    else:
        print(f"  → 在Y下方(脚部) ✗ 倒立 (Y中心={y_center:.3f})")
