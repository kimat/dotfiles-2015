" -- CODE STYLING --
set tabstop=2             " tab spacing
set softtabstop=2         " unify
set shiftwidth=2          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set autoindent            " auto-indent
set nowrap                " don't wrap text

" -- Colors --
set t_Co=256              " 256-color use color numbers with cterm..
syntax enable
" colorscheme elflord
" colorscheme desert
colorscheme Tomorrow-Night-Eighties
" colorscheme railscasts 
set background=dark

" -- bottom bar --
set laststatus=2          " white status bar

" -- Line Numbs --
set relativenumber         " or set number   for line numbers
hi LineNr ctermfg=darkgray ctermbg=none

" -- cursor line --
set cursorline
" hi CursorLine ctermbg=235 ctermfg=none cterm=none 
" cterm=underline 