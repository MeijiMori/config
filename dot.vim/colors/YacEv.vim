" #- vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Made at 2011-04-05
" Guicolorscheme file
" Refer to Shougo's vim color (candy-ex)

" #- This color scheme uses a dark grey background. -# "{{{1
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
highlight Normal guifg=#cfcfcf guibg=#1f1f1f gui=NONE
highlight SpecialKey guifg=#4f3fef guibg=bg gui=NONE
highlight NonText guifg=#1f60ff guibg=bg gui=bold
highlight Directory guifg=#2f8f7f guibg=bg gui=bold
highlight ErrorMsg guifg=#cf2f5f guibg=NONE gui=NONE
" Search "{{{2
highlight IncSearch guifg=#1f5f2f guibg=#5faf5f gui=underline
highlight Search guifg=#1f2f5f guibg=#2f3faf gui=underline
" }}}2
highlight MoreMsg guifg=#2f8f5f guibg=bg gui=NONE
highlight ModeMsg guifg=#cfcfff guibg=bg gui=bold
highlight LineNr guifg=#cf8fff guibg=NONE gui=NONE
highlight Question guifg=#2fffaf guibg=NONE gui=NONE
" status line "{{{2
highlight StatusLine guifg=#000000 guibg=#c8c8d8 gui=NONE
highlight StatusLineNC guifg=#565234 guibg=#c4b2ab gui=NONE
" }}}2
highlight VertSplit guifg=#5f5f5f guibg=#c8c8d8 gui=NONE
highlight Title guifg=#cfcf7f guibg=bg gui=NONE
" visual "{{{2
highlight Visual guifg=#cfcfcf guibg=#0f1f3f gui=NONE
highlight VisualNOS guifg=#cfaf8f guibg=#2f3f6f gui=bold
" }}}2
highlight WarningMsg guifg=#ff2f8f guibg=bg gui=NONE
highlight WildMenu guifg=#0f1f5f guibg=#afafaf gui=underline
" fold "{{{2
highlight Folded guifg=#bfbfbf guibg=#1f203f gui=NONE
highlight FoldColumn guifg=#bfbfbf guibg=#0f203f gui=bold
" }}}2
" diff "{{{2
highlight DiffAdd guifg=#1f2f3f guibg=#5fafcf gui=NONE
highlight DiffChange guifg=#1f3f2f guibg=#5fcfaf gui=NONE
highlight DiffDelete guifg=#3f1f2f guibg=#cf5faf gui=NONE
highlight DiffText guifg=#cfcfcf guibg=bg gui=NONE
" }}}2
highlight SignColumn guifg=#4faf9f guibg=bg gui=NONE
" spell "{{{2
highlight SpellBad guifg=#cf2f7f guibg=bg gui=NONE
highlight SpellCap guifg=#2fcf7f guibg=bg gui=NONE
highlight SpellRare guifg=#7f2fcf guibg=bg gui=NONE
highlight SpellLocal guifg=#2f7fcf guibg=bg gui=NONE

" pmenu "{{{2
highlight Pmenu guifg=#cfcfcf guibg=#0f0f1f gui=NONE
highlight PmenuSel guifg=#ffffff guibg=#0f1f3f gui=NONE
highlight PmenuSbar guifg=#000000 guibg=#cfcfcf gui=NONE
highlight PmenuThumb guifg=#000000 guibg=#bfbf1f gui=NONE

" tabline "{{{2
highlight TabLine guifg=#9b9b9f guibg=#202020 gui=underline
highlight TabLineSel guifg=#bfbfbf guibg=#1f2f4f gui=NONE
highlight TabLineFill guifg=#415676 guibg=#202025 gui=underline

" cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
highlight CursorLine guifg=NONE guibg=#1f2f4f gui=NONE
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
highlight Cursor guifg=#000000 guibg=#008070 gui=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#bb00aa gui=NONE
endif
" }}}2


" #- syntax highlighting groups -# "{{{1
highlight lCursor guifg=#2f5faf guibg=#cccccc gui=NONE
highlight MatchParen guifg=#00000f guibg=#2f4f7f gui=bold
highlight Comment guifg=#3f5fff guibg=bg gui=NONE
highlight Constant guifg=#2f8f9f guibg=NONE gui=NONE
highlight Special guifg=#ffffdf guibg=NONE gui=NONE
highlight Identifier guifg=#2faf8f guibg=NONE gui=NONE
highlight Statement guifg=#2fcfaf guibg=NONE gui=NONE
highlight PreProc guifg=#cf8fff guibg=bg gui=NONE
highlight Type guifg=#6fafdf guibg=bg gui=NONE
highlight Underlined guifg=#8f3f5f guibg=#afafff gui=bold,underline
highlight Ignore guifg=#afafff guibg=bg gui=NONE
highlight Error guifg=#ff2f4f guibg=bg gui=NONE
highlight Todo guifg=#1f2faf guibg=#cfcfcf gui=bold
highlight String guifg=#8fefff guibg=NONE gui=NONE

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
