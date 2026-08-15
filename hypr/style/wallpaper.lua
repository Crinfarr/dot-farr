local function gen_spanning_wp(path)
    assert(type(path) == "string", "bad argument to gen_spanning_wp")
    local monitor_rects = {}
    local offset = { x = 0, y = 0 }
    local scale = { w = 0, h = 0 }
    for _, monitor in ipairs(hl.get_monitors()) do
        local rect = { x = monitor.x, y = monitor.y, name = monitor.name }
        if rect.x < 0 then
            offset.x = offset.x + math.abs(rect.x)
        end
        if rect.y < 0 then
            offset.y = offset.y + math.abs(rect.y)
        end
        if monitor.transform & 1 ~= 0 then
            rect.w = monitor.height
            rect.h = monitor.width
        else
            rect.w = monitor.width
            rect.h = monitor.height
        end
        table.insert(monitor_rects, rect)
    end
    print(string.format("offset for normalization is x+%s y+%s", offset.x, offset.y))
    for _, rect in ipairs(monitor_rects) do
        rect.x = rect.x + offset.x
        rect.y = rect.y + offset.y
        scale.w = math.max(scale.w, rect.x + rect.w)
        scale.h = math.max(scale.h, rect.y + rect.h)
        print(string.format("normalized rect for %s is [%s, %s, %s, %s]", rect.name, rect.x, rect.y, rect.w, rect.h))
    end
    local filtergraph = ""
    filtergraph = filtergraph .. string.format("scale=w=%s:h=%s:force_original_aspect_ratio=increase,", scale.w, scale.h)
    filtergraph = filtergraph .. "split=" .. #monitor_rects
    for _, rect in ipairs(monitor_rects) do
        filtergraph = filtergraph .. string.format("[%s]", rect.name)
    end
    filtergraph = filtergraph .. ';'
    for _, rect in ipairs(monitor_rects) do
        filtergraph = filtergraph ..
            string.format("[%s]crop=x=%s:y=%s:w=%s:h=%s[%s.o];", rect.name, rect.x, rect.y, rect.w, rect.h, rect.name)
    end
    local command = string.format("ffmpeg -i %s -filter_complex %q ", path, filtergraph)
    for _, rect in ipairs(monitor_rects) do
        command = command .. string.format("-map '[%s.o]' ~/.config/hypr/run/wallpaper.%s.jxl ", rect.name, rect.name)
    end
    local run, e = io.popen(string.format("yes | %s", command))
    assert(run, e)
    local _ = run:read("a")
    run:close()
    for _, rect in ipairs(monitor_rects) do
        hl.exec_cmd(string.format("hyprctl hyprpaper wallpaper '%s, ~/.config/hypr/run/wallpaper.%s.jxl, fill'",
            rect.name, rect.name))
    end
end

hl.on("hyprland.start", function()
    hl.exec_cmd("hyprpaper")
end)
WALLPAPER_GENERATED = false
hl.on("layer.opened", function(layer)
    if layer.namespace == "hyprpaper" and not WALLPAPER_GENERATED then
        gen_spanning_wp("~/.config/hypr/wallpaper.jxl")
        WALLPAPER_GENERATED = true
    end
end)
