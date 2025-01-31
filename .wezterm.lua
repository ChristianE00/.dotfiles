local wezterm = require 'wezterm'

local config = {}

-- Example settings
config.tab_max_width = 200
config.default_prog = {"powershell.exe"}
config.window_background_opacity = 0.92
config.text_background_opacity = 0.9
config.cursor_blink_rate = 200
config.use_fancy_tab_bar = false
config.enable_tab_bar = true
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.enable_wayland = true
config.initial_cols = 120
config.initial_rows = 30
config.scrollback_lines = 10000
config.min_scroll_bar_height = '2cell'
config.colors = {
  scrollbar_thumb = 'white',
}
local dimmer = { brightness = 0.1 }

-- Background image
config.window_background_image = "C:\\Users\\p1273\\OneDrive\\Pictures\\purple.jpg"
config.window_background_image_hsb = {
    -- Adjust the hue, saturation, and brightness
    hue = 1.11,
    saturation = 0.8,
    brightness = 0.05,
}
config.keys = {
    {key="D", mods="CTRL|SHIFT", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
    {key="D", mods="CTRL|SHIFT|ALT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
-- Add this inside your existing configuration, within the `keys` table
    {key="X", mods="CTRL|SHIFT", action=wezterm.action{CloseCurrentPane={confirm=true}}},
 -- Custom key binding for moving focus to the left pane
  {key="LeftArrow", mods="ALT", action=wezterm.action{ActivatePaneDirection="Left"}},
  -- Custom key binding for moving focus to the right pane
  {key="RightArrow", mods="ALT", action=wezterm.action{ActivatePaneDirection="Right"}},
  -- Custom key binding for moving focus to the pane above
  {key="UpArrow", mods="ALT", action=wezterm.action{ActivatePaneDirection="Up"}},
  -- Custom key binding for moving focus to the pane below
  {key="DownArrow", mods="ALT", action=wezterm.action{ActivatePaneDirection="Down"}},

}




-- Theme and color settings
config.color_scheme = "Custom Dark Neon"
config.colors = {
  foreground = "#E0E0E0",
  -- background = "#1A1C23",
  cursor_bg = "#FF00FF",
  -- Other color settings...
  tab_bar = {
    background = "#0B0022",
    -- Tab bar customization...
  },
}


-- Font
config.font = wezterm.font_with_fallback({
    "JetBrains Mono",
    "Arial",
    {
        family="FontAwesome",
        harfbuzz_features={"calt=0", "clig=0", "liga=0"},
    },
})




return config
