import trimesh, numpy as np
from PIL import Image
import os

# 检查可用的 GLB 文件
glb_files = [
    '/workspace/3Dxiaozhi.glb',
    '/workspace/6a67873428403043a9f43b85_小智_minimal_loss.glb',
    '/tmp/xiaozhi_simple.glb',
]

for glb in glb_files:
    if not os.path.exists(glb):
        print(f"[不存在] {glb}")
        continue
    print(f"\n=== {glb} ===")
    try:
        scene = trimesh.load(glb)
        for name, g in scene.geometry.items():
            print(f"  网格: {name}")
            print(f"    顶点数: {len(g.vertices)}")
            if hasattr(g.visual, 'material'):
                mat = g.visual.material
                print(f"    材质: {type(mat).__name__}")
                if hasattr(mat, 'baseColorTexture'):
                    tex = mat.baseColorTexture
                    if tex is not None:
                        print(f"    纹理: {tex}")
                        if hasattr(tex, 'to_color'):
                            img_arr = tex.to_color()
                            print(f"    纹理尺寸: {img_arr.shape}")
                            print(f"    纹理 RGB 范围: [{img_arr.min()}, {img_arr.max()}]")
                        elif hasattr(tex, 'image'):
                            img = tex.image
                            print(f"    PIL image: {img.size} {img.mode}")
                # 尝试导出纹理
                try:
                    if hasattr(g.visual, 'material') and hasattr(g.visual.material, 'baseColorTexture'):
                        tex = g.visual.material.baseColorTexture
                        if hasattr(tex, 'to_color'):
                            img_arr = tex.to_color()
                            # to_color 返回 0-255 RGB
                            Image.fromarray(img_arr).save(f'/tmp/{os.path.basename(glb)}_texture.png')
                            print(f"    -> 保存到 /tmp/{os.path.basename(glb)}_texture.png")
                except Exception as e:
                    print(f"    导出纹理失败: {e}")
            # 检查顶点 Y 范围 (原始 GLB 坐标系)
            verts = np.asarray(g.vertices)
            print(f"    原始顶点范围: X[{verts[:,0].min():.3f},{verts[:,0].max():.3f}] Y[{verts[:,1].min():.3f},{verts[:,1].max():.3f}] Z[{verts[:,2].min():.3f},{verts[:,2].max():.3f}]")
    except Exception as e:
        print(f"  加载失败: {e}")
