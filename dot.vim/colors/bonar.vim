﻿" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen {[(*)]}
" highlighting ZenkakuSpace /　/
" Gui colorscheme file
" This colorscheme file is light theme. So refer to bonar's HP.

" #- Color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- Colorscheme name -# "{{{1
let g:colors_name = "bonar"

"#- Highlighting groups for various occasions -# "{{{1
highlight Normal gui=NONE guifg=#0f0f0f guibg=#faf5da
highlight SpecialKey gui=NONE guifg=#5f5fcf guibg=bg
highlight NonText gui=NONE guifg=#3f3fcf guibg=#efefcf
highlight Directory gui=NONE guifg=#0f3f7f guibg=bg
highlight ErrorMsg gui=NONE guifg=#f84865 guibg=#ffcfcf
" Search "{{{
highlight IncSearch gui=bold guifg=#0f0f0f guibg=#5faf8f
highlight Search gui=bold guifg=#000000 guibg=#4f6fff
"}}}
highlight MoreMsg gui=NONE guifg=#3f5f2f guibg=#cff0df
highlight ModeMsg gui=NONE guifg=#3f2f5f guibg=#cfdff0
highlight LineNr gui=NONE ctermfg=white guifg=#5f4f40 guibg=NONE
highlight Question gui=NONE guifg=#8f3f5f guibg=#ffcfcf
" Statusline "{{{
highlight StatusLine gui=NONE guifg=#000000 guibg=#efefff
highlight StatusLineNC gui=NONE guifg=#3f3f2f guibg=#c4b2ab
"}}}
highlight Title gui=bold guifg=#ad1422 guibg=bg
highlight VertSplit gui=bold guifg=#afafaf guibg=#cfcfcf
" Visual "{{{
highlight Visual gui=NONE guifg=#bfbfbf guibg=#2f2f5f
highlight VisualNOS gui=underline,bold guifg=#cfcfcf guibg=#1f2f4f
"}}}
highlight WarningMsg gui=NONE guifg=#8f0f3f guibg=#ffcfcf
highlight WildMenu gui=NONE guifg=#cfcfcf guibg=#1f2f5f
" Fold "{{{
highlight Folded gui=NONE guifg=#2f2f2f guibg=#dfdfdf
highlight FoldColumn gui=bold guifg=#1f3f5f guibg=#dfdfdf
" }}}
" Diff "{{{
highlight DiffAdd gui=NONE guifg=#0f0f0f guibg=#8fafcf
highlight DiffChange gui=NONE guifg=#0f0f0f guibg=#af8fcf
highlight DiffDelete gui=bold guifg=#0f0f0f guibg=#cf8faf
highlight DiffText gui=NONE guifg=#3f3f3f guibg=bg
" }}}
highlight SignColumn gui=NONE guifg=#8f7f3f guibg=bg
" Spell "{{{
highlight SpellBad gui=NONE guifg=#8f0faf guibg=bg
highlight SpellCap gui=NONE guifg=#3f0faf guibg=bg
highlight SpellRare gui=NONE guifg=#3f8f5f guibg=bg
highlight SpellLocal gui=NONE guifg=#4f3f0f guibg=bg
" }}}
" Pmenu "{{{
highlight Pmenu gui=NONE guifg=#0f0f0f guibg=#cfcfcf
highlight PmenuSel gui=NONE guifg=#ededed guibg=#2f3f5f
highlight PmenuSbar gui=NONE guifg=#9c9c9c guibg=#0f0f0f
highlight PmenuThumb gui=NONE guifg=#0f0f0f guibg=#01365f
" }}}
" Tabline "{{{
" highlight TabLine gui=underline guifg=#3f3f3f guibg=#cfc0af
highlight TabLine gui=underline guifg=#3f3f3f guibg=#cfc0af
highlight TabLineSel gui=underline guifg=#0f0f0f guibg=#cfc0bf
highlight TabLineFill gui=underline guifg=#415676 guibg=#dfd0bf
" }}}
" Cursor "{{{
highlight CursorColumn gui=NONE guifg=fg guibg=bg
highlight CursorLine gui=NONE guifg=NONE guibg=#cfcfdf
highlight ColorColumn gui=NONE guifg=NONE guibg=#cfcfff
highlight Cursor gui=NONE guifg=#cfcfcf guibg=#3f3f3f
" IME status color for cursor "{{{
if has('multi_byte_ime') || has('xim')
  highlight CursorIM gui=NONE guifg=#0f0f0f guibg=#af3f5f
endif "}}}
" }}}

" #- Syntax highlighting group -# "{{{1
highlight lCursor gui=NONE guifg=#2f2f2f guibg=#7ea3a6
highlight MatchParen gui=bold guifg=#0f0f0f guibg=#5f9f5f
highlight comment gui=NONE guifg=#0f3f7f guibg=bg
highlight Constant gui=NONE guifg=#0d5f2f guibg=bg
highlight Special gui=NONE guifg=#0f2f5f guibg=bg
highlight Identifier gui=NONE guifg=#af1f2f guibg=bg
if &t_Co > 8
  highlight Statement term=bold cterm=bold ctermfg=Yellow guifg=#5c71ab guibg=bg
endif
highlight Statement gui=NONE guifg=#7f2f3f guibg=bg
" highlight PreProc gui=NONE guifg=#8f2f5f guibg=bg
highlight PreProc gui=NONE guifg=#2f3f9f guibg=bg
highlight type gui=NONE guifg=#1f5f3f guibg=bg
highlight underlined gui=underline guifg=#265faf guibg=#ffffcf
highlight Ignore gui=bold guifg=#1f5f20 guibg=NONE
highlight Error gui=NONE guifg=#8f0f2f guibg=bg
highlight Todo gui=bold guifg=#3268ca guibg=#efefdf
highlight string gui=NONE guifg=#9f3f5f guibg=bg
" #- Color function -# "{{{1
" this code is written mrkn256.vim
if has("gui_running") || &t_Co == 88 || &t_Co == 256
  " functions {{{
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