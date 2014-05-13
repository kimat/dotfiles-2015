" [Working with tabs](http://vimcasts.org/episodes/working-with-tabs/)

" -- Open Help Docs in new tab --
:cabbrev help tab help
:cabbrev h tab help

" -- Allows Open vim with multiple tabs --
tab all                   

" -- new tab --
nmap <c-t> :tabedit 

" -- switch tabs --
nnoremap <C-Left> gt
nnoremap <C-Right> :echo 'Current time is ' . strftime('%c')<CR>

"  noremap  <PageDown> gt
"  noremap  <PageUp> gT
"
" tab navigation like firefox
" nnoremap <C-S-tab> :tabprevious<CR>
" nnoremap <C-tab>   :tabnext<CR>
" nnoremap <C-t>     :tabedit 
" inoremap <C-S-tab> <Esc>:tabprevious<CR>i
" inoremap <C-tab>   <Esc>:tabnext<CR>i
" inoremap <C-t>     <Esc>:tabedit 

" -- move tabs --
"  noremap <c-s-left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
"  nnoremap <c-s-right> <m-> :execute 'silent! tabmove ' . tabpagenr()<CR>

" -- close current tab --
noremap <c-w> <Esc>:x<CR>

" -- Always show tab bar --
set showtabline=2          

"  Selected tab
hi TabLineSel ctermfg=magenta cterm=none 



" -- style the tab bar --
" hi TabLineFill ctermfg=black ctermfg=black
" hi TabLineFill cterm=none ctermfg=235 ctermfg=235
" hi TabLine cterm=none ctermbg=black ctermfg=black
" Selected tab
" hi TabLineSel ctermbg=235 ctermfg=magenta cterm=none 
" hi TabLineSel ctermbg=235 ctermfg=magenta cterm=none 
" underline 
" hi TabLine cterm=none ctermbg=black ctermfg=darkgray
" hi TabLineSel ctermbg=black ctermfg=magenta cterm=none " underline 

