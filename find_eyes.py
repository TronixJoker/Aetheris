from PIL import Image
import numpy as np

tex = Image.open('/tmp/v110_extract/assets/pet_texture.png').convert('RGB')
arr = np.array(tex)
h, w = arr.shape[:2]

# ASCII 预览 (上半部和下半部)
print("=== 纹理上半部 ASCII (0-50%) ===")
small = tex.crop((0, 0, w, h//2)).resize((80, 30))
small_arr = np.array(small)
brightness = small_arr.mean(axis=2)
for r in range(30):
    line = ''
    for c in range(80):
        b = brightness[r, c]
        if b < 50: line += '#'
        elif b < 100: line += '+'
        elif b < 150: line += '.'
        elif b < 200: line += ' '
        else: line += ' '
    print(line)

print("\n=== 纹理下半部 ASCII (50-100%) ===")
small = tex.crop((0, h//2, w, h)).resize((80, 30))
small_arr = np.array(small)
brightness = small_arr.mean(axis=2)
for r in range(30):
    line = ''
    for c in range(80):
        b = brightness[r, c]
        if b < 50: line += '#'
        elif b < 100: line += '+'
        elif b < 150: line += '.'
        elif b < 200: line += ' '
        else: line += ' '
    print(line)

# 找对称的深色区域(眼睛特征: 左右对称的深色点)
print("\n=== 寻找眼睛特征(左右对称深色像素) ===")
black_mask = arr.sum(axis=2) < 90
# 按行找左右对称的深色像素
eye_rows = []
for r in range(h):
    row_black = black_mask[r]
    left = row_black[:w//2].sum()
    right = row_black[w//2:].sum()
    # 对称且数量适中(眼睛通常50-300个深色像素每行)
    if left > 30 and right > 30 and abs(left-right) < max(left,right)*0.3:
        total = left + right
        if 60 < total < 600:
            eye_rows.append((r, total, left, right))

print(f"找到 {len(eye_rows)} 个候选行")
if eye_rows:
    # 聚类找眼睛区域
    eye_rows.sort(key=lambda x: -x[1])
    print("深色像素最多的对称行:")
    for r, t, l, rr in eye_rows[:15]:
        print(f"  row={r} ({r/h*100:.0f}%): 总{t} 左{l} 右{rr}")
