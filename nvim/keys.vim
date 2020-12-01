" Navigation
map <C-Left>    <C-w>h
map <C-Down>    <C-w>j
map <C-Up>      <C-w>k
map <C-Right>   <C-w>l
map <C-h>       <C-w>h
map <C-j>       <C-w>j
map <C-k>       <C-w>k
map <C-l>       <C-w>l

" Wrangle panes
nnoremap <M-Left>   :vertical resize -2<CR>
nnoremap <M-Down>   :resize -2<CR>
nnoremap <M-Up>     :resize +2<CR>
nnoremap <M-Right>  :vertical resize +2<CR>
nnoremap <M-h>      :vertical resize -2<CR>
nnoremap <M-j>      :resize -2<CR>
nnoremap <M-k>      :resize +2<CR>
nnoremap <M-l>      :vertical resize +2<CR>

map <M-s>		<C-w>s
map <M-S>		<C-w>v

" Normal-person copy, cut, paste, save, quit, undo/redo
vmap <C-c>      y
vmap <C-x>      x
imap <C-v>      <esc>p
nnoremap <C-v>  <esc>p
nnoremap <C-s>  :w<CR>
nnoremap <C-q>  :wq!<CR>
map <C-z>       <esc>u
map <C-y>       <esc><C-r>

" Open Vifm browser
map <C-o> :Vifm<CR>
