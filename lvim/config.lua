-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny


lvim.plugins = {
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
}

-- Settings/plugin stuff
require("scrollbar").setup()

-- Keybindings
-- Toggle word wrap
lvim.keys.normal_mode["<M-z>"] = "<esc>:set wrap! lbr<CR>"
lvim.keys.visual_mode["<M-z>"] = "<esc>:set wrap! lbr<CR>"
lvim.keys.insert_mode["<M-z>"] = "<esc>:set wrap! lbr<CR>"

-- Copy to EOL
lvim.keys.normal_mode["<Shift-y>"] = "y$"

-- Toggle search highlight
lvim.keys.normal_mode["<M-/>"] = ":set hlsearch!<CR>"

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

