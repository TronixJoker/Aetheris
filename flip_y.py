import struct
import numpy as np

# 读取当前 bin (1.9.10原始, 头在Y=0, 脚在Y=-1.093)
with open('/workspace/apk_decoded/assets/pet_model.bin', 'rb') as f:
    data = f.read()
vertex_count = struct.unpack('<i', data[:4])[0]
floats = np.frombuffer(data[4:], dtype='<f4').copy()
verts = floats.reshape(-1, 8).copy()

pos = verts[:, 0:3]
print(f"翻转前: Y[{pos[:,1].min():.3f},{pos[:,1].max():.3f}] (头在Y=0上,脚在Y=-1.093下)")
print(f"  但显示头在下脚在上 -> 渲染器Y向下为正? 或glTranslate方向问题")

# 翻转 Y 轴: Y_new = -Y_old + offset 让头在正Y(上)
# 原始: 头Y=0, 脚Y=-1.093
# 翻转: 头Y=0->0, 脚Y=-1.093->1.093? 不对,这样脚在上
# 需要: Y_new = Y_min + Y_max - Y_old = -1.093 + 0 - Y_old = -1.093 - Y_old
# 头Y=0 -> Y_new=-1.093 (下) 错
# 应该: Y_new = -(Y_old) 然后平移
# 头Y=0 -> 0, 脚Y=-1.093 -> 1.093 (脚在上) 错

# 实际: 渲染器Y向上为正, 头要在Y大(上方)
# 当前头Y=0(最大), 脚Y=-1.093(最小) -> 几何上头在上
# 但显示头在下 -> 说明渲染器实际Y向下为正, 或相机从下往上看

# 解决: 翻转Y轴, 让头Y变大, 脚Y变小(负)
# Y_new = -Y_old
# 头Y=0 -> 0, 脚Y=-1.093 -> 1.093 -> 脚Y更大(上) 还是错

# Y_new = Y_old - 1.093 (平移让脚到0, 头到1.093)
# 不行,需要翻转
# Y_new = -(Y_old) + 1.093 = 1.093 - Y_old
# 头Y=0 -> 1.093 (上) ✓
# 脚Y=-1.093 -> 1.093-(-1.093)=2.186 错

# 简单: Y_new = -Y_old, 然后整体加1.093让最小为0
# 头Y=0 -> 0 -> 1.093
# 脚Y=-1.093 -> 1.093 -> 2.186 错

# 重新想: Y_new = Y_min + Y_max - Y_old = -1.093 - Y_old
# 头Y=0 -> -1.093
# 脚Y=-1.093 -> 0
# 头在下,脚在上 -> 这就是当前显示!

# 所以要反过来: 不翻转就是头在上(几何), 但显示头在下
# 说明渲染时Y被翻转了. 需要在bin里把Y翻转
# Y_new = -Y_old (翻转)
# 头Y=0 -> 0
# 脚Y=-1.093 -> 1.093
# 这样脚Y=1.093(大,上), 头Y=0(小,下) -> 还是头在下

# 等等. 如果渲染器Y向下为正(颠倒), 那么Y大的在屏幕下方
# 当前: 头Y=0(小), 脚Y=-1.093(更小) -> 头在屏幕上方? 不对
# glTranslatef(0,0,-3) 是Z方向, Y不变
# 旋转glRotatef(angle, 0,1,0) 绕Y轴旋转, Y不变

# 也许问题在投影矩阵或视口
# 不管怎样, 用户说头在下脚在上, 需要翻转
# 最简单: Y_new = -Y_old, 让头脚对调
# 头Y=0 -> 0, 脚Y=-1.093 -> 1.093
# 这样头Y=0, 脚Y=1.093 -> 头Y小脚Y大
# 如果渲染器Y向上为正, 脚在上头在下 -> 不对
# 如果渲染器Y向下为正, 脚在下头在上 -> 对!

# 所以: 翻转Y轴 (Y_new = -Y_old)
verts[:, 1] = -verts[:, 1]  # 翻转Y
# 同时翻转法线Y
verts[:, 4] = -verts[:, 4]  # ny

pos_new = verts[:, 0:3]
print(f"\n翻转后: Y[{pos_new[:,1].min():.3f},{pos_new[:,1].max():.3f}]")
print(f"  头Y=0, 脚Y=1.093 (脚Y大)")

# 保存
out = bytearray()
out += struct.pack('<i', vertex_count)
out += verts.astype('<f4').tobytes()
with open('/workspace/apk_decoded/assets/pet_model.bin', 'wb') as f:
    f.write(out)
print(f"\n→ 保存 ({len(out)} 字节)")
