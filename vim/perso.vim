"" Encoding
set bomb
set ttyfast
set binary

" vnoremap < >gv
" vnoremap > <gv

"  ========= INDENTATION =========
" Reverse default indenting keys -> shift+key to unindent
"" Vmap for maintain Visual Mode after shifting > and <
noremap < >
noremap > <
vnoremap < >gv
vnoremap > <gv

set nopaste

" = HOW TO =
" :h CTRL-K
" :map <CTRL-P>
" set showcmd

let mapleader = "\<tab>"
map <Leader>p :CtrlP<CR>
map <Leader>f :call GoBuffer("next")<CR>
map <Leader>s :call GoBuffer("previous")<CR>
map <Leader>t :TagbarToggle<CR>
map <Leader>P :set paste<CR>
map <Leader>S :CtrlSpaceSaveWorkspace 
map <Leader>R :Rename 
map <Leader>, :CtrlSpaceTabLabel<CR>
map <Leader>X :wa!<CR>:CtrlSpaceSaveWorkspace<CR>:qa!<CR>
map <Leader>y :YRShow<CR>
noremap ù za
" nnoremap <silent> <Leader>r <Esc>:w<CR>:mksession! ~/.vim/tmp.vim<CR>:so ~/.vimrc<CR>:source ~/.vim/tmp.vim<CR>
" nnoremap <silent> <Leader>r <Esc>:w<CR>:so ~/.vimrc<CR>

map <Leader>= :Tabu /\|<CR>
noremap <Leader>n :set relativenumber!<CR>:set number!<CR>
" noremap <silent> ww :w<CR>


command RM :call delete(expand('%'))
" command RM :call delete(expand('%')) | bdelete!

" Switch Window
map <Leader>h <C-W><C-H>
map <Leader>j <C-W><C-J>
map <Leader>k <C-W><C-K>
map <Leader>l <C-W><C-L>

" Resize Window
map + <c-w>>
" map - <c-w><


"  ========= ESC to switch modes LMFAO =========
"  -- insert mode
" noremap ù  <insert>
" imap    ù  <Esc>

"  ========= HJKL =========
" Refs :
" - [Use ijkl to move the cursor and h to insert - Vim Tips Wiki](http://vim.wikia.com/wiki/Use_ijkl_to_move_the_cursor_and_h_to_insert)
" - [Here is why vim uses the hjkl keys as arrow keys - good coders code, great reuse](http://www.catonmat.net/blog/why-vim-uses-hjkl-as-arrow-keys/)
" h : <-
" j : down
" k : up
" l : ->

" allow shifting of home row one char to the right (pinky left)
" noremap m h

"  ========= HOME-END =========
" m was 'set mark'
" noremap M $
noremap L $
noremap H 0
noremap <C-m> G
noremap <C-h> gg

noremap } }jzz
noremap { {(zz

" -- doc end & home
" M was 'focus line @ screen middle'
" H was 'go to first line on current scroll'
" noremap M G

