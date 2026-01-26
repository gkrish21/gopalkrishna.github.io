#!/bin/bash

# Read the JSON input from stdin
input=$(cat)

# Extract model display name
model=$(echo "$input" | jq -r '.model.display_name // "Unknown"')

# Extract current directory
current_dir=$(echo "$input" | jq -r '.workspace.current_dir // "~"')
dir_name=$(basename "$current_dir")

# Extract context window information
used_pct=$(echo "$input" | jq -r '.context_window.used_percentage // 0')

# Get git branch if in a git repo
git_branch=""
if git rev-parse --git-dir > /dev/null 2>&1; then
    branch=$(git branch --show-current 2>/dev/null)
    if [ -n "$branch" ]; then
        git_branch="$branch"
    fi
fi

# Create progress bar (10 characters wide)
bar_length=10
filled=$((used_pct * bar_length / 100))
empty=$((bar_length - filled))

progress_bar=""
for ((i=0; i<filled; i++)); do
    progress_bar="${progress_bar}━"
done
for ((i=0; i<empty; i++)); do
    progress_bar="${progress_bar}─"
done

# Build elegant single-line status
status="$model · $dir_name"

if [ -n "$git_branch" ]; then
    status="$status · $git_branch"
fi

status="$status · $progress_bar ${used_pct}%"

echo "$status"
