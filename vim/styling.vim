" Folding {{{
function! MyFoldText()
  return ''.getline(v:foldstart)
endfunction
set foldtext=MyFoldText()
" }}}

" -- Indentation --
set tabstop=2             " tab spacing
set softtabstop=2         " unify
set expandtab             " use spaces instead of tabs
set shiftwidth=2          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop

" -- Make Current Window more obvious
augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cul
    autocmd WinLeave * set nocul
augroup END

" -- Wrapping --
set nowrap                " don't wrap text

" -- Colors --
set t_Co=256              " 256-color use color numbers with cterm..
syntax enable
colorscheme Tomorrow-Night-Eighties
" colorscheme gotham256
" colorscheme railscasts
" colorscheme elflord
" colorscheme desert
set background=dark

" -- bottom bar --
set laststatus=2          " white status bar

" -- Line Numbs --
set relativenumber         " or set number   for line numbers
hi LineNr ctermfg=darkgray ctermbg=none

" -- cursor line --
set cursorline cursorcolumn
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
    set number
  else
    set relativenumber
  endif
endfunc
set number
nnoremap <C-n> :call NumberToggle()<cr>

" -- tab line (top) --
" hi TabLine     ctermfg=238   ctermbg=NONE cterm=NONE
hi TabLine     ctermfg=242   ctermbg=NONE cterm=NONE
hi TabLineFill ctermfg=yellow  ctermbg=NONE cterm=NONE
hi TabLineSel  ctermfg=135 ctermbg=NONE cterm=NONE
" hi TabLineSel  ctermfg=magenta ctermbg=NONE cterm=NONE

" hi CursorLine ctermbg=235 ctermfg=none cterm=none
" cterm=underline
