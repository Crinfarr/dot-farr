hl.config({
    general = {
        col = {
            active_border = MAUVE,
            inactive_border = BASE
        }
    },
    decoration = {
        rounding = 0,
        rounding_power = 2,
        active_opacity = 1.0,
        inactive_opacity = 0.95,
        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = MANTLE,
        },
        blur = {
            enabled = true,
            size = 3,
            passes = 1,
            xray = false,
            vibrancy = 0.1696
        }
    }
})
hl.on("hyprland.start", function()
    hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme \"prefer-dark\"")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme \"adw-gtk3\"")
    hl.exec_cmd("waybar")
    hl.exec_cmd("dunst")
    hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
end)
