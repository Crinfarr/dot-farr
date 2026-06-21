HYPR_CONF_DIR = "";

-- monitor config
require(HYPR_CONF_DIR .. "monitors")
-- program config + startup
require(HYPR_CONF_DIR .. "programs")
-- general env config
require(HYPR_CONF_DIR .. "style/theme")
require(HYPR_CONF_DIR .. "env")
-- permission config
require(HYPR_CONF_DIR .. "permissions")
-- window config
require(HYPR_CONF_DIR .. "style/tiling")
require(HYPR_CONF_DIR .. "style/decor")
require(HYPR_CONF_DIR .. "style/animation")
require(HYPR_CONF_DIR .. "rules/window-rules")
--layout config
require(HYPR_CONF_DIR .. "rules/layout/dwindle")
require(HYPR_CONF_DIR .. "rules/layout/master")
require(HYPR_CONF_DIR .. "rules/layout/scrolling")
require(HYPR_CONF_DIR .. "rules/layout/monocle")
--input config
require(HYPR_CONF_DIR .. "input/keyboard")
require(HYPR_CONF_DIR .. "input/mouse")

hl.config({
    general = {
        allow_tearing = true
    },
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo = true
    },
    binds = {
        movefocus_cycles_groupfirst = true
    }
})
