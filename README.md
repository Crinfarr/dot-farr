# DotFarr
## my extremely opinionated dotfiles

## Prerequisites (to use everything)
* Hyprland [pacman](https://archlinux.org/packages/extra/x86_64/hyprland/)
* * **Required**
* Waybar (Migrating to quickshell soon™) [pacman](https://archlinux.org/packages/extra/x86_64/waybar/)
* * Required for top bar
* Quickshell [pacman](https://archlinux.org/packages/extra/x86_64/quickshell/)
* * Optional now, maybe not later
* Hyprlock [pacman](https://archlinux.org/packages/extra/x86_64/hyprlock/)
* * Required for SUPER+L lock and rofi power menu to work
* Wayfreeze [aur](https://aur.archlinux.org/packages/wayfreeze-git)
* * Required for SUPER+SHIFT+S screenshot to work
* Grim [pacman](https://archlinux.org/packages/extra/x86_64/grim/)
* * Required for SUPER+SHIFT+S screenshot to work
* wl-clipboard [pacman](https://archlinux.org/packages/extra/x86_64/wl-clipboard/)
* * Required for SUPER+SHIFT+S screenshot to work
* pavucontrol-qt [pacman](https://archlinux.org/packages/extra/x86_64/pavucontrol-qt/)
* * Required for SUPER+SHIFT+V volume mixer
* Rofi [pacman](https://archlinux.org/packages/extra/x86_64/rofi/)
* * Required for SUPER, SUPER+., and CTRL+ALT+DELETE to work
### Recommended programs (You can set these to your personal preference in hypr/programs.conf)
* Kitty ($term) [pacman](https://archlinux.org/packages/extra/x86_64/kitty/)
* Dolphin ($files) [pacman](https://archlinux.org/packages/extra/x86_64/dolphin/)
* KDE System Settings ($settings) [pacman](https://archlinux.org/packages/extra/x86_64/systemsettings/)

## Shortcuts
I put in most of the shortcuts I use often and update this every time I realize I forgot one.
| Shortcut | Activates |
| -------- | --------- |
| SUPER+Enter | Terminal |
| SUPER+E | File explorer |
| SUPER+I | Settings app |
| SUPER | Launcher (pseudo-"start menu") |
| SUPER+R | Run dialog |
| SUPER+Tab | Window switcher |
| SUPER+SHIFT+V | Volume mixer |
| SUPER+SHIFT+S | Region screenshot to clipboard |
| CTRL+ALT+Delete | Power menu |
| SUPER+Q | Kill active window |
| SUPER+ALT+Space | Set active window to floating |
| SUPER+SPACE | Pseudofloat (Make window think it's floating, but tile anyway) |
| SUPER+SHIFT+/ | Rotate tiling split |
| SUPER+LeftArrow | Focus window to the left |
| SUPER+RightArrow | Focus window to the right |
| SUPER+UpArrow | Focus window above|
| SUPER+DownArrow | Focus window below|
| SUPER+; | Decrease split ratio (make top/left window smaller) |
| SUPER+' | Increase split ratio (make bottom/right window smaller) |
| SUPER+F | Fullscreen active window |
| SUPER+SHIFT+F | Tell window it's in full screen, but lie |
| SUPER+PgDn | Move 10 workspaces forward (numerically) |
| SUPER+PgUp | Move 10 workspaces backward (numerically) |
| SUPER+CTRL+RightArrow | Next workspace |
| SUPER+CTRL+LeftArrow | Previous workspace |
| SUPER+ALT+S | Send workspace to scratchpad |
| SUPER+S | Open scratchpad |
| SUPER+LeftClick+Drag | Move active window |
| SUPER+RightClick+Drag | Resize active window |

## Installation
Just symlink each dir to `~/.config/\[dir name here]`, i.e. ~/.config/hypr should by a symlink to dot-farr/hypr.

Before creating symlinks, make sure you clear existing directories. If you don't it might do weird things.

```bash
ln -s [dot-farr]/hypr ~/.config/hypr
ln -s [dot-farr]/quickshell ~/.config/quickshell
ln -s [dot-farr]/waybar ~/.config/waybar
ln -s [dot-farr]/rofi ~/.config/rofi
```

## WIPs:
[ ] super+tab with window previews
