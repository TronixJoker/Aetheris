import trimesh, numpy as np
from PIL import Image

# 加载 GLB
scene = trimesh.load('/tmp/xiaozhi_simple.glb')
g = list(scene.geometry.values())[0]
verts = np.asarray(g.vertices).copy()
uv = np.asarray(g.visual.uv)

# 加载纹理
tex_pil = g.visual.material.baseColorTexture
if hasattr(tex_pil, 'image'):
    tex_pil = tex_pil.image
tex_arr = np.array(tex_pil.convert('RGB'))
h, w = tex_arr.shape[:2]

# 眼睛在 row≈1945 (图片底部 95%)
# GLUtils.texImage2D 行为: Bitmap row=0(顶部) -> V=1, row=h-1(底部) -> V=0
# 即 row = (1-V)*(h-1), V = 1 - row/(h-1)
eye_row = 1945
eye_v_noflip = 1 - eye_row / (h-1)  # 不翻转时, 眼睛对应的 V
eye_v_flip = eye_row / (h-1)         # 翻转(1-V)后, 眼睛对应的 V
print(f"眼睛在图片 row={eye_row} ({eye_row/h*100:.0f}%)")
print(f"  不翻转: 眼睛对应 V = {eye_v_noflip:.3f}")
print(f"  V翻转:  眼睛对应 V = {eye_v_flip:.3f}")

# 检查 V≈eye_v_noflip 和 V≈eye_v_flip 的顶点, 哪个在头部(Z接近0)
tol = 0.05
mask_noflip = np.abs(uv[:,1] - eye_v_noflip) < tol
mask_flip = np.abs(uv[:,1] - eye_v_flip) < tol

print(f"\n=== V≈{eye_v_noflip:.3f} (不翻转) 的顶点 ===")
print(f"  数量: {mask_noflip.sum()}")
if mask_noflip.sum() > 0:
    z_vals = verts[mask_noflip, 2]
    print(f"  Z范围: [{z_vals.min():.3f}, {z_vals.max():.3f}], 均值={z_vals.mean():.3f}")
    print(f"  → {'头部(Z接近0)' if z_vals.mean() > -0.3 else '脚部(Z远离0)'}")

print(f"\n=== V≈{eye_v_flip:.3f} (V翻转后) 的顶点 ===")
print(f"  数量: {mask_flip.sum()}")
if mask_flip.sum() > 0:
    z_vals = verts[mask_flip, 2]
    print(f"  Z范围: [{z_vals.min():.3f}, {z_vals.max():.3f}], 均值={z_vals.mean():.3f}")
    print(f"  → {'头部(Z接近0)' if z_vals.mean() > -0.3 else '脚部(Z远离0)'}")

# 结论
print(f"\n=== 结论 ===")
if mask_noflip.sum() > 0 and mask_flip.sum() > 0:
    z_noflip = verts[mask_noflip, 2].mean()
    z_flip = verts[mask_flip, 2].mean()
    if z_noflip > z_flip:
        print(f"不翻转时, V={eye_v_noflip:.3f}的顶点在头部(Z={z_noflip:.3f})")
        print(f"→ 不需要 V 翻转! 纹理映射已经正确")
        need_flip = False
    else:
        print(f"V翻转后, V={eye_v_flip:.3f}的顶点在头部(Z={z_flip:.3f})")
        print(f"→ 需要 V 翻转 (1-V)")
        need_flip = True
elif mask_noflip.sum() > 0:
    print(f"只有不翻转模式有顶点, 可能不需要翻转")
    need_flip = False
elif mask_flip.sum() > 0:
    print(f"只有翻转模式有顶点, 可能需要翻转")
    need_flip = True
else:
    print(f"无法确定, 顶点太少")
    need_flip = None

# 额外: 全面检查 V 和 Z 的相关性
print(f"\n=== V 与 Z 的相关性 (全顶点) ===")
# 按 V 分 10 段, 看每段的 Z 均值
v_sorted_idx = np.argsort(uv[:,1])
n = len(v_sorted_idx)
print(f"V 分段 -> Z 均值 (Z大=头部, Z小=脚部):")
for i in range(10):
    seg = v_sorted_idx[i*n//10:(i+1)*n//10]
    v_lo = uv[seg, 1].min()
    v_hi = uv[seg, 1].max()
    z_mean = verts[seg, 2].mean()
    print(f"  V[{v_lo:.2f},{v_hi:.2f}]: Z均值={z_mean:.3f} {'(头)' if z_mean > -0.3 else '(脚/身)'}")
