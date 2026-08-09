import struct
import numpy as np
from PIL import Image

# 1.9.10 原始 bin
with open('/tmp/v110_extract/assets/pet_model.bin', 'rb') as f:
    data = f.read()
vertex_count = struct.unpack('<i', data[:4])[0]
floats = np.frombuffer(data[4:], dtype='<f4')
verts = floats.reshape(-1, 8)
pos = verts[:, 0:3]
uv = verts[:, 6:8]

# 1.9.10 原始纹理
tex = np.array(Image.open('/tmp/v110_extract/assets/pet_texture.png').convert('RGB'))
h, w = tex.shape[:2]

# 头部顶点: Y接近0 (上方)
head_mask = pos[:,1] > -0.1  # Y接近0
foot_mask = pos[:,1] < -1.0  # Y接近-1.093

print(f"头部顶点(Y>-0.1): {head_mask.sum()}个")
print(f"脚部顶点(Y<-1.0): {foot_mask.sum()}个")

# 头部和脚部顶点的 UV (bin中存的原始V)
head_uvs = uv[head_mask]
foot_uvs = uv[foot_mask]
print(f"\n头部 UV: V均值={head_uvs[:,1].mean():.3f}")
print(f"脚部 UV: V均值={foot_uvs[:,1].mean():.3f}")

# smali做了 1-V 翻转, 所以渲染时:
# 头部 V_render = 1 - head_v_bin
head_v_render = 1 - head_uvs[:,1].mean()
foot_v_render = 1 - foot_uvs[:,1].mean()
print(f"\nV翻转后(渲染用):")
print(f"头部 V_render={head_v_render:.3f}")
print(f"脚部 V_render={foot_v_render:.3f}")

# 渲染时 V_render 对应图片行: row = (1-V_render)*(h-1)
head_row = int((1 - head_v_render) * (h-1))
foot_row = int((1 - foot_v_render) * (h-1))
print(f"\n头部采样图片 row={head_row} ({head_row/h*100:.0f}%)")
print(f"脚部采样图片 row={foot_row} ({foot_row/h*100:.0f}%)")

# 采样这些行的颜色
print(f"\n头部采样颜色: {tex[head_row, w//2]}")
print(f"脚部采样颜色: {tex[foot_row, w//2]}")

# 看图片row=head_row附近是否有眼睛特征(深色像素聚集)
print(f"\n=== 图片row={head_row}附近深色像素 ===")
for r in range(max(0,head_row-20), min(h,head_row+20), 5):
    black = (tex[r].sum(axis=1) < 90).sum()
    print(f"  row={r}: {black} 个深色像素")

print(f"\n=== 图片row={foot_row}附近深色像素 ===")
for r in range(max(0,foot_row-20), min(h,foot_row+20), 5):
    black = (tex[r].sum(axis=1) < 90).sum()
    print(f"  row={r}: {black} 个深色像素")

# 判断: 头部采样区域应该有眼睛(深色聚集), 脚部应该没有
print(f"\n=== 判断V翻转是否正确 ===")
head_black = (tex[head_row-10:head_row+10].sum(axis=2) < 90).sum()
foot_black = (tex[foot_row-10:foot_row+10].sum(axis=2) < 90).sum()
print(f"头部采样区域深色像素: {head_black}")
print(f"脚部采样区域深色像素: {foot_black}")
if head_black > foot_black:
    print("→ V翻转正确: 头部采样到眼睛区域 ✓")
else:
    print("→ V翻转错误: 头部没采样到眼睛, 需要取消V翻转 ✗")
