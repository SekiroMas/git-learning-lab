#!/bin/bash
echo "=== 便签管理工具 ==="
case "$1" in
  add)
    echo "$(date): $2 ($3)" >> notes.txt
    echo "已添加: $2, 标签: $3"
    ;;
  list)
    cat notes.txt 2>/dev/null || echo "暂无便签"
    ;;
  del)
    sed -i "/$2/d" notes.txt 2>/dev/null
    echo "已删除包含 '$2' 的便签"
    ;;
  *)
    echo "用法: $0 add <内容> <标签>  |  $0 list  |  $0 del <关键词>"
    ;;
esac
