import trimesh, numpy as np
from PIL import Image

# 加载原始 GLB
scene = trimesh.load('/tmp/xiaozhi_simple.glb')
g = list(scene.geometry.values())[0]
verts = np.asarray(g.vertices).copy()
faces = np.asarray(g.faces)

print(f"原始 GLB 顶点数: {len(verts)}")
print(f"X[{verts[:,0].min():.3f},{verts[:,0].max():.3f}]")
print(f"Y[{verts[:,1].min():.3f},{verts[:,1].max():.3f}]")
print(f"Z[{verts[:,2].min():.3f},{verts[:,2].max():.3f}]")

# 原始 GLB 高度沿 Z 轴 [-1.093, 0]
# 分析沿 Z 轴的顶点密度 (头脚判断)
z_min, z_max = verts[:,2].min(), verts[:,2].max()
n_slices = 20
print(f"\n=== 沿 Z 轴顶点密度 (从 Z={z_min:.3f} 到 Z={z_max:.3f}) ===")
slice_counts = []
for i in range(n_slices):
    z_lo = z_min + (z_max - z_min) * i / n_slices
    z_hi = z_min + (z_max - z_min) * (i+1) / n_slices
    mask = (verts[:,2] >= z_lo) & (verts[:,2] < z_hi)
    count = mask.sum()
    slice_counts.append(count)
    bar = '#' * (count // 50)
    print(f"  Z[{z_lo:.3f},{z_hi:.3f}): {count:5d} {bar}")

# 头部通常顶点密度高 (细节多: 眼睛鼻子嘴)
# 看哪端密度高
low_z_density = sum(slice_counts[:5])  # Z 小端
high_z_density = sum(slice_counts[-5:])  # Z 大端
print(f"\nZ 小端(底)顶点数: {low_z_density}")
print(f"Z 大端(顶)顶点数: {high_z_density}")
if high_z_density > low_z_density:
    print("→ Z 大端密度高, 可能是头部 (Z-up: 头在 Z 大处)")
    head_z = 'high'
else:
    print("→ Z 小端密度高, 可能是头部 (头在 Z 小处)")
    head_z = 'low'

# 也看表面积分布 (每个切片的三角形面积)
print(f"\n=== 沿 Z 轴表面积分布 ===")
tri_centers = verts[faces].mean(axis=1)  # 三角形中心
tri_areas = np.zeros(len(faces))
for i, f in enumerate(faces):
    v0, v1, v2 = verts[f[0]], verts[f[1]], verts[f[2]]
    tri_areas[i] = 0.5 * np.linalg.norm(np.cross(v1-v0, v2-v0))

slice_areas = []
for i in range(n_slices):
    z_lo = z_min + (z_max - z_min) * i / n_slices
    z_hi = z_min + (z_max - z_min) * (i+1) / n_slices
    mask = (tri_centers[:,2] >= z_lo) & (tri_centers[:,2] < z_hi)
    area = tri_areas[mask].sum()
    slice_areas.append(area)
    bar = '#' * int(area * 100)
    print(f"  Z[{z_lo:.3f},{z_hi:.3f}): {area:.3f} {bar}")

# 渲染原始 GLB (Z-up, 从侧面看)
print(f"\n=== 渲染原始 GLB ===")
try:
    scene_orig = trimesh.Scene(g)
    # 相机从 +Y 方向看 -Y (侧面), Z 向上
    scene_orig.camera_transform = trimesh.transformations.euler_matrix(0, np.pi/2, 0)
    png = scene_orig.save_image(resolution=[300, 500])
    with open('/tmp/orig_render.png', 'wb') as f:
        f.write(png)
    print("-> /tmp/orig_render.png")
except Exception as e:
    print(f"渲染失败: {e}")

# 渲染变换后 (x,-z,y) 的模型
verts_t = verts[:, [0, 2, 1]].copy()
verts_t[:, 1] = -verts_t[:, 1]  # (x, -z, y)
g_t = trimesh.Trimesh(vertices=verts_t, faces=faces, process=False)
print(f"\n=== 渲染变换后 (x,-z,y) ===")
print(f"Y[{verts_t[:,1].min():.3f},{verts_t[:,1].max():.3f}]")
try:
    scene_t = trimesh.Scene(g_t)
    png = scene_t.save_image(resolution=[300, 500])
    with open('/tmp/transformed_render.png', 'wb') as f:
        f.write(png)
    print("-> /tmp/transformed_render.png")
except Exception as e:
    print(f"渲染失败: {e}")
