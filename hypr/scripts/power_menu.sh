#!/usr/bin/env bash
case $(echo -e "Lock\nShutdown\nRestart" | rofi -dmenu -config ~/.config/rofi/pwrmenu.rasi -p "󰐥 ") in
    Lock)
        hyprlock
        ;;
    Shutdown)
        poweroff
        ;;
    Restart)
        reboot
        ;;
esac
