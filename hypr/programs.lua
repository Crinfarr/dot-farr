TERMINAL = "kitty"
FILES = "kitty yazi"
SETTINGS = "systemsettings"
hl.on("hyprland.start", function()
    hl.exec_cmd("hyprlauncher -d")
    hl.exec_cmd("cliphist wipe")
    hl.exec_cmd("wl-paste --watch cliphist store")
end)
