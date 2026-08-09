import trimesh, numpy as np
from PIL import Image
import struct

# ===== 1. 加载简化 GLB =====
scene = trimesh.load('/tmp/xiaozhi_simple.glb')
g = list(scene.geometry.values())[0]
verts = np.asarray(g.vertices).copy()
faces = np.asarray(g.faces)
print(f"原始顶点数: {len(verts)}")
print(f"原始 X[{verts[:,0].min():.3f},{verts[:,0].max():.3f}] Y[{verts[:,1].min():.3f},{verts[:,1].max():.3f}] Z[{verts[:,2].min():.3f},{verts[:,2].max():.3f}]")

# ===== 2. 提取原始纹理 =====
mat = g.visual.material
# baseColorTexture 本身就是 PIL Image
tex_pil = mat.baseColorTexture
if hasattr(tex_pil, 'image'):
    tex_pil = tex_pil.image
tex_img = tex_pil.convert('RGB')
tex_arr = np.array(tex_img)
print(f"\n原始纹理: {tex_img.size} {tex_img.mode}")
print(f"四角: 左上{tex_arr[0,0]} 右上{tex_arr[0,-1]} 左下{tex_arr[-1,0]} 右下{tex_arr[-1,-1]}")

# 计算 UV
if hasattr(g.visual, 'uv') and g.visual.uv is not None:
    uv = np.asarray(g.visual.uv)
else:
    uv = np.asarray(g.visual.vertex_attributes['texcoord'])
print(f"UV 范围: U[{uv[:,0].min():.3f},{uv[:,0].max():.3f}] V[{uv[:,1].min():.3f},{uv[:,1].max():.3f}]")

# ===== 3. 正确的坐标变换: (x,y,z) -> (x, -z, y) =====
# 原始: 头部 Z=-0.570(更负), 脚部 Z=-0.281(接近0)
# 变换后: 头部 Y = -(-0.570) = 0.570 (正,上方) ✓
verts_new = np.empty_like(verts)
verts_new[:, 0] = verts[:, 0]   # X 不变
verts_new[:, 1] = -verts[:, 2]  # 新 Y = -原 Z (翻转让头朝上)
verts_new[:, 2] = verts[:, 1]   # 新 Z = 原 Y

# 法线同样变换
if hasattr(g.visual, 'vertex_attributes') and 'nx' in g.visual.vertex_attributes:
    normals = np.asarray(g.visual.vertex_attributes['nx'])
elif hasattr(g.visual, 'vertex_attributes') and 'normal' in g.visual.vertex_attributes:
    normals = np.asarray(g.visual.vertex_attributes['normal'])
else:
    # 计算法线
    normals = trimesh.Trimesh(vertices=verts, faces=faces, process=False).vertex_normals
print(f"法线 shape: {normals.shape}")

normals_new = np.empty_like(normals)
normals_new[:, 0] = normals[:, 0]
normals_new[:, 1] = -normals[:, 2]
normals_new[:, 2] = normals[:, 1]

print(f"\n变换后 X[{verts_new[:,0].min():.3f},{verts_new[:,0].max():.3f}] Y[{verts_new[:,1].min():.3f},{verts_new[:,1].max():.3f}] Z[{verts_new[:,2].min():.3f},{verts_new[:,2].max():.3f}]")

# 平移让 Y 居中 (中心移到 0)
y_center = (verts_new[:,1].max() + verts_new[:,1].min()) / 2
verts_new[:,1] -= y_center
print(f"Y 居中 (减 {y_center:.3f})")
print(f"最终 Y[{verts_new[:,1].min():.3f},{verts_new[:,1].max():.3f}]")

# 用 UV 的 V 分段验证头脚位置
v_sorted_idx = np.argsort(uv[:,1])
n = len(v_sorted_idx)
foot_idx = v_sorted_idx[:n//10]
head_idx = v_sorted_idx[-n//10:]
print(f"\n验证: 纹理底部(V小) Y均值={verts_new[foot_idx,1].mean():.3f} (应=脚,小)")
print(f"验证: 纹理顶部(V大) Y均值={verts_new[head_idx,1].mean():.3f} (应=头,大)")
if verts_new[head_idx,1].mean() > verts_new[foot_idx,1].mean():
    print("→ 正立 ✓")
else:
    print("→ 仍倒立 ✗")

# ===== 4. 生成 pet_model.bin =====
# 格式: int vertexCount + vertexCount * 8 float [px,py,pz,nx,ny,nz,u,v]
# 注意: PetModel.smali 中 V 做了 1-V 翻转, 所以这里存原始 V
out = bytearray()
out += struct.pack('<i', len(verts_new))
for i in range(len(verts_new)):
    out += struct.pack('<8f',
        verts_new[i,0], verts_new[i,1], verts_new[i,2],
        normals_new[i,0], normals_new[i,1], normals_new[i,2],
        uv[i,0], uv[i,1])

with open('/workspace/apk_decoded/assets/pet_model.bin', 'wb') as f:
    f.write(out)
print(f"\n→ 保存 pet_model.bin ({len(out)} 字节)")

# ===== 5. 生成 pet_texture.png (背景透明) =====
# 原始纹理是 RGB, 背景是深色. 将深色低饱和背景设为透明
tex_rgba = np.dstack([tex_arr, np.full(tex_arr.shape[:2], 255, dtype=np.uint8)])
brightness = tex_arr.mean(axis=2).astype(int)
saturation = tex_arr.max(axis=2).astype(int) - tex_arr.min(axis=2).astype(int)
# 背景: 深色 (亮度<70) 且 低饱和 (<25)
bg_mask = (brightness < 70) & (saturation < 25)
tex_rgba[bg_mask, 3] = 0  # 透明
print(f"背景透明像素: {bg_mask.sum()} ({bg_mask.sum()/tex_arr.shape[0]/tex_arr.shape[1]*100:.1f}%)")

Image.fromarray(tex_rgba).save('/workspace/apk_decoded/assets/pet_texture.png')
print(f"→ 保存 pet_texture.png")

# 也保存一份到 /workspace/android/assets 以防万一
import os
os.makedirs('/workspace/android/app/src/main/assets', exist_ok=True)
with open('/workspace/android/app/src/main/assets/pet_model.bin', 'wb') as f:
    f.write(out)
Image.fromarray(tex_rgba).save('/workspace/android/app/src/main/assets/pet_texture.png')
print(f"→ 同步到 android/app/src/main/assets/")
