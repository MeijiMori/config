﻿" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" like a barcerk fuler

" #- reset-# "{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = "fLaeI"

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#0f0f0f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight SpecialKey guifg=#2f3f7f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight NonText guifg=#3f7f5f guibg=bg gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Directory guifg=#1f4f6f guibg=NONE gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight ErrorMsg guifg=#3f0f1f guibg=#af3f5f gui=underline
          \ ctermfg=16 ctermbg=12 cterm=NONE
" search "{{{
highlight IncSearch guifg=#3f5f8f guibg=#5f8fcf gui=underline
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Search guifg=#3f8f5f guibg=#5fcf8f gui=underline
          \ ctermfg=16 ctermbg=12 cterm=NONE
"}}}
highlight MoreMsg guifg=#002f0f guibg=#0f5f2f gui=underline
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight ModeMsg guifg=#000f2f guibg=#0f2f5f gui=underline
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight LineNr guifg=#9f4f7f guibg=NONE gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Question guifg=#0f3f0f guibg=#3f8f3f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" statusline "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#0f0f0f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight StatusLineNC guifg=#7f5f6f guibg=#cfafaf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" }}}2
highlight VertSplit guifg=#6f6f6f guibg=#0f0f1f gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Title guifg=#2f7f8f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" visual "{{{2
highlight Visual guifg=#cfcfcf guibg=#1f2f3f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f2f5f gui=underline,bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
" }}}2
highlight WarningMsg guifg=#3f0f1f guibg=#af2f5f gui=underline
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight WildMenu guifg=#cfcfcf guibg=#0f1f3f gui=underline
          \ ctermfg=16 ctermbg=12 cterm=NONE
" fold "{{{2
highlight Folded guifg=#8f8f8f guibg=#1f1f1f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight FoldColumn guifg=#2f5f5f guibg=#1a1a1f gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE

" diff "{{{2
highlight DiffAdd guifg=fg guibg=#0f5f3f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight DiffChange guifg=fg guibg=#cf3f1f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight DiffDelete guifg=fg guibg=#5f0f3f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
"}}}2
highlight SignColumn guifg=#f697af guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#a98fc9 guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight SpellCap guifg=#3f5fcf guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight SpellRare guifg=#5fcf8f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight SpellLocal guifg=#cfbf5f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE

" pmenu "{{{2
highlight Pmenu guifg=#afafaf guibg=#000000 gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#0f0f2f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight PmenuSbar guifg=fg guibg=#0f0f1f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight PmenuThumb guifg=fg guibg=#2f5f3f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#5f5f5f guibg=#dfdfdf gui=underline
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight TabLineSel guifg=#cfcfcf guibg=#000f1f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight TabLineFill guifg=#5f0f2f guibg=#dfdfdf gui=bold,underline
          \ ctermfg=16 ctermbg=12 cterm=NONE

" cursor "{{{2
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight CursorLine guifg=NONE guibg=#050a0f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Cursor guifg=#000000 guibg=#2f7f5f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af2f3f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
endif

"}}}2

" #- syntax highlighting groups -# "{{{1
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight MatchParen guifg=#3f2f5f guibg=#8f8fff gui=bold,underline
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight comment guifg=#5f8fcf guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Constant guifg=#5fcf8f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Special guifg=#afafcf guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Identifier guifg=#ffcfaf guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Statement guifg=#cf8fff guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight PreProc guifg=#cf5f8f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight type guifg=#5fffaf guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight underlined guifg=#0f7f3f guibg=bg gui=underline
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Ignore guifg=#7f7f7f guibg=bg gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Error guifg=#5f0f2f guibg=#af2f4f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Todo guifg=#5f5f5f guibg=#dfdfdf gui=bold,underline
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight string guifg=#af1f3f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE

" #- Color function -# "{{{1
" this code is written mrkn256.vim
if has("gui_running") || &t_Co == 88 || &t_Co == 256
  " functions "{{{
  " returns an approximate grey index for the given grey level
  function! <SID>grey_number(x) "{{{
    if &t_Co == 88
      if a:x < 23
        return 0
      elseif a:x < 69
        return 1
      elseif a:x < 103
        return 2
      elseif a:x < 127
        return 3
      elseif a:x < 150
        return 4
      elseif a:x < 173
        return 5
      elseif a:x < 196
        return 6
      elseif a:x < 219
        return 7
      elseif a:x < 243
        return 8
      else
        return 9
      endif
    else
      if a:x < 14
        return 0
      else
        let l:n = (a:x - 8) / 10
        let l:m = (a:x - 8) % 10
        if l:m < 5
          return l:n
        else
          return l:n + 1
        endif
      endif
    endif
  endfun "}}}

  " returns the actual grey level represented by the grey index
  function! <SID>grey_level(n) "{{{
    if &t_Co == 88
      if a:n == 0
        return 0
      elseif a:n == 1
        return 46
      elseif a:n == 2
        return 92
      elseif a:n == 3
        return 115
      elseif a:n == 4
        return 139
      elseif a:n == 5
        return 162
      elseif a:n == 6
        return 185
      elseif a:n == 7
        return 208
      elseif a:n == 8
        return 231
      else
        return 255
      endif
    else
      if a:n == 0
        return 0
      else
        return 8 + (a:n * 10)
      endif
    endif
  endfun "}}}

  " returns the palette index for the given grey index
  function! <SID>grey_color(n) "{{{
    if &t_Co == 88
      if a:n == 0
        return 16
      elseif a:n == 9
        return 79
      else
        return 79 + a:n
      endif
    else
      if a:n == 0
        return 16
      elseif a:n == 25
        return 231
      else
        return 231 + a:n
      endif
    endif
  endfun "}}}

  " returns an approximate color index for the given color level
  function! <SID>rgb_number(x) "{{{
    if &t_Co == 88
      if a:x < 69
        return 0
      elseif a:x < 172
        return 1
      elseif a:x < 230
        return 2
      else
        return 3
      endif
    else
      if a:x < 75
        return 0
      else
        let l:n = (a:x - 55) / 40
        let l:m = (a:x - 55) % 40
        if l:m < 20
          return l:n
        else
          return l:n + 1
        endif
      endif
    endif
  endfun "}}}

  " returns the actual color level for the given color index
  function! <SID>rgb_level(n) "{{{
    if &t_Co == 88
      if a:n == 0
        return 0
      elseif a:n == 1
        return 139
      elseif a:n == 2
        return 205
      else
        return 255
      endif
    else
      if a:n == 0
        return 0
      else
        return 55 + (a:n * 40)
      endif
    endif
  endfun "}}}

  " returns the palette index for the given R/G/B color indices
  function! <SID>rgb_color(x, y, z) "{{{
    if &t_Co == 88
      return 16 + (a:x * 16) + (a:y * 4) + a:z
    else
      return 16 + (a:x * 36) + (a:y * 6) + a:z
    endif
  endfun "}}}

  " returns the palette index to approximate the given R/G/B color levels
  function! <SID>color(r, g, b) "{{{
    " get the closest grey
    let l:gx = <SID>grey_number(a:r)
    let l:gy = <SID>grey_number(a:g)
    let l:gz = <SID>grey_number(a:b)

    " get the closest color
    let l:x = <SID>rgb_number(a:r)
    let l:y = <SID>rgb_number(a:g)
    let l:z = <SID>rgb_number(a:b)

    if l:gx == l:gy && l:gy == l:gz
      " there are two possibilities
      let l:dgr = <SID>grey_level(l:gx) - a:r
      let l:dgg = <SID>grey_level(l:gy) - a:g
      let l:dgb = <SID>grey_level(l:gz) - a:b
      let l:dgrey = (l:dgr * l:dgr) + (l:dgg * l:dgg) + (l:dgb * l:dgb)
      let l:dr = <SID>rgb_level(l:gx) - a:r
      let l:dg = <SID>rgb_level(l:gy) - a:g
      let l:db = <SID>rgb_level(l:gz) - a:b
      let l:drgb = (l:dr * l:dr) + (l:dg * l:dg) + (l:db * l:db)
      if l:dgrey < l:drgb
        " use the grey
        return <SID>grey_color(l:gx)
      else
        " use the color
        return <SID>rgb_color(l:x, l:y, l:z)
      endif
    else
      " only one possibility
      return <SID>rgb_color(l:x, l:y, l:z)
    endif
  endfun

  " returns the palette index to approximate the 'rrggbb' hex string
  function! <SID>rgb(rgb)
    let l:r = ("0x" . strpart(a:rgb, 0, 2)) + 0
    let l:g = ("0x" . strpart(a:rgb, 2, 2)) + 0
    let l:b = ("0x" . strpart(a:rgb, 4, 2)) + 0

    return <SID>color(l:r, l:g, l:b)
  endfun "}}}

  " sets the highlighting for the given group
  function! <SID>X(group, fg, bg, attr) "{{{
    if a:fg != ""
      exec "highlight " . a:group . " guifg=#" . a:fg . " ctermfg=" . <SID>rgb(a:fg)
    endif
    if a:bg != ""
      exec "highlight " . a:group . " guibg=#" . a:bg . " ctermbg=" . <SID>rgb(a:bg)
    endif
    if a:attr != ""
      exec "highlight " . a:group . " gui=" . a:attr . " cterm=" . a:attr
    endif
  endfun "}}}
  " }}}
  " Gui
else
  " Cui
endif


" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim

