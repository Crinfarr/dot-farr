#!/usr/bin/env bash
case $(echo -e "Lock\nShutdown\nRestart" | rofi -dmenu -config ~/.config/rofi/midscreen.rasi -p "󰐥 ") in
    Lock)
        hyprlock
        ;;
    Shutdown)
        poweroff
        ;;
    Restart)
        if [ ! -e /boot/loader/entries ]; then
            # we aren't using systemd-boot and i didn't write any other targeting logic
            reboot;
        fi;
        TARGET=$(
                for entry in $(ls /boot/loader/entries);
                do
                    echo $entry
                done
            ) | rofi -dmenu -config ~/.config/rofi/midscreen.rasi -p " "
            systemctl reboot --boot-loader-entry=$TARGET
        ;;
esac
