USE_LIBRESPOT = true
TERMINAL = "kitty"
FILES = "kitty yazi"
SETTINGS = "systemsettings"
NOTIFIER = "dunst"

hl.on("hyprland.start", function()
    hl.exec_cmd(NOTIFIER)
    hl.exec_cmd("cliphist wipe")
    hl.exec_cmd("wl-paste --watch cliphist store")
    if USE_LIBRESPOT then
        hl.exec_cmd("sh ".. HYPR_CONF_DIR .. "scripts/librespot.sh")
    end
end)
