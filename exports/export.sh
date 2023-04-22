#!/bin/sh
echo -ne '\033c\033]0;A-journey-of-music (godot 4)\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/export.x86_64" "$@"
