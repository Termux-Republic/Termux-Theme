#!/data/data/com.termux/files/usr/bin/bash

COLORS_FILE="$HOME/.termux/colors.properties"

apply() {
    mkdir -p "$HOME/.termux"
    echo "$1" > "$COLORS_FILE"
    termux-reload-settings
    echo "Applied theme."
}

solarized_dark() { apply "
background=#002b36
foreground=#839496
cursor=#839496
color0=#073642
color1=#dc322f
color2=#859900
color3=#b58900
color4=#268bd2
color5=#d33682
color6=#2aa198
color7=#eee8d5
color8=#002b36
color9=#cb4b16
color10=#586e75
color11=#657b83
color12=#839496
color13=#6c71c4
color14=#93a1a1
color15=#fdf6e3
"; }

solarized_light() { apply "
background=#fdf6e3
foreground=#657b83
cursor=#657b83
color0=#073642
color1=#dc322f
color2=#859900
color3=#b58900
color4=#268bd2
color5=#d33682
color6=#2aa198
color7=#eee8d5
color8=#002b36
color9=#cb4b16
color10=#586e75
color11=#657b83
color12=#839496
color13=#6c71c4
color14=#93a1a1
color15=#fdf6e3
"; }

dracula() { apply "
background=#282a36
foreground=#f8f8f2
cursor=#f8f8f2
color0=#000000
color1=#ff5555
color2=#50fa7b
color3=#f1fa8c
color4=#bd93f9
color5=#ff79c6
color6=#8be9fd
color7=#bfbfbf
color8=#4d4d4d
color9=#ff6e67
color10=#5af78e
color11=#f4f99d
color12=#caa9fa
color13=#ff92d0
color14=#9aedfe
color15=#e6e6e6
"; }

nord() { apply "
background=#2e3440
foreground=#d8dee9
cursor=#d8dee9
color0=#3b4252
color1=#bf616a
color2=#a3be8c
color3=#ebcb8b
color4=#81a1c1
color5=#b48ead
color6=#88c0d0
color7=#e5e9f0
color8=#4c566a
color9=#bf616a
color10=#a3be8c
color11=#ebcb8b
color12=#81a1c1
color13=#b48ead
color14=#8fbcbb
color15=#eceff4
"; }

gruvbox_dark() { apply "
background=#282828
foreground=#ebdbb2
cursor=#ebdbb2
color0=#282828
color1=#cc241d
color2=#98971a
color3=#d79921
color4=#458588
color5=#b16286
color6=#689d6a
color7=#a89984
color8=#928374
color9=#fb4934
color10=#b8bb26
color11=#fabd2f
color12=#83a598
color13=#d3869b
color14=#8ec07c
color15=#ebdbb2
"; }

monokai() { apply "
background=#272822
foreground=#f8f8f2
cursor=#f8f8f2
color0=#272822
color1=#f92672
color2=#a6e22e
color3=#f4bf75
color4=#66d9e8
color5=#ae81ff
color6=#a1efe4
color7=#f8f8f2
color8=#75715e
color9=#f92672
color10=#a6e22e
color11=#f4bf75
color12=#66d9e8
color13=#ae81ff
color14=#a1efe4
color15=#f9f8f5
"; }

one_dark() { apply "
background=#282c34
foreground=#abb2bf
cursor=#528bff
color0=#282c34
color1=#e06c75
color2=#98c379
color3=#e5c07b
color4=#61afef
color5=#c678dd
color6=#56b6c2
color7=#abb2bf
color8=#545862
color9=#e06c75
color10=#98c379
color11=#e5c07b
color12=#61afef
color13=#c678dd
color14=#56b6c2
color15=#c8ccd4
"; }

default_termux() { apply "
background=#000000
foreground=#ffffff
cursor=#ffffff
color0=#000000
color1=#ff0000
color2=#00ff00
color3=#ffff00
color4=#0000ff
color5=#ff00ff
color6=#00ffff
color7=#ffffff
color8=#808080
color9=#ff0000
color10=#00ff00
color11=#ffff00
color12=#0000ff
color13=#ff00ff
color14=#00ffff
color15=#ffffff
"; }

# --- NEW THEMES ---

catppuccin_mocha() { apply "
background=#1e1e2e
foreground=#cdd6f4
cursor=#f5e0dc
color0=#45475a
color1=#f38ba8
color2=#a6e3a1
color3=#f9e2af
color4=#89b4fa
color5=#f5c2e7
color6=#94e2d5
color7=#bac2de
color8=#585b70
color9=#f38ba8
color10=#a6e3a1
color11=#f9e2af
color12=#89b4fa
color13=#f5c2e7
color14=#94e2d5
color15=#a6adc8
"; }

tokyo_night() { apply "
background=#1a1b26
foreground=#c0caf5
cursor=#c0caf5
color0=#15161e
color1=#f7768e
color2=#9ece6a
color3=#e0af68
color4=#7aa2f7
color5=#bb9af7
color6=#7dcfff
color7=#a9b1d6
color8=#414868
color9=#f7768e
color10=#9ece6a
color11=#e0af68
color12=#7aa2f7
color13=#bb9af7
color14=#7dcfff
color15=#c0caf5
"; }

rose_pine() { apply "
background=#191724
foreground=#e0def4
cursor=#524f67
color0=#26233a
color1=#eb6f92
color2=#31748f
color3=#f6c177
color4=#9ccfd8
color5=#c4a7e7
color6=#ebbcba
color7=#e0def4
color8=#6e6a86
color9=#eb6f92
color10=#31748f
color11=#f6c177
color12=#9ccfd8
color13=#c4a7e7
color14=#ebbcba
color15=#e0def4
"; }

gruvbox_light() { apply "
background=#fbf1c7
foreground=#3c3836
cursor=#3c3836
color0=#fbf1c7
color1=#cc241d
color2=#98971a
color3=#d79921
color4=#458588
color5=#b16286
color6=#689d6a
color7=#7c6f64
color8=#928374
color9=#9d0006
color10=#79740e
color11=#b57614
color12=#076678
color13=#8f3f71
color14=#427b58
color15=#3c3836
"; }

material_dark() { apply "
background=#212121
foreground=#eeffff
cursor=#ffcc02
color0=#000000
color1=#b71c1c
color2=#1b5e20
color3=#f57f17
color4=#1a237e
color5=#880e4f
color6=#006064
color7=#eceff1
color8=#546e7a
color9=#f07178
color10=#c3e88d
color11=#ffcb6b
color12=#82aaff
color13=#c792ea
color14=#89ddff
color15=#ffffff
"; }

echo "Available themes:"
echo "  1) Solarized Dark"
echo "  2) Solarized Light"
echo "  3) Dracula"
echo "  4) Nord"
echo "  5) Gruvbox Dark"
echo "  6) Monokai"
echo "  7) One Dark"
echo "  8) Default Termux"
echo "  9) Catppuccin Mocha"
echo " 10) Tokyo Night"
echo " 11) Rosé Pine"
echo " 12) Gruvbox Light"
echo " 13) Material Dark"
echo ""
read -p "Pick a number: " choice

case $choice in
    1) solarized_dark ;;
    2) solarized_light ;;
    3) dracula ;;
    4) nord ;;
    5) gruvbox_dark ;;
    6) monokai ;;
    7) one_dark ;;
    8) default_termux ;;
    9) catppuccin_mocha ;;
   10) tokyo_night ;;
   11) rose_pine ;;
   12) gruvbox_light ;;
   13) material_dark ;;
    *) echo "Invalid choice." ;;
esac
