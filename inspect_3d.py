import trimesh, numpy as np
from PIL import Image

# 加载简化 GLB，应用我的变换 (y/z交换)，渲染预览看朝向
scene = trimesh.load('/tmp/xiaozhi_simple.glb')
g = list(scene.geometry.values())[0]
verts = np.asarray(g.vertices).copy()

# 我的变换: (x,y,z) -> (x, z, y)  [Y-up]
verts_yup = verts[:, [0, 2, 1]].copy()

# 创建新网格用于渲染
g2 = trimesh.Trimesh(vertices=verts_yup, faces=np.asarray(g.faces), process=False)
# 复制 UV + 纹理
g2.visual = g.visual

# 渲染预览 (Y-up 视角)
print("渲染 Y-up 变换后的预览...")
try:
    scene2 = trimesh.Scene(g2)
    # 相机看正面
    scene2.camera_transform = trimesh.transformations.rotation_matrix(np.pi/2, [1,0,0])
    png = scene2.save_image(resolution=[400, 600])
    with open('/tmp/preview_yup.png', 'wb') as f:
        f.write(png)
    print("-> /tmp/preview_yup.png")
except Exception as e:
    print(f"渲染失败: {e}")
    # 退化方案: 导出 glb 用其他方式
    g2.export('/tmp/preview_yup.glb')
    print("-> /tmp/preview_yup.glb (导出供查看)")

# 也渲染原始 GLB (Z-up) 对比
print("\n渲染原始 GLB (Z-up)...")
try:
    scene3 = trimesh.Scene(g)
    png = scene3.save_image(resolution=[400, 600])
    with open('/tmp/preview_orig.png', 'wb') as f:
        f.write(png)
    print("-> /tmp/preview_orig.png")
except Exception as e:
    print(f"渲染失败: {e}")

# 关键: 看 Y-up 变换后, 头部和脚部的 y 坐标
print("\n=== Y-up 变换后头/脚位置 ===")
faces = np.asarray(g.faces)
# 头部顶点 (原始 z 近 0)
head_mask = verts[:,2] > -0.1
foot_mask = verts[:,2] < -1.0
print(f"头部(y-up): y范围 [{verts_yup[head_mask,1].min():.3f}, {verts_yup[head_mask,1].max():.3f}]")
print(f"脚部(y-up): y范围 [{verts_yup[foot_mask,1].min():.3f}, {verts_yup[foot_mask,1].max():.3f}]")
print(f"→ 头应在上方(y大), 脚在下方(y小)")
print(f"→ 渲染器 Y 向上为正, 若头 y 大则正立, 若头 y 小则倒立")
