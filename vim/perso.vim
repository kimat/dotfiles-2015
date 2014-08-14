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
map <Leader>S :CtrlSpaceSaveWorkspace<CR>
map <Leader>, :CtrlSpaceTabLabel<CR>

vnoremap a :Tabu /\|<CR>
noremap <Leader>n :set relativenumber!

" Switch Window
map <Leader>h <C-W><C-H>
map <Leader>j <C-W><C-J>
map <Leader>k <C-W><C-K>
map <Leader>l <C-W><C-L>

" Resize Window
map + <c-w>>
map - <c-w><


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
noremap m h

"  ========= INSERT-NORMAL MODE =========
noremap <tab> <Esc>
noremap  <C-i> i
inoremap <C-i> <Esc>

"  ========= HOME-END =========
" m was 'set mark'
noremap M $
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

"  ========= INDENTATION =========
" Reverse default indenting keys -> shift+key to unindent
noremap < >
noremap > <
