if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
" =============================================


" NeoBundle 'kien/ctrlp.vim'
" NeoBundle 'fisadev/vim-ctrlp-cmdpalette'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'godlygeek/tabular'
let g:markdown_fenced_languages = ['rb=ruby', 'ruby']



" =============================================
call neobundle#end()
filetype plugin indent on
NeoBundleCheck

