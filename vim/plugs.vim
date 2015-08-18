" {{{ Test
" NeoBundle 'msanders/snipmate.vim'
" ino <c-j> <c-r>=TriggerSnippet()<cr>
" snor <c-j> <esc>i<right><c-r>=TriggerSnippet()<cr>
" Plug 'tpope/vim-flagship'
" [nonsequitur/git-gutter-plus](https://github.com/nonsequitur/git-gutter-plus)
" NeoBundle 'dahu/VimFindsMe'
" NeoBundle 'vim-scripts/AutoComplPop'
" NeoBundle 'firegoby/SASS-Snippets'
" NeoBundle 'mtscout6/vim-cjsx'
" [Lokaltog/vim-easymotion](https://github.com/Lokaltog/vim-easymotion)
" NeoBundle 'Lokaltog/vim-easymotion'
" NeoBundle 'kristijanhusak/vim-multiple-cursors/'
" need to disable <C-N> mapping in yankring
" let g:multi_cursor_normal_maps = {'f': 1, 't': 1, 'F': 1, 'T':1, 'c': 1}

" Plug 'pangloss/vim-javascript'
" Plug 'othree/javascript-libraries-syntax.vim'
" Plug 'SirVer/ultisnips'
" }}}
" {{{ Additional syntaxes
Plug 'slim-template/vim-slim'
Plug 'kchmck/vim-coffee-script'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'kana/vim-textobj-user'
Plug 'tek/vim-textobj-ruby'
Plug 'vim-scripts/autohotkey-ahk'
Plug 'bohrshaw/vim-vimperator-syntax'
au BufEnter _vimperatorrc setlocal syntax=vimperator
" }}}
" {{{ Styling
" Pack of many popular colorschemes
Plug 'flazz/vim-colorschemes'
" Highlight when jumping words, letters
Plug 'boucherm/ShowMotion'
Plug 'bronson/vim-trailing-whitespace'
" {{{
highlight SM_SmallMotionGroup cterm=italic                ctermbg=53 gui=italic                guibg=#5f005f
highlight SM_BigMotionGroup   cterm=italic,bold,underline ctermbg=54 gui=italic,bold,underline guibg=#5f0087
highlight SM_CharSearchGroup  cterm=italic,bold           ctermbg=4  gui=italic,bold           guibg=#3f6691

"*** Highlights both big and small motions
nmap w <Plug>(show-motion-both-w)
nmap W <Plug>(show-motion-both-W)
nmap b <Plug>(show-motion-both-b)
nmap B <Plug>(show-motion-both-B)
nmap e <Plug>(show-motion-both-e)
nmap E <Plug>(show-motion-both-E)

"*** Only highlights motions corresponding to the one you typed
nmap w <Plug>(show-motion-w)
nmap W <Plug>(show-motion-W)
nmap b <Plug>(show-motion-b)
nmap B <Plug>(show-motion-B)
nmap e <Plug>(show-motion-e)
nmap E <Plug>(show-motion-E)

"Show motion for chars:
nmap f <Plug>(show-motion-f)
nmap t <Plug>(show-motion-t)
nmap F <Plug>(show-motion-F)
nmap T <Plug>(show-motion-T)
nmap ; <Plug>(show-motion-;)
nmap , <Plug>(show-motion-,)
" }}}
" }}}
" {{{ Reformatting
" {{{ Tabular
Plug 'godlygeek/tabular'
" example usage
" :'<,'>Tabularize /,/l0r1
" [align tables & /'|','=',... ](https://github.com/godlygeek/tabular)
" :Tab / /l0    _,_    :Tab /=    _,_  :Tab /|
" }}}
" }}}
" {{{ Tmux
" Make it seamless to switch from one tmux pane or a vim pane
Plug 'christoomey/vim-tmux-navigator'
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <M-i> :TmuxNavigateUp<cr>
nnoremap <silent> <M-k> :TmuxNavigateDown<cr>
nnoremap <silent> <M-j> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>
" Exec comands on other tmux panes
Plug 'epeli/slimux'
let g:slimux_select_from_current_window = 1
" }}}
" {{{ Git
" Show file modifications beside line number
Plug 'airblade/vim-gitgutter'
nnoremap ga :GitGutterStageHunk<CR>
nnoremap gn :GitGutterNextHunk<CR>
" }}}
" {{{ Snippets
" Plug 'garbas/vim-snipmate'
Plug 'Shougo/neocomplete.vim'
"  }}}
" {{{ Comments
" NeoBundle 'tpope/vim-commentary'
Plug 'tomtom/tcomment_vim'
" }}}
" {{{ Clipboard
Plug 'vim-scripts/YankRing.vim'
" if has('nvim')
" 	set unnamedclip
" endif
let g:yankring_clipboard_monitor=0
" [share clipboard between tabs](https://github.com/vim-scripts/YankRing.vim)
" https://github.com/vim-scripts/YankRing.vim
" :YRShow -> u(pdate),d(elete),p(aste),Enter==Paste

" }}}
" {{{ Methods sidebar
Plug 'majutsushi/tagbar'
let g:tagbar_type_markdown = {
        \ 'ctagstype' : 'markdown',
        \ 'kinds' : [
            \ 'h:headings',
        \ ],
\ "sort" : 0
\ }
" }}}
" {{{ Ctrl Space
" Manage multiple workspaces
" Plug 'szw/vim-ctrlspace',
Plug '~/vim-ctrlspace'
let g:ctrlspace_use_tabline=2
" let g:ctrlspace_unicode_font=0
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
					" if getbufvar(str2nr(b_nb), '&modified')
					"   let ret .= '%#TabLineFill#'
					"   let ret .= Smallify_Number(b_nb)
					"   let l_left .= Smallify_Number(b_nb)
					"   let ret .= '%#TabLine#'
					" else
					"   let ret .= '%#TabLine#'
					"   let ret .= Smallify_Number(b_nb)
					"   let l_left .= Smallify_Number(b_nb)
					" endif
			let ret .= '%#TabLine#'

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

" }}}
