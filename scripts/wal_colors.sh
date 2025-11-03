#!/bin/bash

color_json=$(cat $HOME/.cache/wal/last_used_theme)

color_scheme=$(basename -- "$color_json" ".${color_json##*.}")

touch "$color_scheme"

cat "$HOME/.cache/wal/colors-scheme" >> "$color_scheme"

mv "$color_scheme" "$HOME/.config/colors/"

