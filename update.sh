#!/bin/bash

# 进入到你的git版本库目录
#cd /path/to/your/git/repo
git add .

# 获取当前时间并格式化为YYYY-MM-DD-HH-MM-SS
CURRENT_TIME=$(date +"%Y-%m-%d-%H-%M-%S")

git commit -m "${CURRENT_TIME}"

# 拉取最新代码
git push

# 如果有子模块，请执行以下命令来更新子模块
# git submodule update --init --recursive

# 输出更新成功消息
echo "Git repository updated successfully."
