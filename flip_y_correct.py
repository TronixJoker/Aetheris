import struct
import numpy as np

with open('/workspace/apk_decoded/assets/pet_model.bin', 'rb') as f:
    data = f.read()
floats = np.frombuffer(data[4:], dtype='<f4').copy()
verts = floats.reshape(-1, 8).copy()

# 1.9.12: 头Y=-1.093(下), 脚Y=0(上) -> 显示头在下
# 1.9.13翻转: 头Y=0, 脚Y=1.093 -> 用户说还是头在下
# 说明渲染器Y大=屏幕下方
# 需要: 头Y大(1.093), 脚Y小(0)
# 当前1.9.12: 头Y=-1.093, 脚Y=0
# 变换: Y_new = Y + 1.093 (平移)
# 头Y=-1.093 -> 0, 脚Y=0 -> 1.093 -> 脚在下, 头在上? 不对
# 
# 重新想: 渲染器Y大=屏幕下方(因为1.9.13头Y=0显示在下)
# 1.9.13: 头Y=0(小) -> 显示在下; 脚Y=1.093(大) -> 显示在上
# 所以Y小=屏幕下, Y大=屏幕上 (与正常相反)
# 
# 要让头在上(屏幕上): 头Y要大
# 1.9.12: 头Y=-1.093(小) -> 在下
# 需要: 头Y=1.093(大), 脚Y=0(小)
# 变换: Y_new = -Y (翻转)
# 头Y=-1.093 -> 1.093 (大,上) ✓
# 脚Y=0 -> 0 (小,下) ✓

verts[:, 1] = -verts[:, 1]  # 翻转Y
verts[:, 4] = -verts[:, 4]  # 翻转法线Y

pos = verts[:, 0:3]
print(f"翻转后: Y[{pos[:,1].min():.3f},{pos[:,1].max():.3f}]")
print(f"头Y=1.093(大,屏幕上), 脚Y=0(小,屏幕下)")

out = bytearray()
out += struct.pack('<i', len(verts))
out += verts.astype('<f4').tobytes()
with open('/workspace/apk_decoded/assets/pet_model.bin', 'wb') as f:
    f.write(out)
print(f"→ 保存 ({len(out)}字节)")
