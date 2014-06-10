set nopaste

" = HOW TO =
" :h CTRL-K
" :map <CTRL-P>
" set showcmd

let mapleader =  "²"
map <Leader>f :CtrlSpaceGoNext<CR>
map <Leader>s :CtrlSpaceGoPrevious<CR>
vnoremap a :Tabu /\|<CR>

"  ========= ESC to switch modes LMFAO =========
"  -- insert mode
noremap ù  <insert>
imap    ù  <Esc>

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
inoremap ii <Esc>
noremap  <C-i> i
inoremap <C-i> <Esc>

"  ========= HOME-END =========
" m was 'set mark'
noremap M $
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
