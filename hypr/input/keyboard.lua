hl.config({
    input = {
        kb_layout = "us",
        kb_options = "fkeys:basic_13-24"
    }
})

-- app shortcuts
hl.bind("SUPER + Return", hl.dsp.exec_cmd(TERMINAL))
hl.bind("SUPER + E", hl.dsp.exec_cmd(FILES))
hl.bind("SUPER + I", hl.dsp.exec_cmd(SETTINGS))
hl.bind("SUPER + SUPER_L", hl.dsp.exec_cmd("rofi -show drun -p \"󰌧 \""))
hl.bind("SUPER + R", hl.dsp.exec_cmd("rofi -show run -config ~/.config/rofi/midscreen.rasi"))
hl.bind("SUPER + Tab", hl.dsp.exec_cmd("rofi -show window -config ~/.config/rofi/midscreen.rasi"))
hl.bind("SUPER + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind("SUPER + SHIFT + V", hl.dsp.exec_cmd("pavucontrol-qt"))
-- script shortcuts
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("sh ~/.config/hypr/scripts/screenshot.sh"))
hl.bind("CTRL + ALT + Delete", hl.dsp.exec_cmd("sh ~/.config/hypr/scripts/power_menu.sh"))
hl.bind("SUPER + V", hl.dsp.exec_cmd("sh ~/.config/hypr/scripts/clip-history.sh"))
-- window interaction
hl.bind("SUPER + Q", hl.dsp.window.close("activewindow"))
hl.bind("SUPER + ALT + Space", hl.dsp.window.float("activewindow"))
hl.bind("SUPER + Space", hl.dsp.window.pseudo("activewindow"))
hl.bind("SUPER + SHIFT + Slash", hl.dsp.layout("togglesplit"))
hl.bind("SUPER + Left", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + Right", hl.dsp.focus({ direction = "r" }))
hl.bind("SUPER + Up", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + Down", hl.dsp.focus({ direction = "d" }))
hl.bind("SUPER + semicolon", hl.dsp.layout("splitratio -0.1"))
hl.bind("SUPER + apostrophe", hl.dsp.layout("splitratio +0.1"))
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind("SUPER + SHIFT + F", hl.dsp.window.fullscreen_state({ internal = 0, client = 2, action = "toggle", }))
-- workspace interaction
hl.bind("SUPER + Next", hl.dsp.focus({ workspace = "r+10", on_current_monitor = true }))
hl.bind("SUPER + Prior", hl.dsp.focus({ workspace = "r-10", on_current_monitor = true }))
hl.bind("SUPER + CTRL + Right", hl.dsp.focus({ workspace = "r+1", on_current_monitor = true }))
hl.bind("SUPER + CTRL + Left", hl.dsp.focus({ workspace = "r-1", on_current_monitor = true }))
hl.bind("SUPER + ALT + S", hl.dsp.window.move({ workspace = "special:scratch", window = "activewindow" }))
-- this panel is basically the same as scratch but only for windows ruled to open into it
hl.bind("SUPER + O", hl.dsp.workspace.toggle_special("overlay_panel"))
hl.bind("SUPER + S", hl.dsp.workspace.toggle_special("scratch"))
-- media keys
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))
