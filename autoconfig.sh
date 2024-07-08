#!/usr/bin/env bash
files=$(ls -A | grep -E '^\.+' | grep -v .git | grep -v .swp)
# 去掉 ls -A 返回结果中的 ".git"
for file in `echo $files`; do
   # 创建软链接
   if $(ln -s $PWD/$file ~/$file); then
	echo "$PWD/$file is linked to ~/$file"
   fi
done
