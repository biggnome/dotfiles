" Navigation
map <Down>          gj
map <Up>            gk
map <C-Left>        <C-w>h
map <C-Down>        <C-w>j
map <C-Up>          <C-w>k
map <C-Right>       <C-w>l
map <C-h>           <C-w>h
map <C-j>           <C-w>j
map <C-k>           <C-w>k
map <C-l>           <C-w>l
nnoremap <C-Left>   b
nnoremap <C-Right>  e
nnoremap <C-h>      b
nnoremap <C-l>      e
vnoremap <C-Left>   b
vnoremap <C-Right>  e
vnoremap <C-h>      b
vnoremap <C-l>      e

" Wrangle panes
nnoremap <M-S-Left>   :vertical resize -2<CR>
nnoremap <M-S-Down>   :resize +2<CR>
nnoremap <M-S-Up>     :resize -2<CR>
nnoremap <M-S-Right>  :vertical resize +2<CR>
nnoremap <M-S-h>      :vertical resize -2<CR>
nnoremap <M-S-j>      :resize +2<CR>
nnoremap <M-S-k>      :resize -2<CR>
nnoremap <M-S-l>      :vertical resize +2<CR>

map <M-s>       <C-w>s
map <M-S-s>     <C-w>v

" Previous/next/close buffer
nnoremap <M-PageUp>     :bp<CR>
nnoremap <M-PageDown>   :bn<CR>
nnoremap <M-w>          :bd<CR>

" Normal-person copy, cut, paste, save, quit, undo/redo
nmap <M-v>      v<C-v>          " remap visual block mode
vmap <M-v>      <C-v>
vmap <C-c>      y               " Copy
nnoremap <Y>    y$              " Copy to EOL
vmap <C-x>      x               " Cut
nmap <C-v>      P               " Paste
imap <C-v>      <esc>Pi
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

" Indent/de-indent
nmap >>             <Nop>
nmap <<             <Nop>
vmap >>             <Nop>
vmap <<             <Nop>
nnoremap <Tab>      >>
nnoremap <S-Tab>    <<
vnoremap <Tab>      >><Esc>gv
vnoremap <S-Tab>    <<<Esc>gv

" Open Vifm browser
map <C-o> :Vifm<CR>

" Toggle word wrap
map <M-z>       <esc>:set wrap! lbr<CR>

" Save & compile SILE document
imap <C-b>       <esc>:w<CR>:!sile "%"<CR>
nmap <C-b>       :w<CR>:!sile "%"<CR>
" Just enter a freakin' slash and start typing 'cause I'm a bonehead
nmap \          i\

" Limelight
nmap @          :Limelight!!0.5<CR>

" Toggle search highlight
nnoremap <M-/> :set hlsearch!<CR>

" Paired bracket stuff
inoremap <> <><Left>
inoremap () ()<Left>
inoremap {} {}<Left>
inoremap [] []<Left>
inoremap "" ""<Left>
inoremap '' ''<Left>
inoremap `` ``<Left>

" Curly quotes (WIP)
inoremap <M-'>  ’
inoremap <M-[>  ‘
inoremap <M-]>  ’
inoremap <M-S-[>  “
inoremap <M-S-]>  ”

" Commenting blocks of code.
augroup commenting_blocks_of_code
  autocmd!
  autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
  autocmd FileType sh,ruby,python   let b:comment_leader = '# '
  autocmd FileType dosini           let b:comment_leader = '; '
  autocmd FileType conf,fstab       let b:comment_leader = '# '
  autocmd FileType tex,sile         let b:comment_leader = '% '
  autocmd FileType mail             let b:comment_leader = '> '
  autocmd FileType vim              let b:comment_leader = '" '
augroup END
noremap <C-/>   :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <C-S-/> :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
