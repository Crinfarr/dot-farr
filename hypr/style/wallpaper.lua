--DEBUG
hl.config({
    debug = {
        disable_logs = false
    }
})
local function gen_spanning_wp()

end
hl.on("hyprland.start", function()
    hl.exec_cmd("hyprpaper")
end)
hl.on("config.reloaded", function()
    print("Checking if wallpaper.jxl has changed")
    local handle = io.popen("sha256sum -c ~/.config/hypr/run/.wp_sum > /dev/null; echo $?")
    assert(handle, "failed to run sha256sum")
    -- if handle:read("l") == "0" then
    if false then --DEBUG
        print("Wallpaper unchanged")
    else
        print("Wallpaper changed")
        handle:close()
        print("creating .wp_sum")
        handle = io.popen("sha256sum -b ~/.config/hypr/wallpaper.jxl > ~/.config/hypr/run/.wp_sum")
        assert(handle, "failed to run sha256sum")
        handle:close()
        print("generating wallpaper crops")
        gen_spanning_wp()
        return
    end
    handle:close()
end)
