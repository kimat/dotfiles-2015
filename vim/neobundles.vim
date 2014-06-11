if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
"───────────────────────────────────────────────────

NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'Shougo/vimshell.vim'
"───────────────────────────────────────────────────

NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'godlygeek/tabular'
" [align tables & /'|','=',... ](https://github.com/godlygeek/tabular)
" :Tab / /l0    _,_    :Tab /=    _,_  :Tab /|

" NeoBundle 'bling/vim-bufferline'
NeoBundle 'tpope/vim-surround'
" [surrounding or changing surrounding](https://github.com/tpope/vim-surround)
"───────────────────────────────────────────────────

NeoBundle 'kien/ctrlp.vim'
"Keep caches between sessions - f5 to refresh
let g:ctrlp_clear_cache_on_exit = 0

" NeoBundle 'fisadev/vim-ctrlp-cmdpalette'
" [fisadev/vim-ctrlp-cmdpalette](https://github.com/fisadev/vim-ctrlp-cmdpalette)

NeoBundle 'vim-scripts/YankRing.vim'
" [share clipboard between tabs](https://github.com/vim-scripts/YankRing.vim)
" :YRShow -> u(pdate),d(elete),p(aste),Enter==Paste

NeoBundle 'flazz/vim-colorschemes'
" [color themes pack](https://github.com/flazz/vim-colorschemes)

NeoBundle 'tpope/vim-rails'
" [for rails : syntax, helpers](https://github.com/tpope/vim-rails)

NeoBundle 'kchmck/vim-coffee-script'

NeoBundle 'slim-template/vim-slim'
" [slim syntax](
" https://github.com/slim-template/vim-slim

NeoBundle 'plasticboy/vim-markdown'
" [full markdown support (folding, fenced-code-blocks)](https://github.com/plasticboy/vim-markdown)
" [Markdown with Fenced Code Blocks in Vim](https://coderwall.com/p/ftqcla)
" [Enabling markdown highlighting in Vim - StackOverflow](http://stackoverflow.com/questions/10964681/enabling-markdown-highlighting-in-vim)
let g:vim_markdown_folding_disabled=1
" let g:vim_markdown_initial_foldlevel=1

" :ls /usr/share/vim/vim74/syntax
let g:markdown_fenced_languages = ['rb=ruby', 'ruby', 'sh', 'shell=sh', 'bash=sh', 'vim', 'yaml', 'yml=yaml', 'slim' , 'sass']

NeoBundle 'bronson/vim-trailing-whitespace'

NeoBundle 'szw/vim-ctrlspace'
let g:ctrlspace_use_tabline=2
let g:ctrlspace_unicode_font=0
let g:ctrlspace_use_tabline=0

