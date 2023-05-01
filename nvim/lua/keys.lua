vim.g.mapleader = " "

-- Navigation
vim.keymap.set({"n", "v"}, "<Down>", "gj")
vim.keymap.set({"n", "v"}, "<Up>", "gk")
vim.keymap.set({"n", "v"}, "<C-Right>" or "<C-l>", "e")
vim.keymap.set({"n", "v"}, "<C-Left>" or "<C-h>", "b")


-- Wrangle panes
-- ...Resize
vim.keymap.set("n", "<C-M-Left>" or "<C-M-h>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-M-Down>" or "C-M-j", ":resize +2<CR>")
vim.keymap.set("n", "<C-M-Up>" or "<C-M-k>", ":resize -2<CR>")
vim.keymap.set("n", "<C-M-Right>" or "<C-M-l>", ":vertical resize +2<CR>")
-- ...Navigate
vim.keymap.set("n", "<leader><Left>" or "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader><Down>" or "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader><Up>" or "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader><Right>" or "<leader>l", "<C-w>l")
-- ...Split
vim.keymap.set({"n", "v"}, "<leader>s", "<C-w>s")
vim.keymap.set({"n", "v"}, "<leader>v", "<C-w>v")
-- ...Previous/next/close buffer
vim.keymap.set("n", "<M-PageUp>", ":bp<CR>")
vim.keymap.set("n", "<M-PageDown>", ":bn<CR>")
vim.keymap.set("n", "<M-w>", ":bp<CR>:bw #<CR>")


-- Fuzzy find
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


-- “Edit menu” type stuff
-- vim.keymap.set({"n", "v"}, "<M-v>", "v<C-v>") -- remap visual block mode
-- ...Copy
-- vim.keymap.set("v", "<C-c>", "y")
vim.keymap.set("n", "<Shift-y>", "y$") -- Copy to EOL
-- ...Cut
vim.keymap.set("v", "<C-x>", "x")
-- ...Paste
vim.keymap.set("n", "<C-v>", "P")
vim.keymap.set("i", "<C-v>", "<esc>Pi")
vim.keymap.set("v", "<C-v>", "p")
-- ...Save
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("i", "<C-s>", "<esc>:w<CR>a")
-- ...Quit
vim.keymap.set({"n", "i"}, "<C-q>", "<esc>:q<CR>")
vim.keymap.set({"n", "i"}, "<C-M-q>", "<esc>:q!<CR>") -- Exit w/o save
-- ...Undo
vim.keymap.set({"n", "v"}, "<C-z>", "u")
vim.keymap.set("i", "<C-z>", "<esc>ua")
-- ...Redo
vim.keymap.set({"n", "v"}, "<C-y>", "<C-r>")
vim.keymap.set("i", "<C-y>", "<esc><C-r>a")
-- ...Select All
vim.keymap.set({"n", "v"}, "<C-a>", "<esc>gg<S-v>G")

-- Move line(s) up/down
vim.keymap.set("n", "<M-Up>" or "<M-k>", ":m -2<CR>")
vim.keymap.set("n", "<M-Down>" or "<M-j>", ":m +1<CR>")
vim.keymap.set("i", "<M-Up>" or "<M-k>", "<esc>:m -2<CR>a")
vim.keymap.set("i", "<M-Down>" or "<M-j>", "<esc>:m +1<CR>a")
vim.keymap.set("v", "<M-Up>" or "<M-k>", ":m '<-2<CR>")
vim.keymap.set("v", "<M-Down>" or "<M-j", ":m '>+1<CR>")


-- Indent/de-indent
vim.keymap.set({"n", "v"}, ">>", "<Nop>")
vim.keymap.set({"n", "v"}, "<<", "<Nop>")
vim.keymap.set("n", "<Tab>", ">>")
vim.keymap.set("v", "<S-Tab>", "<<")
vim.keymap.set("v", "<Tab>", ">><Esc>gv")
vim.keymap.set("v", "<S-Tab>", "<<<Esc>gv")


-- Open file browser
vim.keymap.set({"n", "i", "v"}, "<C-o>", "<esc>:Vifm<CR>")


-- Toggle word wrap
vim.keymap.set({"n", "i", "v"}, "<M-z>", "<esc>:set wrap! lbr<CR>")


-- Save & compile SILE document
vim.keymap.set({"i", "n"}, "<C-b>", "<esc>:w<CR>:!sile '%'<CR>")
-- Just enter a freakin' slash and start typing 'cause I'm a bonehead
-- vim.keymap.set("n", "\", "i\")


-- Toggle search highlight
vim.keymap.set("n", "<M-/>", ":set hlsearch!<CR>")


-- Paired bracket stuff
--[[
--vim.keymap.set("i", "<>", "<><Left>")
vim.keymap.set("i", "()", "()<Left>")
vim.keymap.set("i", "{}", "{}<Left>")
vim.keymap.set("i", "[]", "[]<Left>")
vim.keymap.set("i", '""', '""<Left>')
vim.keymap.set("i", "''", "''<Left>")
vim.keymap.set("i", "``", "``<Left>")
--]]
--

-- Curly quotes (WIP)
vim.keymap.set("i", "<M-'>", "’")
vim.keymap.set("i", "<M-[>", "‘")
vim.keymap.set("i", "<M-]>", "’")
vim.keymap.set("i", "<M-S-[>", "“")
vim.keymap.set("i", "<M-S-]>", "”")


-- Commenting blocks of code.
local augroup = vim.api.nvim_create_augroup('commenting_blocks_of_code', {clear = true})
vim.api.nvim_create_autocmd('FileType', {
  pattern = "c" or "cpp" or "java" or "scala",
  group = augroup,
  command = "let b:comment_leader = '// '"
})
vim.api.nvim_create_autocmd('FileType', {
  pattern = "conf" or "fstab" or "python" or "ruby" or "sh",
  group = augroup,
  command = "let b:comment_leader = '# '"
})
vim.api.nvim_create_autocmd('FileType', {
  pattern = "dosini",
  group = augroup,
  command = "let b:comment_leader = '; '"
})
vim.api.nvim_create_autocmd('FileType', {
  pattern = "lua",
  group = augroup,
  command = "let b:comment_leader = '-- '"
})
vim.api.nvim_create_autocmd('FileType', {
  pattern = "mail",
  group = augroup,
  command = "let b:comment_leader = '> '"
})
vim.api.nvim_create_autocmd('FileType', {
  pattern = "sile" or "tex",
  group = augroup,
  command = "let b:comment_leader = '% '"
})
vim.api.nvim_create_autocmd('FileType', {
  pattern = "vim",
  group = augroup,
  command = "let b:comment_leader = '\"'"
})
vim.keymap.set("n", "<C-/>",    ":<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'/')<CR>/<CR>:nohlsearch<CR>")
vim.cmd [[noremap <C-S-/> :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>]]


-- Quick PackerSync
vim.keymap.set("n", "<leader>ps", ":PackerSync<CR>")
