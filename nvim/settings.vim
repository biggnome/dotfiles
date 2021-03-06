" General settings
set cursorline                              " hilight cursor line
set more                                    " ---more--- like less
set mouse=a                                 " mouse navigation everywhere
set nobackup                                " no auto backups
set number                                  " line numbers
" set relativenumber                          " relative line number
set scrolloff=3                             " lines above/below cursor
set showcmd                                 " show cmds being typed
set splitbelow splitright
set t_Co=256                                " 256 color support
set title                                   " window title
set wildignore=*.a,*.o,*.so,*.pyc,*.jpg,
    \*.jpeg,*.png,*.gif,*.pdf,*.git,
    \*.swp,*.swo                            " tab completion ignores
set wildmenu                                " better auto complete
set wildmode=longest,list,full              " bash-like auto complete
syntax on

" Text formatting
set autoindent                              " preserve indentation
set backspace=indent,eol,start              " smart backspace
set cinkeys-=0#                             " don't force # indentation
set expandtab                               " no real tabs
set ignorecase                              " by default ignore case
set nrformats+=alpha                        " incr/decr letters C-a/-x
set nowrap                                  " disable soft wrapping
set shiftround                              " be clever with tabs
set shiftwidth=4                            " default 8
set smartcase                               " sensitive with uppercase
set smarttab                                " tab to 0,4,8 etc.
set softtabstop=4                           " 'tab' feels like <tab>
set tabstop=4                               " replace <TAB> w/4 spaces
autocmd BufWritePre * %s/\s\+$//e           " remove trailing spaces
" autocmd InsertEnter * norm zz               " center screen upon insert mode

" Only auto-comment newline for block comments
augroup AutoBlockComment
    autocmd! FileType c,cpp setlocal comments -=:// comments +=f://
augroup END

" netrw odds 'n ends
let g:netrw_browse_split = 4
let g:netrw_winsize = 33

" Scrollbar settings
let g:scroll_bar_update_time=30
let g:scroll_bar_thumb_char = '█'
let g:scroll_bar_line_char = '│'
hi Scrollbar_Thumb guibg=NONE guifg=#3D4751 ctermbg=NONE ctermfg=8
hi Scrollbar_Line guibg=NONE guifg=#3D4751 ctermbg=NONE ctermfg=8
" For nvim 5+
augroup ScrollbarInit
  autocmd!
  autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
  autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
  autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
augroup end

