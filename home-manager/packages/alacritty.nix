{ config, pkgs, ... }:

{

	programs.alacritty.enable = true;

	# Configuration
	xdg.configFile."alacritty/alacritty.yml".text = ''
window:
  dimension:
    columns: 100
    lines: 85
  padding:
    x: 10
    y: 5
  decorations: Full
  opacity: 0.98

font:
  normal:
    family: FiraCode Nerd Font
    style: Regular
  bold:
    family: FiraCode Nerd Font
    style: Bold
  italic:
    family: FiraCode Nerd Font
    style: Italic
  bold_italic:
    family: FiraCode Nerd Font
    style: Bold Italic
  size: 11.0

key_bindings:
  - { key: F11, action: ToggleFullscreen }
# Import color scheme file
import:
  - ~/.config/alacritty/gruvbox-dark.yml'';

	# Gruvbox-dark color scheme
	xdg.configFile."alacritty/gruvbox-dark.yml".text = ''
# Colors (Gruvbox dark)
colors:
  primary:
    # hard contrast background - "#1d2021"
    background:        &gruvbox_dark_bg "#282828"
    # soft contrast background - "#32302f"
    foreground:        "#ebdbb2"
    bright_foreground: "#fbf1c7"
    dim_foreground:    "#a89984"
  cursor:
    text:   CellBackground
    cursor: CellForeground
  vi_mode_cursor:
    text:   CellBackground
    cursor: CellForeground
  # search:
  #   matches:
  #     foreground: "#000000"
  #     background: "#ffffff"
  #   focused_match:
  #    foreground: CellBackground
  #    background: CellForeground
  #   bar:
  #     background: ""
  #     foreground: ""
  # line_indicator:
  #   foreground: None
  #   background: None
  selection:
    text:       CellBackground
    background: CellForeground
  bright:
    black:   "#928374"
    red:     "#fb4934"
    green:   "#b8bb26"
    yellow:  "#fabd2f"
    blue:    "#83a598"
    magenta: "#d3869b"
    cyan:    "#8ec07c"
    white:   "#ebdbb2"
  normal:
    black:   *gruvbox_dark_bg
    red:     "#cc241d"
    green:   "#98971a"
    yellow:  "#d79921"
    blue:    "#458588"
    magenta: "#b16286"
    cyan:    "#689d6a"
    white:   "#a89984"
  dim:
    black:   "#32302f"
    red:     "#9d0006"
    green:   "#79740e"
    yellow:  "#b57614"
    blue:    "#076678"
    magenta: "#8f3f71"
    cyan:    "#427b58"
    white:   "#928374"
  # indexed_colors: []'';

	# Rose-pine color scheme
	xdg.configFile."alacritty/rose-pine.yml".text = ''
colors:
  primary:
    background: "0x191724"
    foreground: "0xe0def4"
  cursor:
    text: "0xe0def4"
    cursor: "0x524f67"
  vi_mode_cursor:
    text: "0xe0def4"
    cursor: "0x524f67"
  line_indicator:
    foreground: None
    background: None
  selection:
    text: "0xe0def4"
    background: "0x403d52"
  normal:
    black: "0x26233a"
    red: "0xeb6f92"
    green: "0x31748f"
    yellow: "0xf6c177"
    blue: "0x9ccfd8"
    magenta: "0xc4a7e7"
    cyan: "0xebbcba"
    white: "0xe0def4"
  bright:
    black: "0x6e6a86"
    red: "0xeb6f92"
    green: "0x31748f"
    yellow: "0xf6c177"
    blue: "0x9ccfd8"
    magenta: "0xc4a7e7"
    cyan: "0xebbcba"
    white: "0xe0def4"
  hints:
    start:
      foreground: "#908caa"
      background: "#1f1d2e"
    end:
      foreground: "#6e6a86"
      background: "#1f1d2e"'';

}
