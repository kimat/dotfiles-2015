set nocompatible          " get rid of Vi compatibility mode. SET FIRST!

" VIM SETTINGS
set t_Co=256              " 256-color
set number                " line numbers
set laststatus=2          " white status bar
set ruler                 " Always show info along bottom.
set background=dark
set scrolloff=5           " Never scoll down too low
set history=1000        " Allow undo, remember last command with up



" BEGINNERS HELPERS
set backspace=indent,eol,start  " Allow backspace in all circumstance
set showcmd             " Update status line when selecting text
" set mouse=a             " Allow selection with the mouse in all mode

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


" UNBIND CONFLICTING KEYS WITH TMUX
:nmap <M-f> <nop>
:nmap <M-s> <nop>
:nmap <M-d> <nop>
:nmap <M-e> <nop>


" TABS MANAGEMENT
" [Working with tabs](http://vimcasts.org/episodes/working-with-tabs/)
:nmap <c-t> :tabedit
noremap <c-s> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
:nnoremap <silent> <c-f> :execute 'silent! tabmove ' . tabpagenr()<CR>


" Reload vimrc
:nmap <c-m-r> :so ~/.vimrc <CR>
:nmap <c-s-r> :so ~/.vimrc <CR>

" TODO Better escape key 



