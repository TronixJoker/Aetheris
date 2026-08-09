import struct
import numpy as np

# 读取 pet_model.bin
with open('/workspace/apk_decoded/assets/pet_model.bin', 'rb') as f:
    data = f.read()

# 解析: 4字节 vertexCount, 然后 vertexCount * 8 个 float
vertex_count = struct.unpack('<i', data[:4])[0]
print(f"顶点数: {vertex_count}")

floats = np.frombuffer(data[4:], dtype='<f4')
verts = floats.reshape(-1, 8)
print(f"实际顶点行数: {verts.shape[0]}")

# 每行: [px, py, pz, nx, ny, nz, u, v]
pos = verts[:, 0:3]
uv = verts[:, 6:8]

print(f"\n=== 位置范围 ===")
print(f"X: [{pos[:,0].min():.3f}, {pos[:,0].max():.3f}]")
print(f"Y: [{pos[:,1].min():.3f}, {pos[:,1].max():.3f}]")
print(f"Z: [{pos[:,2].min():.3f}, {pos[:,2].max():.3f}]")

# 头部应该在 Y 大的位置（Y-up 渲染器）
# 通过 UV 的 V 坐标判断: 通常头部 V 接近 1 (纹理顶部)
print(f"\n=== UV 范围 ===")
print(f"U: [{uv[:,0].min():.3f}, {uv[:,0].max():.3f}]")
print(f"V: [{uv[:,1].min():.3f}, {uv[:,1].max():.3f}]")

# 用 V 坐标分段看 Y 位置
# V 接近 1 = 纹理顶部 = 头部
# V 接近 0 = 纹理底部 = 脚部
print(f"\n=== 按 V 坐标分段看 Y 位置 ===")
v_sorted_idx = np.argsort(uv[:,1])
n = len(v_sorted_idx)
# 底部 10% (脚部)
foot_idx = v_sorted_idx[:n//10]
# 顶部 10% (头部)
head_idx = v_sorted_idx[-n//10:]

print(f"纹理底部(V小,应=脚部): Y均值={pos[foot_idx,1].mean():.3f}, Y范围=[{pos[foot_idx,1].min():.3f}, {pos[foot_idx,1].max():.3f}]")
print(f"纹理顶部(V大,应=头部): Y均值={pos[head_idx,1].mean():.3f}, Y范围=[{pos[head_idx,1].min():.3f}, {pos[head_idx,1].max():.3f}]")

if pos[head_idx,1].mean() > pos[foot_idx,1].mean():
    print("→ 头部 Y 大于脚部 Y: 模型正立 ✓")
else:
    print("→ 头部 Y 小于脚部 Y: 模型倒立 ✗ (需要翻转 Y 轴)")

# 同时看 robot_model.obj (1.9.6 正立版本) 作为参考
print(f"\n=== 参考: robot_model.obj (1.9.6 正立) ===")
try:
    with open('/workspace/apk_decoded/assets/robot_model.obj', 'r') as f:
        obj_verts = []
        for line in f:
            if line.startswith('v '):
                parts = line.split()
                obj_verts.append([float(parts[1]), float(parts[2]), float(parts[3])])
        obj_verts = np.array(obj_verts)
        print(f"顶点数: {len(obj_verts)}")
        print(f"Y: [{obj_verts[:,1].min():.3f}, {obj_verts[:,1].max():.3f}]")
        print(f"→ 1.9.6 OBJ 的 Y 范围 (头应在 Y 大处)")
except Exception as e:
    print(f"读取失败: {e}")
