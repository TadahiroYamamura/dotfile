#!/bin/bash
input=$(cat)
model=$(echo "$input" | jq -r '.model.display_name // "unknown"')
ctx=$(echo "$input" | jq -r '.context_window.used_percentage // 0 | floor')
cwd=$(echo "$input" | jq -r '.cwd // ""')
short_cwd=$(echo "$cwd" | sed 's|.*[/\\]\([^/\\]*[/\\][^/\\]*\)$|\1|')
echo "${model} | ctx ${ctx}% | ${short_cwd}"
