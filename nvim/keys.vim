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
vmap <C-c>      y               " Copy
vmap <C-x>      x               " Cut
nmap <C-v>      p               " Paste
imap <C-v>      <esc>p
nmap <C-s>      :w<CR>          " Save
imap <C-s>      <esc>:w<CR>
nmap <C-w>      :wq!<CR>        " Save 'n quit
imap <C-w>      <esc>:wq!<CR>
nmap <C-q>      :q<CR>          " Quit
imap <C-q>      <esc>:q<CR>
map <C-z>       <esc>u          " Undo
map <C-y>       <esc><C-r>      " Redo

" Open Vifm browser
map <C-o> :Vifm<CR>

" Toggle word wrap
map <M-z>       <esc>:set wrap!<CR>

" Save & compile SILE document
map <C-b>       <esc>:w<CR>:!sile %<CR>
