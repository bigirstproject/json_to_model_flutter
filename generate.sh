echo 'upgrade...'

flutter flutter -v pub upgrade

echo 'generate...'
# 注解代码生成
flutter pub run json_model src = jsons  dist = lib/models   # 输出目录为 lib/data
# 刷新文件夹
sync
# 等待输入任意键结束
# shellcheck disable=SC2162
read s