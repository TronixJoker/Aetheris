from PIL import Image
import numpy as np

img = Image.open('/workspace/apk_decoded/assets/pet_texture.png').convert('RGBA')
arr = np.array(img)
rgb = arr[:,:,:3]
alpha = arr[:,:,3]
h, w = rgb.shape[:2]

brightness = rgb.mean(axis=2)

# 半透明像素(alpha 1-254): 这些是问题来源
semi_transparent = (alpha > 0) & (alpha < 255)
print(f"半透明像素: {semi_transparent.sum()} ({semi_transparent.sum()/alpha.size*100:.2f}%)")

if semi_transparent.sum() > 0:
    semi_rgb = rgb[semi_transparent]
    semi_alpha = alpha[semi_transparent]
    semi_bright = semi_rgb.mean(axis=1)
    print(f"  alpha范围: [{semi_alpha.min()},{semi_alpha.max()}], 均值{semi_alpha.mean():.0f}")
    print(f"  亮度范围: [{semi_bright.min():.0f},{semi_bright.max():.0f}], 均值{semi_bright.mean():.0f}")
    print(f"  RGB均值: {semi_rgb.mean(axis=0)}")
    
    # 半透明像素的alpha分布
    print(f"\n  alpha分段:")
    for a in [1,64,128,160,192,224,254]:
        cnt = ((semi_alpha >= a) & (semi_alpha < a+32)).sum()
        if cnt > 0:
            print(f"    [{a}-{a+32}): {cnt}")
    
    # 半透明像素的亮度分布
    print(f"\n  亮度分段:")
    for b in [0,60,120,180,220]:
        cnt = ((semi_bright >= b) & (semi_bright < b+40)).sum()
        if cnt > 0:
            print(f"    [{b}-{b+40}): {cnt}")

# 关键: 半透明像素如果alpha=193且RGB偏黑, 混合后会变成深灰
# 但如果alpha=193且RGB偏白, 混合后变成浅灰
# 这导致边缘抗锯齿, 但在GL_BLEND下可能显示异常

# 把所有半透明像素预乘alpha到不透明
# 即: 用 alpha 混合到某个背景色, 然后设alpha=255
# 但用户说背景要透明, 所以应该: 把半透明像素的RGB预乘, 保持alpha
# 或者: 把半透明像素都设为不透明(alpha=255), 保留RGB

# 实际上, 1.9.13能正常显示(用户只说连接处有问题),
# 说明半透明像素在1.9.13是OK的
# 问题可能是我1.9.14/1.9.15的处理破坏了

# 让我只看连接处区域的半透明像素
import struct
with open('/workspace/apk_decoded/assets/pet_model.bin','rb') as f:
    data = f.read()
floats = np.frombuffer(data[4:], dtype='<f4')
verts = floats.reshape(-1,8)
pos = verts[:,0:3]
uv = verts[:,6:8]

# 连接区域Y 0.1-0.7 (翻转后)
conn_mask = (pos[:,1] > 0.1) & (pos[:,1] < 0.7)

# 采样连接区域顶点的纹理像素
conn_semi_count = 0
conn_total = 0
for i in np.where(conn_mask)[0]:
    v = uv[i,1]; u = uv[i,0]
    row = int((1-v)*(h-1)); col = int(u*(w-1))
    row = max(0,min(h-1,row)); col = max(0,min(w-1,col))
    conn_total += 1
    if 0 < alpha[row,col] < 255:
        conn_semi_count += 1

print(f"\n连接区域顶点采样:")
print(f"  总顶点: {conn_total}")
print(f"  半透明: {conn_semi_count} ({conn_semi_count/conn_total*100:.1f}%)")
