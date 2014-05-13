set nocompatible          " get rid of Vi compatibility mode. SET FIRST!  filetype off
set clipboard=unnamed

" =========  VUNDLE  =========
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
source ~/.vim/vundles.vim
" filetype plugin indent on
" filetype indent on
" au BufNewFile,BufRead .*.md  setf markdown

" ========= FZF =========
set rtp+=~/.fzf

" ========= LEADER ========= 
" set ssop-=options    " do not store global and local values in a session
" set ssop-=folds      " do not store folds
let mapleader=" "
nnoremap <Leader>p :CtrlP<CR>
" Reload Vimrc
nnoremap <silent> <Leader>r <Esc>:w<CR>:mksession! ~/.vim/tmp.vim<CR>:so ~/.vimrc<CR>:source ~/.vim/tmp.vim<CR> 
" nnoremap <silent> <Leader>r <Esc>:w<CR>:so ~/.vimrc<CR>

" ==========  TABS MANAGEMENT =========
source ~/.vim/tabs.vim

" ========= STYLING ========= 
source ~/.vim/styling.vim

" ========= PERSO ========= 
source ~/.vim/perso.vim

" ========= SEARCH OPTIONS ========= 
set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.

" ========= BEGINNERS SETTINGS ========= 
set backspace=indent,eol,start  " Allow backspace in all circumstance

" ========= INSERT SINGLE CHARS(S) =========
" http://vim.wikia.com/wiki/Insert_a_single_character
" function! RepeatChar(char, count)
"   return repeat(a:char, a:count)
" endfunction
" nnoremap s :<C-U>exec "normal i".RepeatChar(nr2char(getchar()), v:count1)<CR>
" nnoremap S :<C-U>exec "normal a".RepeatChar(nr2char(getchar()), v:count1)<CR>

" =========  FILE TYPE  =========
syntax on
filetype plugin indent on
" -- utf 8 --
set encoding=utf-8
set fileencodings=utf-8
au BufRead,BufNewFile *.md set filetype=markdown
