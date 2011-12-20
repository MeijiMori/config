﻿" Vim color file "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file
" Impression to human that my friend? thanks Misa Murakawa ...

" #- Vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

"#- colorscheme name -# "{{{1
let g:colors_name = "oeNmP"

" #- highlighting groups for various occasions -# "{{{1
highlight Normal gui=NONE guifg=#dfdfdf guibg=#0f1a3f
highlight SpecialKey gui=NONE guifg=#5f7ecf guibg=bg
highlight NonText gui=NONE guifg=#3333ff guibg=bg
highlight Directory gui=NONE guifg=#3fafff guibg=bg
highlight ErrorMsg gui=NONE guifg=#ff6f6f guibg=bg
" search "{{{
highlight IncSearch gui=bold guifg=#0f0f0f guibg=#3f5faf
highlight Search gui=bold guifg=#0f0f0f guibg=#5088e1
"}}}
highlight MoreMsg gui=NONE guifg=#95d5d9 guibg=bg
highlight ModeMsg gui=NONE guifg=#3f5fff guibg=bg
highlight LineNr gui=NONE guifg=#2f5fff guibg=NONE
highlight Question gui=NONE guifg=#6ff39f guibg=bg
" statusline "{{{
highlight StatusLine gui=NONE guifg=#e0f0e0 guibg=#0f1f30
highlight StatusLineNC gui=NONE guifg=#5f5f3f guibg=#c4b2ab
"}}}
highlight Title gui=NONE guifg=#a6dc72 guibg=NONE
highlight VertSplit gui=NONE guifg=fg guibg=bg
" visual "{{{
highlight Visual gui=NONE guifg=#cccccc guibg=#102f5f
highlight VisualNOS gui=bold,underline guifg=#cfcfcf guibg=#3f5f8f
"}}}
highlight WarningMsg gui=NONE guifg=#ff4765 guibg=bg
highlight WildMenu gui=NONE guifg=#2a459f guibg=#cccccc
" fold "{{{
highlight Folded gui=NONE guifg=#9f9faf guibg=#10253f
highlight FoldColumn gui=bold guifg=#2f1090 guibg=#0f1f30
"}}}
" diff "{{{
highlight DiffAdd gui=NONE guifg=#cfcfcf guibg=#3f5faf
highlight DiffChange gui=NONE guifg=#cfcfcf guibg=#8f1f5f
highlight DiffDelete gui=bold guifg=#cfcfcf guibg=#8f0f1f
highlight DiffText gui=NONE guifg=#cfcfcf guibg=bg
"}}}
highlight SignColumn gui=NONE guifg=#f65774 guibg=bg
"spell "{{{
highlight SpellBad gui=NONE guifg=#af8fcf guibg=bg
highlight SpellCap gui=NONE guifg=#8f9fcf guibg=bg
highlight SpellRare gui=NONE guifg=#8fcfbf guibg=bg
highlight SpellLocal gui=NONE guifg=#cfbf8f guibg=bg
"}}}
"pmenu "{{{
highlight Pmenu gui=NONE guifg=#202020 guibg=#c0c0c0
highlight PmenuSel gui=NONE guifg=#cccccc guibg=#1f2f5f
highlight PmenuSbar gui=NONE guifg=#7f7f7f guibg=#1f102f
highlight PmenuThumb gui=NONE guifg=#000000 guibg=#2f5f4f
"}}}
"tabline "{{{
highlight TabLine gui=underline guifg=#224c6d guibg=bg
highlight TabLineSel gui=underline guifg=#3474a6 guibg=bg
" highlight TabLineFill gui=underline guifg=#5f5f5f guibg=#bfbfbf
highlight TabLineFill gui=underline guifg=#5f5f5f guibg=#bfbfbf
"}}}
"cursor "{{{
highlight CursorColumn gui=NONE guifg=NONE guibg=#20355f
highlight CursorLine gui=NONE guifg=NONE guibg=#1f254f
highlight ColorColumn gui=NONE guifg=NONE guibg=#20355f
highlight Cursor gui=NONE guifg=#000000 guibg=#9f9f9f
" Ime "{{{
if has('multi_byte_ime') || has('xim')
  highlight CursorIM gui=NONE guifg=#000000 guibg=#7f2f4f
endif
"}}}
" }}}

" #- syntax highlighting group -# "{{{1
highlight lCursor gui=NONE guifg=#404040 guibg=#7ea3a6
highlight MatchParen gui=bold guifg=#2f2f2f guibg=#5f93cd
highlight comment gui=NONE guifg=#6fafff guibg=bg
highlight Constant gui=NONE guifg=#7dd97b guibg=bg
highlight Identifier gui=NONE guifg=#ccb0d7 guibg=bg
highlight Special gui=NONE guifg=#deffed guibg=bg
if &t_Co > 8
  highlight Statement term=bold cterm=bold ctermfg=Yellow guifg=#5c71ab guibg=bg
endif
highlight Statement gui=NONE guifg=#94de92 guibg=bg
highlight PreProc gui=NONE guifg=#b871b7 guibg=bg
highlight type gui=NONE guifg=#71c9af guibg=bg
highlight underlined gui=underline guifg=#9f7fff guibg=bg
highlight Ignore gui=NONE guifg=#047f75 guibg=NONE
highlight Error gui=NONE guifg=#ff4f7e guibg=bg
highlight Todo gui=bold guifg=#6f7fff guibg=#1f0f3f
highlight string gui=NONE guifg=#4f7faf guibg=bg

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

"END "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim