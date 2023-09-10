-- General settings
vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }             -- use system clipboard
vim.opt.cursorline = true                       -- hilight cursor line
vim.opt.hidden = true                           -- keep buffers open without having to save
vim.opt.list = true                             -- show various hidden chars
vim.opt.listchars = {
        tab = "⯈ ",
        trail = "⋅",
        nbsp = "+"
}
vim.opt.more = true                             -- ---more--- like less
vim.opt.mouse = "a"                             -- mouse navigation everywhere
vim.opt.backup = false                          -- no auto backups
vim.opt.number = true                           -- line numbers
vim.opt.relativenumber = false                  -- relative line number
vim.opt.scrolloff = 3                           -- lines above/below cursor
vim.opt.showcmd = true                          -- show cmds being typed
vim.opt.showmode = true
vim.opt.spell = true                            -- spellhceck!
vim.opt.spelllang = "en_us"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.title = true                            -- window title
vim.opt.wildignore = {                          -- tab completion ignores
  "*.a",
  "*.gif",
  "*.git",
  "*.jpeg",
  "*.jpg",
  "*.o",
  "*.pdf",
  "*.png",
  "*.pyc",
  "*.so",
  "*.swo",
  "*.swp",
  "*.toc"
  }
vim.opt.wildmenu = true                         -- better auto complete
vim.opt.wildmode = {"longest", "list", "full"}  -- bash-like auto complete
vim.cmd[[syntax on]]


-- Text formatting
vim.opt.autoindent = true                       -- preserve indentation
vim.opt.backspace = {"indent", "eol", "start"}  -- smart backspace
vim.opt.cinkeys = vim.opt.cinkeys - "0#"        -- don't force # indentation
vim.opt.expandtab = true                        -- no real tabs
-- ...various filetype-awareness stuff
vim.cmd[[
filetype on
filetype plugin on
filetype indent on
]]
vim.opt.ignorecase = true                       -- by default ignore case
vim.opt.nrformats = vim.opt.nrformats + "alpha" -- incr/decr letters C-a/-x
vim.opt.wrap = false                            -- disable soft wrapping
vim.opt.shiftround = false                      -- be clever with tabs
vim.opt.shiftwidth = 4                          -- default 8
vim.opt.smartcase = true                        -- sensitive with uppercase
vim.opt.smarttab = true                         -- tab to 0,4,8 etc.
vim.opt.softtabstop = 4                         -- 'tab' feels like <tab>
vim.opt.tabstop = 4                             -- replace <TAB> w/4 spaces
-- ...remove trailing spaces
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})


-- netrw odds 'n ends
vim.g["netrw_browse_split"] = 2
vim.g["netrw_winsize"] = 33

--[[
-- Only auto-comment newline for block comments
augroup AutoBlockComment
    autocmd! FileType c,cpp setlocal comments -=:// comments +=f://
augroup END


" Forced syntax coloring
au BufReadPost *.ny vim.opt.syntax=lisp



--]]

-- Markdown stuff
vim.opt.conceallevel = 2

--[[
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
--]]

-- Plugin-specific
require('lualine').setup()
require('onedark').load()
require("scrollbar").setup()

