Plugin 'gmarik/vundle'
" ---------------------------------------------------------------------------------------
Plugin 'kien/ctrlp.vim'
" open file quickly : [CtrlP](https://github.com/kien/ctrlp.vim)
" [Should be able to select up/down using ctrl-p/ctrl-n](https://github.com/kien/ctrlp.vim/issues/104)
" open found file in new tab as default
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")' : ['<c-t>'] ,
    \ 'AcceptSelection("t")' : ['<cr>'   , '<2-LeftMouse>'] ,
    \ 'PrtSelectMove("j")'   : ['<c-k>'] ,
    \ 'PrtSelectMove("k")'   : ['<c-i>'] ,
    \ }
" extra key mappings
nmap <c-o> :CtrlP<CR>
nmap <c-b> :CtrlPBuffer<CR>


" ---------------------------------------------------------------------------------------
Plugin 'fisadev/vim-ctrlp-cmdpalette'
" [fisadev/vim-ctrlp-cmdpalette](https://github.com/fisadev/vim-ctrlp-cmdpalette)

" ---------------------------------------------------------------------------------------
Plugin 'vim-scripts/YankRing.vim'
" share clipboard between tabs : [vim-scripts/YankRing.vim](https://github.com/vim-scripts/YankRing.vim)

" ========= STYLING =========
Plugin 'flazz/vim-colorschemes'
" [flazz/vim-colorschemes · GitHub](https://github.com/flazz/vim-colorschemes)
" color schemes pack : [flazz/vim-colorschemes]('flazz/vim-colorschemes')

" ---------------------------------------------------------------------------------------
" Plugin 'bling/vim-bufferline'
" [bling/vim-bufferline · GitHub](https://github.com/bling/vim-bufferline)

" ---------------------------------------------------------------------------------------
Plugin 'godlygeek/tabular'
" [godlygeek/tabular · GitHub](https://github.com/godlygeek/tabular)
" :Tab / /l0
" :Tab /=

" ---------------------------------------------------------------------------------------
Plugin 'itchyny/lightline.vim'
" [Lightline](https://github.com/itchyny/lightline.vim)
" let g:lightline = {
"   \ 'active': {
"   \   'left': [ [ 'mode' ],
"   \             [ 'readonly' ] ]
"   \ },
"   \ 'tabline': {
"   \   'left': [ ['tabs'] ],
"   \   'right': [ [ ] ] 
"   \ },
"   \ 'statusline': {
"   \   'left': [ ['buffers'] ],
"   \   'right': [ [ ] ] 
"   \ }
"   \}
" ---------------------------------------------------------------------------------------
" TODO fix current tab styling or tab styling in general

" ========= MARKDOWN =========
" Plugin 'tpope/vim-markdown'
" [tpope/vim-markdown · GitHub](https://github.com/tpope/vim-markdown)

" ---------------------------------------------------------------------------------------
" Plugin 'nelstrom/vim-markdown-folding'
" https://github.com/nelstrom/vim-markdown-folding

" ---------------------------------------------------------------------------------------
Plugin 'plasticboy/vim-markdown'
" https://github.com/plasticboy/vim-markdown
" let g:vim_markdown_folding_disabled=0
" https://github.com/amiorin/vim-fenced-code-blocks

" ---------------------------------------------------------------------------------------
" [Markdown with Fenced Code Blocks in Vim](https://coderwall.com/p/ftqcla)
" [Enabling markdown highlighting in Vim - StackOverflow](http://stackoverflow.com/questions/10964681/enabling-markdown-highlighting-in-vim)
" let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'rb=ruby', 'ruby', 'sass', 'xml']
let g:markdown_fenced_languages = ['rb=ruby', 'ruby']

