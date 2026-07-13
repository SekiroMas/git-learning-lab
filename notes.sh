#!/bin/bash
echo "=== 便签管理工具 ==="
case "$1" in
  add) echo "$(data): $2" >> notes.txt; echo "已添加：$2";;
  list) cat notes.txt 2>/dev/null || echo "暂无标签";;
  *) echo "用法：$0 add <内容> | $0 list";;
esac
