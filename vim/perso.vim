set nopaste

"  ========= ESC to switch modes LMFAO =========
"  -- insert mode
noremap ù  <insert>
imap    ù  <Esc>

"  ========= HJKL wtf ? IJKL is in my palm already sorry =========

"  -- ijkl
" [ijkl Vim Tip s ](http://vim.wikia.com/wiki/U s e_ijkl_to_move_the_cur s or_and_h_to_in s ert)

map                    i gk
map                    j <Left>
map                    k gj
" noremap  o     i
noremap  <C-i> i
inoremap <C-i> <Esc>

"  -- end & home
" m was 'nothing'
" h was 'left'
noremap m $
noremap h ^

" -- doc end & home
" M was 'focus line @ screen middle'
" H was 'go to first line on current scroll'
noremap M G
noremap H gg
