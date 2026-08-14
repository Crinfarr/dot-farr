-- My work monitors for example
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
-- My home monitors for second example
hl.monitor({
    output = "desc:Acer Technologies XV272U V3 A421056D43LIJ",
    mode = "2560x1440",
    bitdepth = 10,
    position = "auto",
})
hl.monitor({
    output = "desc:Acer Technologies XV272U V3 A421056D53LIJ",
    mode = "2560x1440",
    bitdepth = 10,
    position = "auto-right"
})
hl.config({
    render = {
        direct_scanout = 2
    }
})
hl.on("hyprland.start", function()
    hl.exec_cmd("hyprsunset")
end);
