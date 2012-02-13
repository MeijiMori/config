" Initialize: "{{{
let s:iswin = has('win32') || has('win64')
"let s:ismac = has('macunix') || has('mac')
let s:ismac = !s:iswin && has('macunix') || has('mac')
" Anywhere SID. "{{{
function! s:SID_PREFIX()
  return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction
" }}}
"}}}

"---------------------------------------------------------------------------
" Fonts:"{{{
if s:iswin
  " For Windows. "{{{
  set guifontwide=Migu\ 1M:h11:cSHIFTJIS,MS\ Gothic:h11:cSHIFTJIS

  " set guifont=Lucida\ Console:h10
  set guifont=Consolas:h11:cANSI,MS\ Gothic:h11:cANSI

  " Number of pixel lines inserted between characters.
  set linespace=1

  if has('kaoriya')
    " For Kaoriya only.
    set ambiwidth=auto
  endif
  " }}}
elseif has('mac')
  " For Mac.
  set guifont=Osaka-等幅:h14
else
  " For Linux.
  " set guifontwide=VL\ Gothic\ 11
  " set guifont=VL\ Gothic\ 11
  set guifontwide=Konatu\ 14
  set guifont=Ricty\ 14,Sans\ 12
endif

" printer "{{{
if has('printer')
  if has('win32')
    set printfont=MS_Mincho:h12:cSHIFTJIS
    "set printfont=MS_Gothic:h12:cSHIFTJIS
  else
    set printfont=VL\ Gothic:ANSI
  endif
endif "}}}

" Save the setting of font. "{{{
" Make directory "{{{
let g:save_font_dir = g:vim_dir . '/initfiles/font'
let g:save_font_file = g:save_font_dir . "/.vimfont"
if !isdirectory(g:save_font_dir)
  call mkdir(g:save_font_dir, 'p')
endif "}}}
augroup SaveFont "{{{
  autocmd!
  autocmd BufWritePre,VimLeavePre * call s:save_font()
  function! s:save_font() "{{{
    if s:iswin || has('unix')
      " If invite space in fontname, replace it ! (\ )
      " let recodefont = substitute(&guifont, ' ', '\\ ', 'g')
      " let recodefontw = substitute(&guifontwide, ' ', '\\ ', 'g')
      let options = [
      \ 'let &guifontwide=' . string(&guifontwide),
      \ 'let &guifont=' . string(&guifont)
      \]
    else
      let options = [
      \ 'set guifontwide=' . &guifontwide,
      \ 'set guifont=' . &guifont
      \]
    endif
    call writefile(options, g:save_font_file)
  endfunction "}}}
augroup END "}}}

if filereadable(g:save_font_file)
  execute 'source' g:save_font_file
endif " }}}

" }}}

"---------------------------------------------------------------------------
" Window:"{{{
"
if s:iswin
  " Width of window.
  set columns=95
  " Height of window.
  set lines=25

  " Set transparency.
  "autocmd GuiEnter * set transparency=221
  " Toggle font setting.
  command! TransparencyToggle let &transparency = (&transparency != 255 && &transparency != 0)? 255 : 221
  nnoremap TT     :<C-u>TransparencyToggle<CR>
else
  " Width of window.
  set columns=150
  " Height of window.
  set lines=34
endif

" Save window postion and width "{{{
" Save the setting of window. "{{{
" Make directory "{{{
let g:save_window_dir = g:vim_dir . '/initfiles/win'
let g:save_window_file = g:save_window_dir . "/.vimwinpos" "}}}

if !isdirectory(g:save_window_dir)
  call mkdir(g:save_window_dir, 'p')
endif "}}}
augroup SaveWindow " "{{{
  autocmd!
  autocmd BufWritePre,VimLeavePre * call s:save_window()
  function! s:save_window() " "{{{
    let options = [
    \ 'set columns=' . &columns,
    \ 'set lines=' . &lines,
    \ 'winpos ' . getwinposx() . ' ' . getwinposy(),
    \ ]
    call writefile(options, g:save_window_file)
  endfunction " }}}
augroup END " }}}

if filereadable(g:save_window_file)
  execute 'source' g:save_window_file
endif " }}}

" Setting of colorscheme.
if !exists('g:colors_name')
  colorscheme default
else
  "colorscheme Ws1fr
  colorscheme darkblue
endif

" Save the setting of colorscheme. "{{{
" Make directory "{{{
let g:save_color_dir = g:vim_dir . '/initfiles/color'
let g:save_color_file = g:save_color_dir . "/.vimcolor"

if !isdirectory(g:save_color_dir)
  call mkdir(g:save_color_dir, 'p')
endif "}}}
augroup SaveColor "{{{
  autocmd!
  autocmd BufWritePre,VimLeavePre * call s:save_color()
  function! s:save_color() "{{{
    let options = [
    \ 'colorscheme ' . g:colors_name
    \]
    call writefile(options, g:save_color_file)
  endfunction " }}}
augroup END " }}}
" Get name of colorscheme file "{{{
function! s:ColorschemeRandom()
  let colorlist = map(split(globpath(&runtimepath, 'colors/*.vim'), '\n'),
  \'[fnamemodify(v:val, ":t:r"), fnamemodify(v:val, ":h")]')
  let s:limit = len(colorlist)
  let number  = float2nr(s:limit / sqrt(s:limit))
  let csname = colorlist[number][0]
  unlet s:limit
  return (csname)
endfunction "}}}

if filereadable(g:save_color_file)
  try
    execute 'source ' g:save_color_file
  catch 185
    " Not sloved colorscheme ...
    let csname = <SID>ColorschemeRandom()
    execute 'colorscheme ' csname
    "execute 'colorscheme Layven'
  endtry
endif " }}}

" Toggle color setting.
function! s:ColorToggle() "{{{
  let l:colorlist = map(split(globpath(&runtimepath, 'colors/*.vim'), '\n'),
  \ '[fnamemodify(v:val, ":t:r"), fnamemodify(v:val, ":h")]')
  let l:index = 0
  let l:limit = len(colorlist)
  while l:index < l:limit
    if l:colorlist[l:index][0] !~# g:colors_name
      let l:index += 1
    else
      break
    endif
  endwhile
  if  l:index == l:limit - 1
    let l:index = 0
  elseif l:index < l:limit - 1
    let l:index += 1
  endif
  execute 'colorscheme ' colorlist[l:index][0]
endfunction " }}}
nnoremap <silent> ,ct :<C-u>call <SID>ColorToggle() \| redraw \| echomsg "colorscheme <"g:colors_name">"<CR>

"}}}

"---------------------------------------------------------------------------
" Input Japanese:"{{{
" For Linux
if (has('multi_byte_ime') || has('xim')) && has('GUI_GTK')
  " To use ATOK X3.
  let $GTK_IM_MODULE='xim'
  set imactivatekey=S-space

  " Disable uim when use skk.vim.
  " let &imdisable=1

  " To use uim-anthy.
  let $GTK_IM_MODULE='uim-anthy'
  set imactivatekey=C-space
endif
"}}}

"---------------------------------------------------------------------------
" Mouse:"{{{
"
" Show popup menu if right click.
set mousemodel=popup

" Don't focus the window when the mouse pointer is moved.
set nomousefocus
" Hide mouse pointer on insert mode.
set mousehide

"}}}

"---------------------------------------------------------------------------
" Menu:"{{{
"

" Hide toolbar and menus.
set guioptions-=T
set guioptions-=m
"set guioptions+=T
"set guioptions+=m
" Show Titile bar
set guioptions-=C
" Toggle menu open if press <F2>.
nnoremap <silent> <F2> :<C-u>if &guioptions =~# 'm' <Bar>
\ set guioptions-=m <Bar>
\ else <Bar>
\ set guioptions+=m <Bar>
\ endif <CR>

" Scrollbar is always off.
set guioptions-=rL
" Not guitablabel.
set guioptions-=e

if has('kaoriya')
  " For Kaoriya only.
  " Hide window button, title
  "set guioptions+=C

  " Hide window title,button Toggle
  nnoremap <silent><F2> :<C-u> if &guioptions !~# 'C' <Bar>
  \ set guioptions+=C <Bar>
  \ else <Bar>
  \ set guioptions-=C <Bar>
  \ endif <CR>
endif

"}}}

"---------------------------------------------------------------------------
" Views: "{{{
"
" highlight search result.
"set nohlsearch
set hlsearch

" Disable bell.
set vb t_vb=

" Don't flick cursor.
set guicursor&
set guicursor=a:blinkon0

"}}}

"---------------------------------------------------------------------------
" Platform depends:"{{{
"
if s:iswin
else
endif
"}}}

"---------------------------------------------------------------------------
" Others: "{{{
" }}}

"---------------------------------------------------------------------------
" End: "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
