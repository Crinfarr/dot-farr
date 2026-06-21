----curves
-- bezier --
hl.curve("overshoot-out", { type = "bezier", points = { { 0.34, 1.56 }, { 0.64, 1 } } })
hl.curve("overshoot-in", { type = "bezier", points = { { 0.36, 0 }, { 0.66, -0.56 } } })
hl.curve("overshoot", { type = "bezier", points = { { 0.68, -0.6 }, { 0.32, 1.6 } } })
hl.curve("cubic", { type = "bezier", points = { { 0.65, 0 }, { 0.35, 1 } } })
hl.curve("cubic-out", { type = "bezier", points = { { 0.33, 1 }, { 0.68, 1 } } })
hl.curve("cubic-in", { type = "bezier", points = { { 0.32, 0 }, { 0.67, 1 } } })
-- spring --
hl.curve("rubber", { type = "spring", mass = 1, stiffness = 70, dampening = 10 })

-- default to none
-- hl.animation({
--     leaf = "global",
--     enabled = true
-- })
hl.animation({
    leaf = "windowsMove",
    style = "slide",
    enabled = true,
    speed = 5,
    bezier = "overshoot"
})
hl.animation({
    leaf = "windowsIn",
    style = "popin",
    enabled = true,
    speed = 5,
    bezier = "overshoot-out"
})
hl.animation({
    leaf = "windowsOut",
    style = "popin",
    enabled = true,
    speed = 5,
    bezier = "overshoot-in"
})
hl.animation({
    leaf = "specialWorkspace",
    style = "fade",
    enabled = true,
    speed = 3,
    bezier = "cubic"
})
hl.animation({
    leaf = "workspaces",
    style = "slide",
    enabled = true,
    speed = 5,
    bezier = "cubic"
})
hl.animation({
    leaf = "layers",
    style = "popin",
    enabled = true,
    speed = 3,
    bezier = "cubic"
})
