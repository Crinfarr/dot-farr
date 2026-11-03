hl.workspace_rule({
    workspace = "special:scratch",
    gaps_out = 10,
})
hl.workspace_rule({
    workspace = "special:overlay_panel",
    no_shadow = true,
    no_border = true,
    animation = "slidevert"
})
-- Work monitors
if (GetHostname() == "apotech-null1") then
    hl.workspace_rule({
        workspace = "1",
        monitor = "desc:Hewlett Packard HP E222 CNK53312QV",
        default = true
    })
    hl.workspace_rule({
        workspace = "2",
        monitor = "desc:Hewlett Packard HP E222 CNK53312QC",
        default = true
    })
    hl.workspace_rule({
        workspace = "3",
        monitor = "desc:Hewlett Packard HP E222 CNK53312Q9",
        default = true
    })
end
if (GetHostname() == "apex-17") then
    -- Home monitors
    -- TODO add hostname filter for this too
    hl.workspace_rule({
        workspace = "1",
        monitor = "desc:Acer Technologies XV272U V3 A421056D43LIJ",
        default = true
    })
    hl.workspace_rule({
        workspace = "2",
        monitor = "desc:Acer Technologies XV272U V3 A421056D53LIJ",
        default = true
    })
end
