t仓库中
if [ ! -d ".git" ]; then
  echo "不在Git仓库中。请进入Git仓库目录并运行脚本。"
  exit 1
fi

# 添加所有更改到缓存区
git add .

# 提交更改到本地仓库
read -p "请输入提交消息: " commit_message
git commit -m "$commit_message"

# 推送更改到远程仓库
git push

echo "更改已经上传到远程仓库。"

exit 0

