set nocompatible          " get rid of Vi compatibility mode. SET FIRST!  filetype off
set clipboard=unnamed

" =========  NEOBUNDLE  =========
source ~/.vim/neobundles.vim
filetype plugin indent on
set hidden

" ========= FZF =========
set rtp+=~/.fzf

" ========= BUFFERS =========
if v:version >= 700
  au BufLeave * let b:winview = winsaveview()
  au BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif
endif
" set ssop-=options    " do not store global and local values in a session
" set ssop-=folds      " do not store folds

" ==========  TABS MANAGEMENT =========
source ~/.vim/tabs.vim

" ========= STATUS BAR =========
set wildmode=full
set wildmenu

" ========= SWAP FILES =========
set dir=~/tmp

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
" -- utf 8 --
set encoding=utf-8
set fileencodings=utf-8
au BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead *.md  set ai formatoptions=tcroqn2 comments=n:> com=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,b:-
au BufRead,BufNewFile *.ahk set filetype=autohotkey
" autocmd BufRead,BufNewFile *.md setlocal spell
autocmd FileType gitcommit setlocal spell
" autocomplet based on spell file
set complete+=kspell

" ========= STYLING =========
source ~/.vim/styling.vim

" ========= PERSO =========
source ~/.vim/perso.vim

" source ~/.vim/test.vim
