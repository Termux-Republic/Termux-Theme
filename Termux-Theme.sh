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

echo "Available themes:"
echo "  1) Solarized Dark"
echo "  2) Solarized Light"
echo "  3) Dracula"
echo "  4) Nord"
echo "  5) Gruvbox Dark"
echo "  6) Monokai"
echo "  7) One Dark"
echo "  8) Default Termux"
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
    *) echo "Invalid choice." ;;
esac
