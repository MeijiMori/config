" #- vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Made at 2011-04-05
" Guicolorscheme file
" Refer to Shougo's vim color (candy-ex)

" #- This color scheme uses a dark grey background. -# "{{{1
" First remove all existing highlighting.
set background=dark
highlight clear
if version > 580
 highlight clear
 if exists("syntax_on")
 syntax reset
 endif
endif

" #- This colorscheme name -# "{{{1
let colors_name = "YacEv"

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal gui=NONE guifg=#cfcfcf guibg=#1f1f1f
"highlight SpecialKey ctermfg=darkgreen gui=NONE guifg=#af7fdf guibg=bg
highlight SpecialKey gui=NONE guifg=#4f3fef guibg=bg
highlight NonText gui=bold guifg=#1f60ff guibg=bg
highlight Directory gui=NONE guifg=#2f8f7f guibg=bg
highlight ErrorMsg gui=NONE guifg=#cf2f5f guibg=NONE
" Search "{{{
highlight IncSearch gui=bold guifg=#0f0f0f guibg=#5faf5f
highlight Search gui=bold guifg=#0f0f0f guibg=#2f3faf
" }}}
highlight MoreMsg gui=NONE guifg=#2f8f5f guibg=bg
highlight ModeMsg gui=bold guifg=#cfcfff guibg=bg
highlight LineNr gui=NONE guifg=#cf8fff guibg=NONE
highlight Question gui=NONE guifg=#2fffaf guibg=NONE
" status line "{{{
" highlight StatusLine gui=NONE guifg=#000000 guibg=#afafff
highlight StatusLine gui=NONE guifg=#000000 guibg=#c8c8d8
highlight StatusLineNC gui=NONE guifg=#565234 guibg=#c4b2ab
" }}}
" highlight VertSplit gui=NONE guifg=#5f5f5f guibg=#cfcfcf
highlight VertSplit gui=NONE guifg=#5f5f5f guibg=#c8c8d8
highlight Title gui=NONE guifg=#cfcf7f guibg=bg
" visual "{{{
highlight Visual gui=NONE guifg=#cfcfcf guibg=#0f1f3f
highlight VisualNOS gui=bold guifg=#cfaf8f guibg=#2f3f6f
" }}}
highlight WarningMsg gui=NONE guifg=#ff2f8f guibg=bg
" highlight WildMenu gui=NONE guifg=#afafaf guibg=#1f2f4f
highlight WildMenu gui=NONE guifg=#0f1f5f guibg=#afafaf
" fold "{{{
"highlight Folded ctermfg=grey ctermbg=darkgrey guifg=#bfbfbf guibg=#1f2f3f
highlight Folded gui=NONE guifg=#bfbfbf guibg=#1f203f
highlight FoldColumn gui=bold guifg=#bfbfbf guibg=#0f203f
" }}}
" diff "{{{
highlight DiffAdd gui=NONE guifg=#1f2f3f guibg=#5fafcf
highlight DiffChange gui=NONE guifg=#1f3f2f guibg=#5fcfaf
highlight DiffDelete gui=NONE guifg=#3f1f2f guibg=#cf5faf
highlight DiffText gui=NONE guifg=#cfcfcf guibg=bg
" }}}
highlight SignColumn gui=NONE guifg=#4faf9f guibg=bg
" spell "{{{
highlight SpellBad gui=NONE guifg=#cf2f7f guibg=bg
highlight SpellCap gui=NONE guifg=#2fcf7f guibg=bg
highlight SpellRare gui=NONE guifg=#7f2fcf guibg=bg
highlight SpellLocal gui=NONE guifg=#2f7fcf guibg=bg
" }}}
" pmenu "{{{
highlight Pmenu gui=NONE guifg=#cfcfcf guibg=#0f0f1f
highlight PmenuSel gui=NONE guifg=#ffffff guibg=#0f1f3f
highlight PmenuSbar gui=NONE guifg=#000000 guibg=#cfcfcf
highlight PmenuThumb gui=NONE guifg=#000000 guibg=#bfbf1f
" }}}
"tabline "{{{
highlight TabLine gui=underline guifg=#9b9b9f guibg=#202020
highlight TabLineSel gui=NONE guifg=#bfbfbf guibg=#1f2f4f
highlight TabLineFill gui=underline guifg=#415676 guibg=#202025
"}}}
" cursor "{{{
highlight ColorColumn gui=NONE guifg=NONE guibg=#cfcfff
highlight CursorLine gui=NONE guifg=NONE guibg=#1f2f4f
highlight CursorColumn gui=NONE guifg=#000000 guibg=#2f2f2f
" highlight Cursor gui=NONE guifg=#000000 guibg=#2f807f
highlight Cursor gui=NONE guifg=#000000 guibg=#008070
" IME status color for cursor "{{{
if has('multi_byte_ime') || has('xim')
  " highlight CursorIM gui=NONE guifg=#000000 guibg=#af2f3f
  highlight CursorIM gui=NONE guifg=#000000 guibg=#bb00aa
endif
"}}}
" }}}

" #- syntax highlighting groups -# "{{{1
highlight lCursor gui=NONE guifg=#2f5faf guibg=#cccccc
highlight MatchParen gui=bold guifg=#00000f guibg=#2f4f7f
highlight Comment gui=NONE guifg=#3f5fff guibg=bg
highlight Constant gui=NONE guifg=#2f8f9f guibg=NONE
highlight Special gui=NONE guifg=#ffffdf guibg=NONE
highlight Identifier gui=NONE guifg=#2faf8f guibg=NONE
highlight Statement gui=NONE guifg=#2fcfaf guibg=NONE
highlight PreProc gui=NONE guifg=#cf8fff guibg=bg
highlight Type gui=NONE guifg=#6fafdf guibg=bg
" highlight Underlined gui=underline guifg=#bfbfbf guibg=#4f2f3f
highlight Underlined gui=bold,underline guifg=#8f3f5f guibg=#afafff
highlight Ignore gui=NONE guifg=#afafff guibg=bg
highlight Error gui=NONE guifg=#ff2f4f guibg=bg
highlight Todo gui=bold guifg=#1f2faf guibg=#cfcfcf
highlight String gui=NONE guifg=#8fefff guibg=NONE
" highlight Function gui=NONE guifg=#1fffaf guibg=bg
" highlight Operator gui=NONE guifg=#4f5fff guibg=bg
" highlight Include gui=NONE guifg=#cf5fff guibg=bg
" highlight Define gui=NONE guifg=#3fcf7f guibg=bg
" highlight Structure gui=NONE guifg=#ffffaf guibg=bg

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
