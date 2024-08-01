#!/usr/bin/env bash

# 设置输出文件
output_file="script_output.log"
error_file="script_error.log"
count=0

# 清空输出文件
> "$output_file"
> "$error_file"

# 循环运行脚本直到出错
while true; do
    count=$((count + 1))
    ./random_script.sh >> "$output_file" 2>> "$error_file"
    
    if [[ $? -ne 0 ]]; then
        echo "Script failed after $count runs."
        break
    fi
done

# 输出所有内容
cat "$output_file"
cat "$error_file"

