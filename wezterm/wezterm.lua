local term = require("wezterm")
local config = {}

config.color_scheme = 'Monokai Dimmed'
config.window_background_opacity = 0.84


config.keys = {
    -- This will create a new split and run your default program inside it
    {
        key = 'n',
        mods = 'CTRL|ALT',
        action = term.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
}

return config
