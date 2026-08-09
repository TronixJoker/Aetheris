from PIL import Image
import numpy as np

# 加载原始纹理
tex_pil = Image.open('/workspace/apk_decoded/assets/pet_texture.png').convert('RGB')
# 实际上用 GLB 原始纹理
import trimesh
scene = trimesh.load('/tmp/xiaozhi_simple.glb')
g = list(scene.geometry.values())[0]
tex_pil = g.visual.material.baseColorTexture
if hasattr(tex_pil, 'image'):
    tex_pil = tex_pil.image
tex_img = tex_pil.convert('RGB')
tex_arr = np.array(tex_img)
h, w = tex_arr.shape[:2]

# ASCII 预览 (32x16)
print("=== 纹理 ASCII 预览 (亮=空格, 暗=#) ===")
small = tex_img.resize((64, 32))
small_arr = np.array(small)
brightness = small_arr.mean(axis=2)
for r in range(32):
    line = ''
    for c in range(64):
        b = brightness[r, c]
        if b < 50: line += '#'
        elif b < 100: line += '+'
        elif b < 150: line += '.'
        elif b < 200: line += ' '
        else: line += ' '
    print(line)

# 黑色像素分布 (可能的眼睛)
black_mask = (tex_arr.sum(axis=2) < 90)
print(f"\n=== 深色像素分布 (RGB总和<90) ===")
print(f"总数: {black_mask.sum()}")
if black_mask.sum() > 0:
    black_rows = np.where(black_mask.any(axis=1))[0]
    black_cols = np.where(black_mask.any(axis=0))[0]
    print(f"行范围: [{black_rows.min()}, {black_rows.max()}] (图片{black_rows.min()/h*100:.0f}%-{black_rows.max()/h*100:.0f}%)")
    print(f"列范围: [{black_cols.min()}, {black_cols.max()}]")

    # 按上下半部分
    top_black = black_mask[:h//2].sum()
    bot_black = black_mask[h//2:].sum()
    print(f"图片上半深色像素: {top_black}")
    print(f"图片下半深色像素: {bot_black}")

# 按行统计深色像素 (找眼睛位置)
print(f"\n=== 每行深色像素数 (找眼睛特征) ===")
row_black = black_mask.sum(axis=1)
# 找深色像素最多的行
top_rows = np.argsort(row_black)[-10:][::-1]
for r in sorted(top_rows):
    print(f"  row={r} ({r/h*100:.0f}%): {row_black[r]} 个深色像素")

# 检查对称性 (眼睛通常左右对称)
print(f"\n=== 检查左右对称 (眼睛特征) ===")
for r in sorted(top_rows)[:5]:
    left = black_mask[r, :w//2].sum()
    right = black_mask[r, w//2:].sum()
    print(f"  row={r}: 左={left}, 右={right}, {'对称' if abs(left-right) < 5 else '不对称'}")
