import struct
import numpy as np
from PIL import Image

# 读取 1.9.10 原始 bin
with open('/tmp/v110_extract/assets/pet_model.bin', 'rb') as f:
    data = f.read()
vertex_count = struct.unpack('<i', data[:4])[0]
floats = np.frombuffer(data[4:], dtype='<f4').copy()
verts = floats.reshape(-1, 8).copy()

pos = verts[:, 0:3].copy()
print(f"原始: Y[{pos[:,1].min():.3f},{pos[:,1].max():.3f}]")

# 翻转 Y 轴: Y_new = -Y_old, 同时翻转法线 Y
# 这样头部(原Y=-0.582附近) -> Y=0.582 (上方)
# 脚部(原Y=-0.281附近) -> Y=0.281 (下方)? 不对,这样脚也在上面
# 实际上需要平移: 让Y范围居中后翻转

# 原始 Y[-1.093, 0], 头部Y均值=-0.582(中间偏下), 脚部Y均值=-0.281(偏上)
# 等等, 这不对. 让我重新看顶点密度
# Y[-0.055,0]: 12387顶点 (密度最高, 头部)
# Y[-1.093,-1.038]: 554顶点 (密度低, 脚部)
# 所以头部在Y接近0, 脚部在Y接近-1.093
# 但眼睛(V_render=0.049)的顶点Y=-0.582, 这是中间位置不是头部

# 重新理解: 顶点密度高的是头部(Y接近0), 但眼睛纹理映射到了Y=-0.582
# 这说明纹理映射错误: 头部顶点(Y接近0)的UV没有映射到眼睛区域

# 让我看头部顶点(Y接近0)的UV分布
head_mask = pos[:,1] > -0.1
head_uvs = verts[head_mask, 6:8]
print(f"\n头部顶点(Y>-0.1): {head_mask.sum()}个")
print(f"  U范围[{head_uvs[:,0].min():.3f},{head_uvs[:,0].max():.3f}]")
print(f"  V范围[{head_uvs[:,1].min():.3f},{head_uvs[:,1].max():.3f}]")

# V直方图
v_vals = head_uvs[:,1]
print(f"  V直方图:")
for v in np.arange(0, 1.1, 0.1):
    cnt = ((v_vals >= v) & (v_vals < v+0.1)).sum()
    print(f"    V[{v:.1f},{v+0.1:.1f}): {cnt}")

# 头部顶点V均值=0.318, 但眼睛在V_render=0.049
# 不翻转时 V_render=V_bin=0.318, 翻转时 V_render=1-0.318=0.682
# 眼睛V_render=0.049
# 都不匹配, 说明bin的UV和纹理根本不对应

# 也许纹理需要翻转? 或者bin的UV需要重新映射?
# 让我检查: 纹理上下翻转后, 眼睛位置变化
print(f"\n=== 纹理上下翻转分析 ===")
# 原始眼睛 row=1947 (95%), V_render=0.049
# 翻转纹理后 row = h-1-1947 = 100, V_render = 1-100/2046 = 0.951
print(f"原始: 眼睛row=1947, V_render=0.049")
print(f"纹理翻转: 眼睛row=100, V_render=0.951")
# 头部V_bin=0.318
# 不翻转+纹理翻转: V_render=0.318, 眼睛在0.951 -> 还是不匹配
# V翻转+纹理翻转: V_render=0.682, 眼睛在0.951 -> 还是不匹配

# 结论: bin的UV和纹理不匹配, 需要重新生成bin的UV
# 但更简单的方案: 直接翻转bin的Y轴(让头脚对调), 配合V翻转

# 方案: 翻转Y轴 + 保持V翻转
# 原始: 头Y=0(上), 脚Y=-1.093(下), 但纹理映射错(眼睛到中间)
# 翻转Y后: 头Y=0->1.093(下?), 脚Y=-1.093->0(上?)
# 这样头脚对调, 但渲染器Y向上为正, 头在下=倒立

# 不对. 让我重新想.
# 渲染器: glTranslatef(0,0,-3) 然后旋转, Y向上为正
# 头部应该在Y大(上方)
# 当前bin: 头部Y接近0(最大), 脚部Y=-1.093(最小) -> 头在上, 正立
# 但纹理映射错误: 眼睛纹理映射到了Y=-0.582(中间), 不是头部Y=0

# 所以模型几何是正立的, 但纹理贴错了
# 解决: 修正UV映射, 让头部顶点的V对应眼睛位置

# 简单方法: 翻转bin中的V坐标
# 原始头部V=0.318, 眼睛V_render=0.049(不翻转)或0.951(翻转纹理)
# 如果翻转bin的V: V_new = 1 - V_old
# 头部V_new = 1-0.318 = 0.682
# 还是不到0.049

# 看来bin的UV和纹理确实不匹配. 最佳方案: 重新生成bin的UV
# 但保留90000顶点的几何, 只重新计算UV

# 实际上, 让我检查bin的UV是否是球面投影(1.9.7的问题)
# 球面投影UV不会匹配GLB原生UV
print(f"\n=== 检查UV是否球面投影 ===")
# 球面投影: U = atan2(z,x)/(2pi)+0.5, V = asin(y/r)/(pi)+0.5
# 检查U和方位角的关系
import numpy as np
azimuth = np.arctan2(pos[:,2], pos[:,0])  # xz平面方位角
u_vals = verts[:,6]
# 计算相关性
corr = np.corrcoef(azimuth, u_vals)[0,1]
print(f"U与方位角相关性: {corr:.3f}")
if abs(corr) > 0.7:
    print("→ UV是球面投影(1.9.7的问题), 需要用GLB原生UV重新生成")
else:
    print("→ UV不是简单球面投影")
