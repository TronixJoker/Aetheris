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

# 不翻转: V_render = V_bin
head_mask = pos[:,1] > -0.1
foot_mask = pos[:,1] < -1.0

head_v = uv[head_mask, 1].mean()
foot_v = uv[foot_mask, 1].mean()
print(f"不翻转: 头部 V={head_v:.3f}, 脚部 V={foot_v:.3f}")

# row = (1-V)*(h-1)
head_row = int((1 - head_v) * (h-1))
foot_row = int((1 - foot_v) * (h-1))
print(f"头部采样 row={head_row} ({head_row/h*100:.0f}%)")
print(f"脚部采样 row={foot_row} ({foot_row/h*100:.0f}%)")

head_black = (tex[head_row-10:head_row+10].sum(axis=2) < 90).sum()
foot_black = (tex[foot_row-10:foot_row+10].sum(axis=2) < 90).sum()
print(f"头部区域深色像素: {head_black}")
print(f"脚部区域深色像素: {foot_black}")
if head_black > foot_black:
    print("→ 不翻转正确: 头部采样到眼睛 ✓")
else:
    print("→ 不翻转也错误 ✗")

# 总结两种情况
print(f"\n=== 总结 ===")
print(f"V翻转(1-V): 头部深色{228}, 脚部深色{2322} → 倒立")
print(f"不翻转:    头部深色{head_black}, 脚部深色{foot_black} → {'正立' if head_black>foot_black else '倒立'}")
