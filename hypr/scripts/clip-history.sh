#!/usr/bin/env bash
cliphist list |
rofi -dmenu -display-columns 2 -config ~/.config/rofi/cliphist.rasi -p " " |
cliphist decode |
wl-copy
