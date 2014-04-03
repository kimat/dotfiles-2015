set nocompatible          " get rid of Vi compatibility mode. SET FIRST!
filetype on



" VIM SETTINGS

" -- shortcut to reload vimrc
" nnoremap <c-m-r> :so ~/.vimrc <CR>
:nnoremap <s-R> :so ~/.vimrc <CR>
 
" -- colors
set t_Co=256              " 256-color use color numbers with cterm..
syntax enable
colorscheme elflord       " or desert
set background=dark

" -- ligne numbers
set relativenumber         " or set number   for line numbers
hi LineNr ctermfg=darkgray ctermbg=black

" -- cursor line
set cursorline
" cterm=none if no underline line
hi CursorLine ctermbg=none ctermfg=none cterm=underline 

" -- bottom bar
set laststatus=2          " white status bar

" -- misc settings
tab all                   " Allows Open vim with multiple tabs
set ruler                 " Always show info along bottom.
set scrolloff=5           " Always leave at least 5 lines at bottom or top
set history=1000          " Allow undo, remember last command with up
" -- for beginners
set backspace=indent,eol,start  " Allow backspace in all circumstance
set showcmd             " Update status line when selecting text

" CODE STYLING
set tabstop=2             " tab spacing
set softtabstop=2         " unify
set shiftwidth=2          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
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
set showtabline=2          " Always show tab bar
" -- style the tab bar
hi TabLineFill ctermfg=black ctermfg=black
hi TabLine cterm=none ctermbg=black ctermfg=darkgray
hi TabLineSel ctermbg=black ctermfg=magenta cterm=none " underline 



" TODO Better escape key
" nnoremap <Esc> :
