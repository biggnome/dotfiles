-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.plugins = {
    -- OneDark theme
    { "navarasu/onedark.nvim" },
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
    -- Sile syntax highlighting
    { "sile-typesetter/vim-sile" },
    -- sxhkdrc syntax highlighting
    { "baskerville/vim-sxhkdrc" },
    -- Tokyo Night theme
    { "folke/tokyonight.nvim" },
}

-- Settings/plugin stuff
local components = require("lvim.core.lualine.components")
lvim.builtin.lualine.sections.lualine_a = { components.mode }
lvim.builtin.lualine.sections.lualine_b = {
    { 'mode', fmt = function(str) return str:sub(1,3) end }
}
lvim.builtin.lualine.sections.lualine_x = { "encoding", "filetype" }
-- require('onedark').load()
lvim.colorscheme = "tokyonight-moon"
require("scrollbar").setup()
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.spell = true                            -- spellhceck!
vim.opt.spelllang = "en_us"

-- Keybindings
-- Toggle word wrap
lvim.keys.normal_mode["<M-z>"] = "<esc>:set wrap! lbr<CR>"
lvim.keys.visual_mode["<M-z>"] = "<esc>:set wrap! lbr<CR>"
lvim.keys.insert_mode["<M-z>"] = "<esc>:set wrap! lbr<CR>"

-- Copy to EOL
lvim.keys.normal_mode["<Shift-y>"] = "y$"

-- Move line(s) up/down
-- lvim.keys.visual_mode["M-Down"] = "<M-j>"
-- lvim.keys.normal_mode["M-Down"] = "<M-j>"
-- lvim.keys.normal_mode["M-Up"] = "<M-k>"
-- lvim.keys.visual_mode["M-Up"] = "<M-k>"

-- Curly quotes (WIP)
lvim.keys.insert_mode["<M-'>"] = "’"
lvim.keys.insert_mode["<M-[>"] = "‘"
lvim.keys.insert_mode["<M-]>"] = "’"
lvim.keys.insert_mode["<M-S-[>"] = "“"
lvim.keys.insert_mode["<M-S-]>"] = "”"

-- Save & compile SILE document
lvim.keys.normal_mode["<C-b>"] = ":w<CR>:!sile '%'<CR>"

