TERMINAL = "kitty"
FILES = "kitty yazi"
SETTINGS = "systemsettings"
NOTIFIER = "dunst"
hl.on("hyprland.start", function()
    hl.exec_cmd(NOTIFIER)
    hl.exec_cmd("cliphist wipe")
    hl.exec_cmd("wl-paste --watch cliphist store")
end)
