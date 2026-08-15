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
hl.window_rule({
    name = "open_spotify_on_scratch",
    match = {
        class = "Spotify"
    },
    workspace = "special:scratch"
})
hl.window_rule({
    name = "open_discord_on_scratch",
    match = {
        class = "discord"
    },
    workspace = "special:scratch"
})

local function hide_steam_on_game_launch(w)
    if not string.find(w.class, "steam_app_") then
        return
    end
    local steam_windows = hl.get_windows({
        class = "steam"
    })
    assert(steam_windows, "somehow opened a steam game without opening steam")
    for _, window in ipairs(steam_windows) do
        hl.dispatch(hl.dsp.window.move({
            workspace = "special:steam_holder",
            follow = false,
            window = window
        }))
    end
end
local function show_steam_on_game_close(w)
    if not string.find(w.class, "steam_app_") then
        return
    end
    local steam_windows = hl.get_windows({
        class = "steam"
    })
    assert(steam_windows, "somehow opened a steam game without opening steam")
    local workspace = hl.get_active_workspace()
    for _, window in ipairs(steam_windows) do
        hl.dispatch(hl.dsp.window.move({
            workspace = workspace,
            window = window,
        }))
    end
end
hl.on("window.class", function(w)
    hide_steam_on_game_launch(w)
end)
hl.on("window.close", function(w)
    show_steam_on_game_close(w)
end)
