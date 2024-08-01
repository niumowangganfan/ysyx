#!/usr/bin/env bash

# 生成一个 0 到 99 之间的随机数
n=$(( RANDOM % 100 ))

# 检查随机数是否等于 42
if [[ n -eq 42 ]]; then
    echo "Something went wrong"
    >&2 echo "The error was using magic numbers"
    exit 1
fi

# 如果随机数不等于 42，输出正常信息
echo "Everything went according to plan"

