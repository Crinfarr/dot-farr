hl.config({
    input = {
        follow_mouse = 1,
        sensitivity = 0,
        touchpad = {
            natural_scroll = false
        }
    },
    cursor = {
        persistent_warps = true
    }
})
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })
