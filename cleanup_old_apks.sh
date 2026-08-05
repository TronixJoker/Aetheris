#!/bin/bash
# 自动清理旧版本APK，只保留最新5个版本
# 用法：在 Aetheris 目录下运行 bash cleanup_old_apks.sh

set -e

cd "$(dirname "$0")"

echo "=== 清理旧版本APK ==="

# 收集所有APK文件并按版本号排序
apks=($(ls -1 xiaozhi-v*.apk 2>/dev/null | sort -V))

total=${#apks[@]}
keep=5

if [ $total -le $keep ]; then
    echo "当前只有 $total 个版本APK，无需清理（保留 $keep 个）"
    exit 0
fi

# 计算需要删除的数量
remove_count=$((total - keep))
echo "当前共 $total 个版本APK，保留最新 $keep 个，删除 $remove_count 个旧版本"

# 删除旧版本
for ((i=0; i<remove_count; i++)); do
    echo "  删除: ${apks[$i]}"
    git rm -f --quiet "${apks[$i]}"
done

# 显示保留的版本
echo ""
echo "保留的版本:"
for ((i=remove_count; i<total; i++)); do
    echo "  ${apks[$i]}"
done

# 提交
git commit -m "自动清理：删除 $remove_count 个旧版本APK，保留最新 $keep 个版本" 2>/dev/null || true

echo ""
echo "清理完成！"