if exists("+showtabline")

  function GoBuffer(direction)
    let direction = a:direction
    let t_current = tabpagenr()
    let b_current = bufnr('%')
    let b_list = ctrlspace#bufferlist(t_current)
    let first = -1
    let selected = -1
    let b_items = items(b_list)
    for i in range(0, len(b_list) - 1)
      let b = b_items[i]
      if b[0] == b_current
        if direction == "next"
          let sel_index = (i+1)%len(b_list)
          let selected = b_items[sel_index][0]
        else
          let selected = b_items[i-1][0]
        endif
        break
      endif
    endfor
    if selected == -1
      let selected = first
    endif
    silent! exe ":b " . selected
  endfunction

  function Smallify_Number(nb)
    let nb = a:nb
    let small_numbers = ["⁰", "¹", "²", "³", "⁴", "⁵", "⁶", "⁷", "⁸", "⁹"]
    let ret = ''
    if nb >= 10
      let ret .= small_numbers[nb/10]
    end
    let ret .= small_numbers[nb%10]
    return ret
  endfunction

  function MyTabLine()
    " exit if ctrl-space called : bug occurs when not in path of workspace
    " if bufname('%') == '__CS__'
    "   return
    " endif

    let ret = ''
    let l_left = ''
    let t_last    = tabpagenr("$")
    let t_current = tabpagenr()
    let b_list = ctrlspace#bufferlist(t_current)

    "    &columns             hidden
    " < --- 126 --- >< ---------174 --------->
    "
    " viewable, l_right
    " <---110---><16>
    "
    "              l_left + l_right
    " < ---------------- 300 ---------------->
    " <+-------->-----------------------------
    " <-----+--->-----------------------------
    " ---------------<-----+--->--------------
    " -----------------------------<-----+--->
    " -----------------------------<--------+>

    " Pre Build l_right
    let ret_right = ''
    let l_right = ''
    " Show Name of Current Tab
    let ret_right .= '%#TabLineFill#'
    let t_title = gettabvar(t_current, 'ctrlspace_label')
    let ret_right .= ' ' . t_title
    let l_right .= ' ' . t_title
    " Check if another tab has an unsaved buffer
    let next_color = ''
    for t in range(1, tabpagenr("$"))
      if ctrlspace#tab_modified(t)
        let next_color = '%#TabLineSel#'
      endif
    endfor
    if next_color == ''
      let next_color = '%#TabLine#'
    endif
    let ret_right .= next_color
    " Show Number of the current tab
    let ret_right .= Smallify_Number(t_current)
    let l_right .= Smallify_Number(t_current)
    let len_viewable = &columns - len(l_right) - 2


    " Start Building l_left
    " Add Separator
    let ret .= '%#TabLine#'
    let ret .= '| '
    let l_left .= '| '

    " Find index of current & len until each buffer
    let index_current = -1
    let starting_positions = {}
    for i in range(0,len(b_list) - 1)
      let starting_positions[i]=len(l_left)
      let b = items(b_list)[i]
      let b_nb = b[0]
      let b_name = b[1]
      if bufnr('%') == b_nb
        let index_current = i
      endif
      let l_left .= b_name
      let l_left .= Smallify_Number(i)
      let l_left .= ' | '
    endfor

    " Find out from which buffer we are going to add to tabline
    let start = 0
    if len(l_left) > len_viewable && has_key(starting_positions, index_current) "when __CS__ no index_current
      let min_start = starting_positions[index_current] - (len_viewable/2)
      if starting_positions[index_current] > (len(l_left) - len_viewable)
        let min_start = len(l_left) - len_viewable - len(l_right)
      endif
      for i in range(0,index_current)
        if starting_positions[i] > min_start
          let start = i
          break
        endif
      endfor
    endif

    " Show Buffers from this current Tab-Space "
    let l_left = ''
    for i in range(start, len(b_list) - 1)
      let b = items(b_list)[i]
      let b_nb = b[0]
      let b_name = b[1]
      " Act on current buffer & Set Color
      if bufnr('%') == b_nb
        let ret .= '%#TabLineSel#'
        let pos_current = len(l_left)
      else
        let ret .= '%#TabLine#'
      endif

      " Add Buffer Name
      let ret .= fnamemodify(b_name,":t")
      let l_left .= fnamemodify(b_name,":t")

      " Reset Color and
      " Add Buffer Number
      " Highlight non saved
      if getbufvar(str2nr(b_nb), '&modified')
        let ret .= '%#TabLineFill#'
        let ret .= Smallify_Number(b_nb)
        let l_left .= Smallify_Number(b_nb)
        let ret .= '%#TabLine#'
      else
        let ret .= '%#TabLine#'
        let ret .= Smallify_Number(b_nb)
        let l_left .= Smallify_Number(b_nb)
      endif

      " Add Separator
      let ret .= ' | '
      let l_left .= ' | '

      " Break if l_left > visible
      if len(l_left) > len_viewable
        break
      endif
    endfor

    " Start Align Right
    let ret .= '%='
    let ret .= ret_right

    " Show Nr of Current Tab
    " if t_current == 1
    " let ret .= '1..'
    " elseif t_current == t_last
    "   let ret .=  '..' . t_current
    " else
    "   let ret .= '.' . t_current . '.'
    " endif

    " let ret .= (tabpagenr('$') > 1 ? '%999XX' : 'X')


    return ret " .
       " \ len(ret)    . '=' .
       " \ len(l_left)  . '+' .
       " \ len(l_right) . '<' .
       " \ &columns     . '<' .
       " \ winwidth(1)  . '@' .
       " \ pos_current

  endfunction
  set stal=2
  set tabline=%!MyTabLine()
endif

" NeoBundle 'itchyny/lightline.vim'
" " [colorfull vim modes, nicer tabs](https://github.com/itchyny/lightline.vim)
" let g:lightline = {
"       \ 'enable': { 'tabline': 0 }
"       \ }

" function! s:filtered_lightline_call(funcname)
"   if bufname('%') == '__CS__'
"     return
"   endif
"   " execute 'call lightline#' . a:funcname . '()'
" endfunction
" augroup LightLine
"   autocmd!
"   autocmd WinEnter,BufWinEnter,FileType,ColorScheme * call s:filtered_lightline_call('update')
"   autocmd ColorScheme,SessionLoadPost * call s:filtered_lightline_call('highlight')
"   autocmd CursorMoved,BufUnload * call s:filtered_lightline_call('update_once')
" augroup END

" NeoBundle 'bling/vim-airline'
" let g:airline_theme='bubblegum'
" let g:airline_exclude_preview = 1  " vim-ctrlspace fix
" let g:airline#extensions#tabline#enabled = 0

" " If Tabline : Show just the filename
" let g:airline#extensions#tabline#fnamemod = ':t'


NeoBundle 'tpope/vim-haml'
" [haml, sass syntax](https://github.com/tpope/vim-haml)

" =============================================
call neobundle#end()
NeoBundleCheck
