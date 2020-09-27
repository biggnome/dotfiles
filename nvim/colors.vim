if has('nvim') || has('termguicolors')
  set termguicolors
  "let ayucolor="light"
  let ayucolor="mirage"
  "let ayucolor="dark"
endif

if filereadable(expand("~/.vimrc_background"))
"  let base16colorspace=256          " Remove this line if not necessary
  source ~/.vimrc_background
else
  colorscheme ayu
endif

let g:lightline = { 'colorscheme': 'ayu'}
