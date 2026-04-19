#!/usr/bin/env bash
if [ -e ~/.config/hyprsunset_on ]; then
    rm ~/.config/hyprsunset_on;
    hyprctl hyprsunset identity 2>&1 >> /dev/null;
    printf '{"text":"", "alt":"off", "tooltip":"Hpyrsunset Off"}';
else
    touch ~/.config/hyprsunset_on;
    hyprctl hyprsunset temperature 5000  2>&1 >> /dev/null;
    printf '{"alt":"on", "tooltip":"Hpyrsunset On"}';
fi
