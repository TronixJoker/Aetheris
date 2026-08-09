from PIL import Image
import numpy as np
from scipy import ndimage

tex = Image.open('/tmp/v110_extract/assets/pet_texture.png').convert('RGB')
arr = np.array(tex)
h, w = arr.shape[:2]

# 彩色像素(饱和度>20, 即R/G/B差异大)
saturation = arr.max(axis=2).astype(int) - arr.min(axis=2).astype(int)
colored_mask = saturation > 20
print(f"彩色像素总数: {colored_mask.sum()}")

# 找彩色区域的连通块
labeled, num = ndimage.label(colored_mask)
print(f"连通块数: {num}")

# 每个连通块的大小和位置
sizes = ndimage.sum(colored_mask, labeled, range(1, num+1))
centroids = ndimage.center_of_mass(colored_mask, labeled, range(1, num+1))

# 按大小排序
order = np.argsort(sizes)[::-1]
print(f"\n=== 前15大连通块 ===")
for i in order[:15]:
    label = i + 1
    size = int(sizes[i])
    r, c = centroids[i]
    # 平均颜色
    mask = labeled == label
    mean_rgb = arr[mask].mean(axis=0)
    print(f"  块{label}: 大小{size}, 中心(row={r:.0f},{r/h*100:.0f}%, col={c:.0f},{c/w*100:.0f}%), RGB({mean_rgb[0]:.0f},{mean_rgb[1]:.0f},{mean_rgb[2]:.0f})")

# 看彩色像素整体分布
rows, cols = np.where(colored_mask)
# 按行分布
print(f"\n=== 彩色像素按行分布(每10%) ===")
for p in range(0, 100, 10):
    r_lo = int(p/100*h)
    r_hi = int((p+10)/100*h)
    cnt = ((rows >= r_lo) & (rows < r_hi)).sum()
    if cnt > 0:
        seg_rgb = arr[colored_mask][((rows >= r_lo) & (rows < r_hi))]
        print(f"  row {p}%-{p+10}%: {cnt}个, RGB均值({seg_rgb.mean(axis=0)[0]:.0f},{seg_rgb.mean(axis=0)[1]:.0f},{seg_rgb.mean(axis=0)[2]:.0f})")
