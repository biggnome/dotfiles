" Navigation
map <Down>          gj
map <Up>            gk

nnoremap <C-Right>  e
nnoremap <C-h>      b
nnoremap <C-l>      e
vnoremap <C-Left>   b
vnoremap <C-Right>  e
vnoremap <C-h>      b
vnoremap <C-l>      e

" Wrangle panes
nnoremap <C-M-Left>     :vertical resize -2<CR>
nnoremap <C-M-Down>     :resize +2<CR>
nnoremap <C-M-Up>       :resize -2<CR>
nnoremap <C-M-Right>    :vertical resize +2<CR>
nnoremap <C-M-h>        :vertical resize -2<CR>
nnoremap <C-M-j>        :resize +2<CR>
nnoremap <C-M-k>        :resize -2<CR>
nnoremap <C-M-l>        :vertical resize +2<CR>

nmap <M-Left>     <C-w>h
nmap <M-Down>     <C-w>j
nmap <M-Up>       <C-w>k
nmap <M-Right>    <C-w>l
nmap <M-h>        <C-w>h
nmap <M-j>        <C-w>j
nmap <M-k>        <C-w>k
nmap <M-l>        <C-w>l

map <M-s>               <C-w>s
map <M-S-s>             <C-w>v

" Previous/next/close buffer
nnoremap <M-PageUp>     :bp<CR>
nnoremap <M-PageDown>   :bn<CR>
nnoremap <M-w>          :bd<CR>

" Normal-person copy, cut, paste, save, quit, undo/redo
nnoremap <M-v>  v<C-v>          " remap visual block mode
vnoremap <M-v>  <C-v>
vnoremap <C-c>  y               " Copy
nnoremap <Y>    y$              " Copy to EOL
vmap <C-x>      x               " Cut
nmap <C-v>      P               " Paste
imap <C-v>      <esc>Pi
vmap <C-v>      p
nmap <C-s>      :w<CR>          " Save
imap <C-s>      <esc>:w<CR>
nmap <C-M-q>    :q!<CR>         " Exit w/o save
imap <C-M-q>    <esc>:q!<CR>
nmap <C-q>      :q<CR>          " Quit
imap <C-q>      <esc>:q<CR>
noremap <C-z>   u               " Undo
inoremap <C-z>  <esc>u
noremap <C-y>   <C-r>           " Redo
inoremap <C-y>  <esc><C-r>
map <C-S-z>     <esc><C-r>

" Move line(s) up/down
nmap <M-S-Up>   :m -2<CR>
nmap <M-S-Down> :m +1<CR>
nmap <M-S-k>    :m -2<CR>
nmap <M-S-j>    :m +1<CR>

vmap <M-S-Up>   :m '<-2<CR>
vmap <M-S-Down> :m '>+1<CR>
vmap <M-S-k>    :m '<-2<CR>
vmap <M-S-j>    :m '>+1<CR>

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
inoremap <M-'>      ’
inoremap <M-[>      ‘
inoremap <M-]>      ’
inoremap <M-S-[>    “
inoremap <M-S-]>    ”

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
