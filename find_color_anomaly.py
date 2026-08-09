from PIL import Image
import numpy as np

# 原始1.9.10纹理
tex = Image.open('/tmp/v110_extract/assets/pet_texture.png').convert('RGB')
arr = np.array(tex)
h, w = arr.shape[:2]

# 找颜色异常区域: 在灰度背景中,有彩色的点
# 或者亮度突变区域
# 先看纹理的彩色像素(非灰度,即R/G/B差异大)
rgb = arr
saturation = rgb.max(axis=2).astype(int) - rgb.min(axis=2).astype(int)
colored_mask = saturation > 20
print(f"彩色像素(饱和度>20): {colored_mask.sum()} ({colored_mask.sum()/rgb.size*100/3:.1f}%)")

if colored_mask.sum() > 0:
    # 彩色像素分布
    rows, cols = np.where(colored_mask)
    print(f"彩色像素行范围: [{rows.min()},{rows.max()}] ({rows.min()/h*100:.0f}%-{rows.max()/h*100:.0f}%)")
    print(f"彩色像素列范围: [{cols.min()},{cols.max()}]")
    # 彩色像素颜色
    colored_rgb = rgb[colored_mask]
    print(f"彩色像素RGB均值: {colored_rgb.mean(axis=0)}")
    # 看几个示例
    print(f"前10个彩色像素:")
    for i in range(min(10, len(colored_rgb))):
        print(f"  {colored_rgb[i]} (row={rows[i]},col={cols[i]})")

# 也看亮度突变区域(边缘检测)
brightness = rgb.mean(axis=2)
# 计算水平梯度
grad_x = np.abs(np.diff(brightness, axis=1))
grad_y = np.abs(np.diff(brightness, axis=0))
# 高梯度区域(突变)
high_grad = (grad_x[:, :-1] > 80) | (grad_y[:-1, :] > 80)
print(f"\n亮度突变区域: {high_grad.sum()}")

# ASCII预览看纹理布局
print(f"\n=== 纹理ASCII (亮度, #=暗 .=中 空格=亮) ===")
small = tex.resize((80, 40))
small_arr = np.array(small)
b = small_arr.mean(axis=2)
for r in range(40):
    line = ''
    for c in range(80):
        v = b[r,c]
        if v < 60: line += '#'
        elif v < 120: line += '.'
        elif v < 180: line += ','
        else: line += ' '
    print(line)
