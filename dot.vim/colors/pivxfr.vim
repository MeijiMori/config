﻿" #- Vim colorscheme file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date
" Guicolorscheme file
" #- Vim color file reset -# "{{{1
" First remove all existing highlighting.

set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -# "{{{1
let g:colors_name = "pivxfr"

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cccccc guibg=#101010 gui=NONE
highlight SpecialKey guifg=#af7ecf guibg=bg gui=NONE
highlight NonText guifg=#5f3fcf guibg=#101020 gui=NONE
highlight Directory guifg=#3fafff guibg=bg gui=bold
highlight ErrorMsg guifg=#ff4f8f guibg=bg gui=NONE
" search "{{{2
highlight IncSearch guifg=#cfcfcf guibg=#2f0f2f gui=bold
highlight Search guifg=#cfcfcf guibg=#0a0f2f gui=bold
"}}}2
highlight MoreMsg guifg=#afafaf guibg=bg gui=underline
highlight ModeMsg guifg=#2f3fff guibg=bg gui=underline
highlight LineNr guifg=#2f5fff guibg=NONE gui=NONE
highlight Question guifg=#2f8f5f guibg=bg gui=underline
" statusline "{{{2
highlight StatusLine guifg=#e0f0e0 guibg=#080f1f gui=NONE
highlight StatusLineNC guifg=#000000 guibg=#bfbfbf gui=NONE
"}}}2
highlight Title guifg=#5fcf6f guibg=NONE gui=underline
highlight VertSplit guifg=#9f9f9f guibg=#02020f gui=NONE
" visual "{{{2
highlight Visual guifg=#cfcfcf guibg=#101f4f gui=NONE
highlight VisualNOS guibg=#aaeeee guifg=#3d3d3d gui=underline,bold
"}}}2
highlight WarningMsg guifg=#ff4f8f guibg=bg gui=NONE
highlight WildMenu guifg=#afafaf guibg=#0f1f3f gui=NONE
" fold "{{{2
highlight Folded guifg=#9f9faf guibg=#0f1010 gui=NONE
highlight FoldColumn guifg=#2f1faf guibg=#0f1010 gui=bold

" diff "{{{2
highlight DiffAdd guifg=fg guibg=#0f6f3f gui=NONE
highlight DiffChange guifg=fg guibg=#7f7f0f gui=NONE
highlight DiffDelete guifg=fg guibg=#5f0f1f gui=NONE
highlight DiffText guifg=#cfcfcf guibg=bg gui=NONE
"}}}2
highlight SignColumn guifg=#f65774 guibg=bg gui=NONE
" spell "{{{2
highlight SpellBad guifg=#af5fcf guibg=bg gui=NONE
highlight SpellCap guifg=#5f9fcf guibg=bg gui=NONE
highlight SpellRare guifg=#5fcfbf guibg=bg gui=NONE
highlight SpellLocal guifg=#cfbf5f guibg=bg gui=NONE

" pmenu "{{{2
highlight Pmenu guifg=#202020 guibg=#c0c0df gui=NONE
highlight PmenuSel guifg=#cccccc guibg=#1f2f6f gui=NONE
highlight PmenuSbar guifg=#7f7f7f guibg=#2f2f2f gui=NONE
highlight PmenuThumb guifg=#000000 guibg=#8f3f5f gui=NONE

" tabline "{{{2
highlight TabLine guifg=#555555 guibg=#bbbbbb gui=NONE
highlight TabLineSel guifg=#000000 guibg=#cccccc gui=NONE
highlight TabLineFill guifg=#3f0f8f guibg=#bfbfbf gui=NONE

" cursor "{{{2
highlight CursorColumn guifg=NONE guibg=#20355f gui=NONE
highlight CursorLine guifg=NONE guibg=#1f254f gui=NONE
highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
highlight Cursor guifg=#000000 guibg=#9f9f9f gui=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime')
  highlight CursorIM guifg=#000000 guibg=#8f0f2f gui=NONE
endif

"}}}2

" #- syntax highlighting group -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
highlight MatchParen guifg=#000000 guibg=#2f3faf gui=bold
highlight comment guifg=#3f3fcf guibg=bg gui=NONE
highlight Constant guifg=#ff8f1b guibg=bg gui=NONE
highlight PreProc guifg=#ff3f2b guibg=bg gui=NONE
highlight Identifier guifg=#cf0f2f guibg=bg gui=NONE
highlight Special guifg=#deffed guibg=bg gui=NONE
highlight Statement guifg=#3faf5f guibg=bg gui=NONE
highlight type guifg=#3fa9af guibg=bg gui=NONE
highlight underlined guifg=#3f9fcf guibg=bg gui=underline
highlight Ignore guifg=#8f8f8f guibg=bg gui=bold
highlight Error guifg=#ff4f7e guibg=bg gui=NONE
highlight Todo guifg=#5f5f5f guibg=#2f2f2f gui=bold,underline
highlight string guifg=#4f7faf guibg=bg gui=NONE

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

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim