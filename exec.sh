#!/bin/bash
dir="scripts"
for file in "$dir"/*.sh; do
    chmod +x "$file"
    echo "Set execute permission for $file"
done