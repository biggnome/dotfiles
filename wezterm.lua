-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Tokyo Night Storm'
config.font = wezterm.font_with_fallback {
    'Monaspace Argon',
    'JetBrainsMono Nerd Font'
}
config.font_size = 12
config.harfbuzz_features = {
    'calt=1',
    'liga=0',
    'dlig=0',
    'ss01=0',
    'ss02=1',
    'ss03=1',
    'ss04=1',
    'ss05=1',
    'ss06=0',
    'ss07=1',
    'ss08=1',
}
config.hide_tab_bar_if_only_one_tab = true
config.initial_cols = 120
config.initial_rows = 36
config.skip_close_confirmation_for_processes_named = {
    'bash',
    'sh',
    'zsh',
    'fish',
    'tmux',
    'nu',
    'cmd.exe',
    'pwsh.exe',
    'powershell.exe',
}
config.use_fancy_tab_bar = true
config.window_background_opacity = 0.925

-- color/display stuff
config.window_frame = {
  -- The font used in the tab bar.
  -- Roboto Bold is the default; this font is bundled
  -- with wezterm.
  -- Whatever font is selected here, it will have the
  -- main font setting appended to it to pick up any
  -- fallback fonts you may have used there.
  font = wezterm.font { family = 'Monaspace Argon', weight="Bold" },

  -- The size of the font in the tab bar.
  -- Default to 10.0 on Windows but 12.0 on other systems
  font_size = 11,

  -- The overall background color of the tab bar when
  -- the window is focused
  -- active_titlebar_bg = '#292e42',

  -- The overall background color of the tab bar when
  -- the window is not focused
  -- inactive_titlebar_bg = '#24283b',
}
config.window_padding = {
    left    = 0,
    right   = 0,
    top     = 0,
    bottom  = 0,
}
config.colors = {
  tab_bar = {
    -- The color of the strip that goes along the top of the window
    -- (does not apply when fancy tab bar is in use)
    background = '#2e3c64',

    -- The active tab is the one that has focus in the window
    active_tab = {
      -- The color of the background area for the tab
      bg_color = '#7aa2f7',
      -- The color of the text for the tab
      fg_color = '#1f2335',

      -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
      -- label shown for this tab.
      -- The default is "Normal"
      intensity = 'Normal',

      -- Specify whether you want "None", "Single" or "Double" underline for
      -- label shown for this tab.
      -- The default is "None"
      underline = 'None',

      -- Specify whether you want the text to be italic (true) or not (false)
      -- for this tab.  The default is false.
      italic = false,

      -- Specify whether you want the text to be rendered with strikethrough (true)
      -- or not for this tab.  The default is false.
      strikethrough = false,
    },

    -- Inactive tabs are the tabs that do not have focus
    inactive_tab = {
      bg_color = '#292e42',
      fg_color = '#545c7e',

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `inactive_tab`.
    },

    -- You can configure some alternate styling when the mouse pointer
    -- moves over inactive tabs
    inactive_tab_hover = {
      bg_color = '#292e42',
      fg_color = '#7aa2f7',
      italic = true,

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `inactive_tab_hover`.
    },

    -- The new tab button that let you create new tabs
    new_tab = {
      bg_color = '#24283b',
      fg_color = '#7aa2f7',

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `new_tab`.
    },

    -- You can configure some alternate styling when the mouse pointer
    -- moves over the new tab button
    new_tab_hover = {
      bg_color = '#24283b',
      fg_color = '#7aa2f7',
      intensity = "Bold",

      -- The same options that were listed under the `active_tab` section above
      -- can also be used for `new_tab_hover`.
    },
  },
}
-- and finally, return the configuration to wezterm
return config
