let $theme="codedark"                    " Hey dingus! Default colorscheme goes here!

if has('nvim') || has('termguicolors')
  set termguicolors
  "let ayucolor="light"
  let ayucolor="mirage"
  "let ayucolor="dark"
endif

if filereadable(expand("~/.vimrc_background"))
  source ~/.vimrc_background
else
    colorscheme $theme              " Set colorscheme absent alacritty config
endif

" If you don't like many colors and prefer the conservative style of the standard Visual Studio
let g:codedark_conservative=0
" Activates italicized comments (make sure your terminal supports italics)
let g:codedark_italics=1
" Make the background transparent
let g:codedark_transparent=1
