import trimesh, numpy as np
from PIL import Image
import struct

# 加载原始 GLB
scene = trimesh.load('/tmp/xiaozhi_simple.glb')
g = list(scene.geometry.values())[0]
verts = np.asarray(g.vertices).copy()
faces = np.asarray(g.faces)

# 提取 UV
if hasattr(g.visual, 'uv') and g.visual.uv is not None:
    uv = np.asarray(g.visual.uv)
else:
    uv = np.asarray(g.visual.vertex_attributes['texcoord'])

# 提取纹理
tex_pil = g.visual.material.baseColorTexture
if hasattr(tex_pil, 'image'):
    tex_pil = tex_pil.image
tex_img = tex_pil.convert('RGB')
tex_arr = np.array(tex_img)

# ===== 确认纹理方向: 头部顶点(Z接近0)的UV =====
head_mask = verts[:,2] > -0.1  # Z接近0, 头部
foot_mask = verts[:,2] < -1.0  # Z接近-1.093, 脚部

head_uvs = uv[head_mask]
foot_uvs = uv[foot_mask]
print(f"头部顶点(Z>-0.1): {head_mask.sum()} 个")
print(f"  U范围[{head_uvs[:,0].min():.3f},{head_uvs[:,0].max():.3f}] V范围[{head_uvs[:,1].min():.3f},{head_uvs[:,1].max():.3f}]")
print(f"  V均值={head_uvs[:,1].mean():.3f}")
print(f"脚部顶点(Z<-1.0): {foot_mask.sum()} 个")
print(f"  V均值={foot_uvs[:,1].mean():.3f}")

# 采样纹理上头部UV对应的颜色
h, w = tex_arr.shape[:2]
head_v = head_uvs[:,1].mean()
foot_v = foot_uvs[:,1].mean()
# 注意: OpenGL纹理 V=0是底部, V=1是顶部; PIL图片 row=0是顶部
# GLUtils.texImage2D 会翻转: Bitmap顶行->V=1
# 所以 V 对应的图片行: row = (1-V) * (h-1)
head_row = int((1 - head_v) * (h-1))
foot_row = int((1 - foot_v) * (h-1))
print(f"\n纹理图片采样 (GLUtils翻转后 V->row):")
print(f"  头部 V={head_v:.3f} -> 图片row={head_row}, 颜色={tex_arr[head_row, w//2]}")
print(f"  脚部 V={foot_v:.3f} -> 图片row={foot_row}, 颜色={tex_arr[foot_row, w//2]}")

# 看 V翻转后: V' = 1-V, 头部 V' = 1-head_v
head_v_flipped = 1 - head_v
foot_v_flipped = 1 - foot_v
head_row_f = int((1 - head_v_flipped) * (h-1))
foot_row_f = int((1 - foot_v_flipped) * (h-1))
print(f"\nV翻转后 (1-V):")
print(f"  头部 V'={head_v_flipped:.3f} -> 图片row={head_row_f}, 颜色={tex_arr[head_row_f, w//2]}")
print(f"  脚部 V'={foot_v_flipped:.3f} -> 图片row={foot_row_f}, 颜色={tex_arr[foot_row_f, w//2]}")

# ===== 检查纹理图片上半部和下半部 (判断头在哪) =====
print(f"\n=== 纹理图片上下半部颜色对比 ===")
top_half = tex_arr[:h//2]  # 图片上半
bot_half = tex_arr[h//2:]  # 图片下半
print(f"图片上半 RGB均值: {top_half.reshape(-1,3).mean(axis=0)}")
print(f"图片下半 RGB均值: {bot_half.reshape(-1,3).mean(axis=0)}")
print(f"图片上半 饱和度均值: {(top_half.max(axis=2).astype(int)-top_half.min(axis=2).astype(int)).mean():.1f}")
print(f"图片下半 饱和度均值: {(bot_half.max(axis=2).astype(int)-bot_half.min(axis=2).astype(int)).mean():.1f}")

# ===== 重新生成 bin: (x,z,y) 变换 (正确朝向) =====
print(f"\n=== 重新生成 bin (x,z,y 变换) ===")
verts_new = verts[:, [0, 2, 1]].copy()  # (x, z, y): 新Y=原Z(头在上), 新Z=原Y
print(f"变换后 Y[{verts_new[:,1].min():.3f},{verts_new[:,1].max():.3f}] (头应在上=Y大)")

# 法线变换
normals = g.vertex_normals
normals_new = normals[:, [0, 2, 1]].copy()

# 验证头脚
head_y = verts_new[head_mask, 1].mean()
foot_y = verts_new[foot_mask, 1].mean()
print(f"头部 Y均值={head_y:.3f} (应大,在上)")
print(f"脚部 Y均值={foot_y:.3f} (应小,在下)")
print(f"→ {'正立 ✓' if head_y > foot_y else '倒立 ✗'}")

# 生成 bin (V 保持原始, smali 中做 1-V 翻转)
out = bytearray()
out += struct.pack('<i', len(verts_new))
for i in range(len(verts_new)):
    out += struct.pack('<8f',
        verts_new[i,0], verts_new[i,1], verts_new[i,2],
        normals_new[i,0], normals_new[i,1], normals_new[i,2],
        uv[i,0], uv[i,1])

with open('/workspace/apk_decoded/assets/pet_model.bin', 'wb') as f:
    f.write(out)
import os
os.makedirs('/workspace/android/app/src/main/assets', exist_ok=True)
with open('/workspace/android/app/src/main/assets/pet_model.bin', 'wb') as f:
    f.write(out)
print(f"→ 保存 pet_model.bin ({len(out)} 字节)")
