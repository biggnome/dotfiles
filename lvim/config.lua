-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.plugins = {
    -- Hex color previews
    { "NvChad/nvim-colorizer.lua" },

    -- OneDark theme
    -- { "navarasu/onedark.nvim" },
    
    -- Scrollbar
    { "petertriho/nvim-scrollbar" },
    { "kevinhwang91/nvim-hlslens",
        config = function()
        -- require('hlslens').setup() is not required
        require("scrollbar.handlers.search").setup({
          -- hlslens config overrides
          override_lens = function() end,
        })
        end,
    },

    -- Decasify
    { "alerque/decasify" },

    -- Sile syntax highlighting
    { "sile-typesetter/vim-sile" },
    
    -- sxhkdrc syntax highlighting
    { "baskerville/vim-sxhkdrc" },
    
    -- Tokyo Night theme
    { "folke/tokyonight.nvim" },
}


-- ***************************
-- ** Settings/plugin stuff **
-- ***************************

local components = require("lvim.core.lualine.components")
lvim.builtin.lualine.sections.lualine_a = { components.mode }
lvim.builtin.lualine.sections.lualine_b = {
    { 'mode', fmt = function(str) return str:sub(1,3) end }
}
lvim.builtin.lualine.sections.lualine_x = { "encoding", "filetype" }
-- require('onedark').load()
require("colorizer").setup {
    user_default_options = {
        names = false,
        RRGGBBAA = true,
        css = true,
        css_fn = true,
        -- mode = "virtualtext",
    }
}
lvim.colorscheme = "tokyonight-moon"
require("scrollbar").setup()
-- lvim.transparent_window = true
lvim.autocommands = {
  {
    { "ColorScheme" },
    {
      pattern = "*",
      callback = function()
        -- change `Normal` to the group you want to change
        -- and `#ffffff` to the color you want
        -- see `:h nvim_set_hl` for more options
        vim.api.nvim_set_hl(0, "SpellBad", { fg = "LightRed", underline = true })
      end,
    },
  },
}

-- SILE comments
local ft = require('Comment.ft')
ft.sile = '%%s'

-- Show various hidden chars
vim.opt.list = true
vim.opt.listchars = {
        tab = "⯈ ",
        trail = "⋅",
        nbsp = "+",
        multispace = ".",
        leadmultispace = " "
}

-- Tabs/spacing
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

-- Spellhceck!
vim.opt.spell = true
vim.opt.spelllang = "en_us,en_gb,de,fr"

-- Markdown stuff
vim.opt.conceallevel = 2

-- System clipboard copy/paste
vim.g.clipboard = {
  copy = {
    ['+'] = 'wl-copy',
    ['*'] = 'wl-copy',
  },
  paste = {
    ['+'] = 'wl-paste',
    ['*'] = 'wl-paste',
  },
  cache_enabled = true,
}


-- *****************
-- ** Keybindings **
-- *****************

-- Saner navigation
lvim.keys.normal_mode["<Down>"] = "gj"
lvim.keys.normal_mode["j"] = "gj"
lvim.keys.normal_mode["<Up>"] = "gk"
lvim.keys.normal_mode["k"] = "gk"
lvim.keys.visual_mode["<Down>"] = "gj"
lvim.keys.visual_mode["j"] = "gj"
lvim.keys.visual_mode["<Up>"] = "gk"
lvim.keys.visual_mode["k"] = "gk"
lvim.keys.insert_mode["<Down>"] = "<esc>gja"
lvim.keys.insert_mode["<Up>"] = "<esc>gka"

-- Toggle word wrap
lvim.keys.normal_mode["<M-z>"] = "<esc>:set wrap! lbr<CR>"
lvim.keys.visual_mode["<M-z>"] = "<esc>:set wrap! lbr<CR>"
lvim.keys.insert_mode["<M-z>"] = "<esc>:set wrap! lbr<CR>"

-- Copy to EOL
lvim.keys.normal_mode["<Shift-y>"] = "y$"

-- "x" in Normal Mode & "d" deletes w/o copying
lvim.keys.normal_mode["x"] = "\"_x"
lvim.keys.normal_mode["d"] = "\"_d"
lvim.keys.visual_mode["d"] = "\"_d"
lvim.keys.normal_mode["<S-d>"] = "\"_<S-d>"
lvim.keys.visual_mode["<S-d>"] = "\"_<S-d>"

-- Move line(s) up/down
-- lvim.keys.visual_mode["M-Down"] = "<M-j>"
-- lvim.keys.normal_mode["M-Down"] = "<M-j>"
-- lvim.keys.normal_mode["M-Up"] = "<M-k>"
-- lvim.keys.visual_mode["M-Up"] = "<M-k>"

-- F5/F6 to find misspelled
lvim.keys.normal_mode["<F6>"] = "]s"
lvim.keys.normal_mode["<F5>"] = "[s"

-- F9 to sort
lvim.keys.visual_mode["<F9>"] = ":sort i<CR>"
lvim.keys.visual_mode["<S-F9>"] = ":sort! i<CR>"
lvim.keys.visual_mode["<F21>"] = ":sort! i<CR>"

-- Decasify
lvim.keys.visual_mode["<M-t>"] = ":Decasify<CR>"
lvim.keys.visual_mode["<M-T>"] = ":Decasify upper<CR>"

-- Curly quotes (WIP)
lvim.keys.insert_mode["<M-'>"] = "’"
lvim.keys.insert_mode["<M-[>"] = "‘"
lvim.keys.insert_mode["<M-]>"] = "’"
lvim.keys.insert_mode["<M-{>"] = "“"
lvim.keys.insert_mode["<M-}>"] = "”"

-- Save & compile SILE document
lvim.keys.normal_mode["<C-b>"] = ":w<CR>:!sile '%'<CR>"
lvim.keys.insert_mode["<C-b>"] = "<esc>:w<CR>:!sile '%'<CR>"

-- Lazyass backslash
lvim.keys.normal_mode["\\"] = "i\\"

-- Non-breaking space
lvim.keys.insert_mode["<S-Space>"] = " "
