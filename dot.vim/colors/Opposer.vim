" Vim colorscheme file "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" !date
" Guicolorscheme file

" color file reset "{{{1
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" colorscheme name "{{{1
let g:colors_name = "Opposer"

" highlighting colorscheme "{{{1
highlight Normal gui=NONE guifg=#000000 guibg=#c4c4c4
highlight SpecialKey gui=bold guifg=#334645 guibg=bg
highlight NonText gui=bold guifg=#1f3faf guibg=bg
highlight Directory gui=bold guifg=#348e43 guibg=bg
highlight ErrorMsg gui=NONE guifg=#af0f3f guibg=#cf8faf
" search "{{{
highlight IncSearch gui=bold guifg=#0f0f0f guibg=#af5f7f
highlight Search gui=bold guifg=#0f0f0f guibg=#a0aff6
" }}}
highlight MoreMsg gui=NONE guifg=#0f4f2f guibg=#afcfaf
highlight ModeMsg gui=NONE guifg=#0f2f4f guibg=#afafcf
highlight LineNr gui=NONE ctermfg=white guifg=#b85f40 guibg=NONE
highlight Question gui=NONE guifg=#0f4f4f guibg=#afcfcf
" statusline "{{{
highlight StatusLine gui=NONE guifg=#ffffff guibg=#0f1f2f
highlight StatusLineNC gui=NONE guifg=#0f0f0f guibg=#cfcfcf
" }}}
highlight Title gui=NONE guifg=#5f6f5f guibg=bg
highlight VertSplit gui=NONE guifg=#999999 guibg=bg
" Visual "{{{
highlight Visual gui=NONE guifg=#cfcfcf guibg=#0f2f5f
highlight VisualNOS gui=underline,bold guifg=#cfcfcf guibg=#2a3e9f
" }}}
highlight WarningMsg gui=NONE guifg=#721237 guibg=#af5f7f
highlight WildMenu gui=NONE guifg=#0f3f5f guibg=#cfcfcf
" fold "{{{
highlight Folded gui=NONE guifg=#000000 guibg=#9f9f9f
highlight FoldColumn gui=bold guifg=#2f3f5f guibg=bg
" }}}
" diff "{{{
highlight DiffAdd gui=bold guifg=#4e5d66 guibg=#afbfcf
highlight DiffChange gui=NONE guifg=#615292 guibg=#bfafff
highlight DiffDelete gui=bold guifg=#a62c74 guibg=#df9fff
highlight DiffText gui=NONE guifg=#3f3f3f guibg=bg
" }}}
highlight SignColumn gui=NONE gui=bold guifg=#7f375f guibg=bg
" spell "{{{
highlight SpellBad gui=bold guifg=#6f2f8f guibg=bg
highlight SpellCap gui=bold guifg=#2f5f8f guibg=bg
highlight SpellRare gui=bold guifg=#2f7f6f guibg=bg
highlight SpellLocal gui=bold guifg=#7f6f2f guibg=bg
" }}}
" pmenu "{{{
highlight Pmenu gui=NONE guifg=#333333 guibg=#cbcbc3
highlight PmenuSel gui=NONE guifg=#bfbfbf guibg=#2f265f
"highlight PmenuSbar guifg=#9c9c9c guibg=#4d2f4d
highlight PmenuSbar gui=NONE guifg=#000000 guibg=#3f3f3f
"highlight PmenuThumb gui=NONE guifg=#000000 guibg=#8f3f3f
highlight PmenuThumb gui=NONE guifg=#000000 guibg=#2f3f7f
" }}}
" tabline "{{{
" highlight TabLine gui=NONE guifg=#999999 guibg=#40404f
" highlight TabLineSel gui=NONE guifg=#cfcfcf guibg=#1f2f4f
" highlight TabLineFill gui=NONE guifg=#5f5f5f guibg=#353a3a
highlight TabLine gui=underline guifg=#3f5faf guibg=#0f0f1f
highlight TabLineSel gui=NONE guifg=#cfcfcf guibg=#1f2f4f
highlight TabLineFill gui=underline guifg=#2f2f5f guibg=#00001f
" }}}
" cursor "{{{
highlight CursorColumn gui=NONE guifg=#000000 guibg=#3a3b3c
highlight CursorLine gui=NONE guifg=NONE guibg=#7c96a9
highlight ColorColumn gui=NONE guifg=NONE guibg=#3a3b3c
highlight Cursor gui=NONE guifg=#000000 guibg=#00af5f
"IME status color for cursor "{{{
if has('multi_byte_ime') || has('xim')
  highlight CursorIM gui=NONE guifg=#000000 guibg=#af3f3f
endif "}}}
"}}}

" sytntax highlighting "{{{1
highlight lCursor gui=NONE guifg=#575757 guibg=#171615
highlight MatchParen gui=bold guifg=#101010 guibg=#4f73ad
highlight comment gui=NONE guifg=#0c4396  guibg=bg
highlight Constant gui=NONE guifg=#820960 guibg=bg
highlight Identifier gui=NONE guifg=#003f00 guibg=bg
highlight Special gui=NONE guifg=#4c524f guibg=bg
"highlight Statement gui=NONE guifg=#5c71ab guibg=#3a3b3c
highlight Statement gui=NONE guifg=#0f1f6f guibg=bg
"highlight PreProc guifg=#b871b7 guibg=#3a3b3c
highlight PreProc gui=NONE guifg=#7f0f4f guibg=bg
highlight type gui=NONE guifg=#1f4f2f guibg=bg
highlight underlined gui=bold,underline guifg=#2f5f1f guibg=bg
highlight Ignore gui=NONE guifg=#354b6c guibg=bg
highlight Error gui=NONE guifg=#af0f2f guibg=bg
highlight Todo gui=bold guifg=#0f0f0f guibg=#cf8fcf
highlight string gui=NONE guifg=#2f3faf guibg=bg

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

" END "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
