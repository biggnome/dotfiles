" Navigation
map <Down>      gj
map <Up>        gk
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
nnoremap <M-Down>   :resize +2<CR>
nnoremap <M-Up>     :resize -2<CR>
nnoremap <M-Right>  :vertical resize +2<CR>
nnoremap <M-h>      :vertical resize -2<CR>
nnoremap <M-j>      :resize +2<CR>
nnoremap <M-k>      :resize -2<CR>
nnoremap <M-l>      :vertical resize +2<CR>

map <M-s>       <C-w>s
map <M-S-s>     <C-w>v

" Previous/next/close buffer
nnoremap <M-PageUp>     :bp<CR>
nnoremap <M-PageDown>   :bn<CR>
nnoremap <M-w>          :bd<CR>

" Normal-person copy, cut, paste, save, quit, undo/redo
nmap <M-v>      v<C-v>
vmap <C-c>      y               " Copy
vmap <C-x>      x               " Cut
nmap <C-v>      p               " Paste
imap <C-v>      <esc>p
nmap <C-s>      :w<CR>          " Save
imap <C-s>      <esc>:w<CR>
"nmap <C-S-q>    :wq!<CR>        " Save 'n quit
"imap <C-S-q>    <esc>:wq!<CR>
nmap <C-q>      :q<CR>          " Quit
imap <C-q>      <esc>:q<CR>
noremap <C-z>   u               " Undo
inoremap <C-z>  <esc>u
noremap <C-y>   <C-r>           " Redo
inoremap <C-y>  <esc><C-r>
map <C-S-z>     <esc><C-r>

" Move line(s) up/down
nmap <M-Up>   :m -2<CR>
nmap <M-Down> :m +1<CR>
nmap <M-k>    :m -2<CR>
nmap <M-j>    :m +1<CR>

vmap <M-Up>   :m '<-2<CR>
vmap <M-Down> :m '>+1<CR>
vmap <M-k>    :m '<-2<CR>
vmap <M-j>    :m '>+1<CR>

" Open Vifm browser
map <C-o> :Vifm<CR>

" Toggle word wrap
map <M-z>       <esc>:set wrap! lbr<CR>

" Save & compile SILE document
imap <C-b>       <esc>:w<CR>:!sile %<CR>
nmap <C-b>       :w<CR>:!sile %<CR>
" Just enter a freakin' slash and start typing 'cause I'm a bonehead
nmap \          i\

" Limelight
nmap @          :Limelight!!0.5<CR>

" Toggle search highlight
nnoremap <M-/> :set hlsearch!<CR>
