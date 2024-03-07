local term = require("wezterm")
local act = term.action
local config = {}

config.color_scheme = 'Monokai Dimmed'
config.window_background_opacity = 0.84
config.window_frame = {
    font_size = 13.0
}

config.font_size = 12.0

config.keys = {
    -- This will create a new split and run your default program inside it
    {
        key = 'n',
        mods = 'CTRL|ALT',
        action = term.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    -- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
    { key = "LeftArrow",  mods = "OPT", action = term.action { SendString = "\x1bb" } },
    -- Make Option-Right equivalent to Alt-f; forward-word
    { key = "RightArrow", mods = "OPT", action = term.action { SendString = "\x1bf" } },
}

return config
