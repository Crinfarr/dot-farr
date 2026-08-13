hl.monitor({
    output = "desc:Hewlett Packard HP E222 CNK53312QC",
    mode = "preferred",
    position = '0x0'
})
hl.monitor({
    output = "desc:Hewlett Packard HP E222 CNK53312Q9",
    mode = "preferred",
    position = "auto-center-right",
    transform = 1
})
hl.monitor({
    output = "desc:Hewlett Packard HP E222 CNK53312QV",
    mode = "preferred",
    position = "auto-center-left",
    transform = 1
})

hl.monitor({
    output = "DP-5",
    mode = "2560x1440",
    bitdepth = 10,
    position = "0x0",
})
hl.monitor({
    output = "DP-6",
    mode = "2560x1440",
    bitdepth = 10,
    position = "2560x0"
})
hl.config({
    render = {
        direct_scanout = 2
    }
})
hl.on("hyprland.start", function()
    hl.exec_cmd("hyprsunset")
end);
