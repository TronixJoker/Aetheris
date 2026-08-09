import struct
import numpy as np
from PIL import Image

with open('/tmp/v110_extract/assets/pet_model.bin', 'rb') as f:
    data = f.read()
floats = np.frombuffer(data[4:], dtype='<f4')
verts = floats.reshape(-1, 8)
pos = verts[:, 0:3]
uv = verts[:, 6:8]

tex = np.array(Image.open('/tmp/v110_extract/assets/pet_texture.png').convert('RGB'))
h, w = tex.shape[:2]

# 眼睛在 row=1947, V_render = 1 - 1947/2046 = 0.0483
eye_v_render = 1 - 1947/(h-1)
print(f"眼睛 V_render = {eye_v_render:.4f}")

# 头部顶点(Y>-0.1)中, V_bin在[0,0.1)的有4291个
# 不翻转: V_render = V_bin, 这些顶点 V_render在[0,0.1) 接近眼睛0.048
head_mask = pos[:,1] > -0.1
head_v_bin = uv[head_mask, 1]
head_close_eye = (head_v_bin < 0.1).sum()
print(f"\n头部顶点(Y>-0.1): {head_mask.sum()}个")
print(f"  其中 V_bin<0.1 (接近眼睛不翻转): {head_close_eye}个")

# 验证: V_bin在[0,0.05)的顶点, Y分布(应在头部Y接近0)
eye_bin_mask = uv[:,1] < 0.05
print(f"\nV_bin<0.05 的顶点: {eye_bin_mask.sum()}个")
if eye_bin_mask.sum() > 0:
    eye_y = pos[eye_bin_mask, 1]
    print(f"  Y范围[{eye_y.min():.3f},{eye_y.max():.3f}] 均值={eye_y.mean():.3f}")
    y_center = (pos[:,1].max()+pos[:,1].min())/2
    if eye_y.mean() > y_center:
        print(f"  → Y在上方(头部) ✓ 不翻转正确, 正立")
    else:
        print(f"  → Y在下方(脚部) ✗")

# 结论: 不翻转时, V_bin<0.05的顶点(对应眼睛纹理)的Y位置
# 如果在头部(Y接近0), 则不翻转就是正立
# 之前的分析有误, 重新确认

print(f"\n=== 最终结论 ===")
print(f"不翻转(V_render=V_bin):")
print(f"  眼睛纹理(V_render=0.048) -> V_bin<0.05的顶点")
eye_y_final = pos[uv[:,1] < 0.05, 1]
print(f"  这些顶点Y均值={eye_y_final.mean():.3f}, Y范围[{eye_y_final.min():.3f},{eye_y_final.max():.3f}]")
y_max = pos[:,1].max()
if eye_y_final.mean() > y_max - 0.3:
    print(f"  → 头部在Y上方(Ymax={y_max:.3f}) ✓ 正立, 不需要V翻转!")
else:
    print(f"  → 头部不在Y上方 ✗")
