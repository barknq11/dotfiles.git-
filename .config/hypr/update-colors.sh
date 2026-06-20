#!/bin/bash

WALLPAPER=$(python3 -c "import json; d=json.load(open('$HOME/.local/state/DankMaterialShell/session.json')); print(d['wallpaperPath'])")

# Extract colors with matugen
matugen -j hex --prefer lightness image "$WALLPAPER" > /tmp/matugen-colors.json 2>/dev/null

# Get accent colors from base16 (base0D = blue/primary, base0E = purple/secondary)
COLOR1=$(python3 -c "import json; d=json.load(open('/tmp/matugen-colors.json')); print(d['base16']['base0d']['dark']['color'].replace('#',''))")
COLOR2=$(python3 -c "import json; d=json.load(open('/tmp/matugen-colors.json')); print(d['base16']['base0e']['dark']['color'].replace('#',''))")

echo "Color1: $COLOR1"
echo "Color2: $COLOR2"

# Apply border instantly
hyprctl eval "hl.config({ general = { col = { active_border = { colors = {'rgba(${COLOR1}ee)', 'rgba(${COLOR2}ee)'}, angle = 45 } } } })"

# Apply terminal colors via pywal
wal -i "$WALLPAPER" -n -q
cat ~/.cache/wal/sequences
