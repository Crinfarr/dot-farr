hl.window_rule({
    name = 'no-border-when-alone',
    match = {
        workspace = "w[tv1]"
    },
    border_size = 0,
    rounding = 0
})
hl.window_rule({
    name = 'fix-xwayland-theft',
    match = {
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_initial_focus = true
})
hl.window_rule({
    name = 'suppress-maximize-events',
    match = {
        class = ".*",
    },
    suppress_event = "maximize"
})
hl.window_rule({
    name = 'berserk-bits-fix',
    match = {
        class = 'steam_app_2348540'
    },
    float = false,
    fullscreen = false,
    move = { 0, 0 },
    size = { "monitor_w", "monitor_h" },
    workspace = "special:overlay_panel",
    no_blur = true
})
