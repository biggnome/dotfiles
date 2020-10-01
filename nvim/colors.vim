let $theme="ayu"                    " Hey dingus! Default colorscheme goes here!

if has('nvim') || has('termguicolors')
  set termguicolors
  "let ayucolor="light"
  let ayucolor="mirage"
  "let ayucolor="dark"
endif

if filereadable(expand("~/.vimrc_background"))
  source ~/.vimrc_background
else
    colorscheme $theme              " Set colorscheme absent alacritty confih
endif

let g:lightline = { 'colorscheme': $theme }
