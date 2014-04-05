Plugin 'gmarik/vundle'

" open file quickly : [CtrlP](https://github.com/kien/ctrlp.vim)
Plugin 'kien/ctrlp.vim'
" open found file in new tab as default
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

" [fisadev/vim-ctrlp-cmdpalette](https://github.com/fisadev/vim-ctrlp-cmdpalette)
Plugin 'fisadev/vim-ctrlp-cmdpalette'

" share clipboard between tabs : [vim-scripts/YankRing.vim](https://github.com/vim-scripts/YankRing.vim)
Plugin 'vim-scripts/YankRing.vim'


" ========= STYLING =========
"
" color schemes pack : [flazz/vim-colorschemes]('flazz/vim-colorschemes')
Plugin 'flazz/vim-colorschemes' 

" [Lightline](https://github.com/itchyny/lightline.vim)
Plugin 'itchyny/lightline.vim'
let g:lightline = {
  \ 'active': {
  \   'left': [ [ 'mode' ],
  \             [ 'readonly' ] ]
  \ },
  \ 'tabline': {
  \   'left': [ ['tabs'] ],
  \   'right': [ [ ] ] } 
  \}
" TODO fix current tab styling or tab styling in general

" ========= MARKDOWN ========= 
" 
Plugin 'tpope/vim-markdown'

" https://github.com/nelstrom/vim-markdown-folding
Plugin 'nelstrom/vim-markdown-folding'


" Plugin 'plasticboy/vim-markdown'

" https://github.com/amiorin/vim-fenced-code-blocks


" [Markdown with Fenced Code Blocks in Vim](https://coderwall.com/p/ftqcla)
"  let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'rb=ruby', 'ruby', 'sass', 'xml']
let g:markdown_fenced_languages = ['rb=ruby', 'ruby']
