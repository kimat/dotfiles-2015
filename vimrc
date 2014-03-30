set nocompatible          " get rid of Vi compatibility mode. SET FIRST!

" VIM STYLING
set t_Co=256              " enable 256-color mode.
set number                " show line numbers
set laststatus=2          " white status bar
set ruler                 " Always show info along bottom.
set background=dark

" CODE STYLING
colorscheme elflord
syntax enable             " enable syntax highlighting (previously syntax on).
set tabstop=2             " tab spacing
set softtabstop=2         " unify
set shiftwidth=2          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
" set smarttab              " use tabs at the start of a line, spaces elsewhere
filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
filetype indent on        " activates indenting for files
set autoindent            " auto-indent
set nowrap                " don't wrap text

" SEARCH OPTIONS
set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.




