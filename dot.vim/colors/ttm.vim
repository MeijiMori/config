" #- Vim color file -# "{{{1
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

" #- Colorscheme name -# "{{{1
let g:colors_name = "ttm"

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#0f0f0f gui=NONE
highlight SpecialKey guifg=#5f0fcf guibg=bg gui=NONE
highlight NonText guifg=#2f8f2f guibg=#1f0f1f gui=NONE
highlight Directory guifg=#2f5fe0 guibg=bg gui=bold
highlight ErrorMsg guifg=#af082f guibg=#ffafaf gui=NONE
" search "{{{2
highlight IncSearch guifg=#cfcfcf guibg=#3f5f1f gui=bold
highlight Search guifg=#cfcfcf guibg=#2f1f5f gui=bold
"}}}2
highlight MoreMsg guifg=#2f8f6f guibg=#afffaf gui=NONE
highlight ModeMsg guifg=#2f1fbf guibg=#afafff gui=NONE
highlight LineNr guifg=#5f0f3f guibg=NONE gui=NONE
highlight Question guifg=#2faf2f guibg=#afffaf gui=NONE
" statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#101020 gui=NONE
highlight StatusLineNC guifg=#565234 guibg=#c4b2ab gui=NONE
"}}}2
highlight Title guifg=#72dc95 guibg=bg gui=NONE
highlight VertSplit guifg=#7f1f5f guibg=#0f0f0f gui=bold
" visual "{{{2
highlight Visual guifg=#afafaf guibg=#1f0f2f gui=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f2f3f gui=underline,bold
"}}}2
highlight WarningMsg guifg=#ff0f3f guibg=#ffafaf gui=NONE
highlight WildMenu guifg=#cfcfcf guibg=#0f6f1f gui=bold
" fold "{{{2
highlight Folded guifg=#9f9f9f guibg=#150f15 gui=NONE
 highlight FoldColumn guifg=#1f7f8f guibg=#100f10 gui=bold

" diff "{{{2
highlight DiffAdd guifg=fg guibg=#0f8f3f gui=NONE
highlight DiffChange guifg=fg guibg=#5f6f00 gui=NONE
highlight DiffDelete guifg=fg guibg=#8f0f3f gui=bold
highlight DiffText guifg=fg guibg=bg gui=NONE
" }}}
highlight SignColumn guibg=bg guifg=#ffffb0 gui=NONE
" spell "{{{2
highlight SpellBad guifg=#af5fbf guibg=bg gui=NONE
highlight SpellCap guifg=#7f6fbf guibg=bg gui=NONE
highlight SpellRare guifg=#7fcfaf guibg=bg gui=NONE
highlight SpellLocal guifg=#bfaf5f guibg=bg gui=NONE

" pmenu "{{{2
"highlight Pmenu guifg=#cccccd guibg=#3f3f3f gui=NONE
"highlight PmenuSel guifg=#ededed guibg=#415676 gui=NONE
"highlight PmenuSbar guifg=#9c9c9c guibg=#404040 gui=NONE
"highlight PmenuThumb guifg=#415676 guibg=#404040 gui=reverse
highlight Pmenu guifg=#1f1f1f guibg=#afafcf gui=NONE
highlight PmenuSel guifg=#bfbfbf guibg=#2f1f50 gui=NONE
highlight PmenuSbar guifg=#cccccc guibg=#101020 gui=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#1f2f5f gui=NONE

" tabline "{{{2
highlight TabLine guifg=#9b9b9f guibg=#1f1f1f gui=NONE
highlight TabLineSel guifg=#cfcfcf guibg=#1f2f5f gui=NONE
highlight TabLineFill guifg=#7f7f7f guibg=#1f1f1f gui=underline

" cursor "{{{2
highlight CursorColumn guifg=fg guibg=bg gui=NONE
highlight CursorLine guifg=NONE guibg=#2f0f2f gui=NONE
highlight ColorColumn guifg=fg guibg=bg gui=NONE
highlight Cursor guifg=#000000 guibg=#afafaf gui=NONE
"IME status color for cursor "{{{3
if has('multi_byte_ime')
  highlight CursorIM guifg=#0f0f0f guibg=#8f0f2f gui=NONE
endif

" }}}2

" #- Syntax highlighting group -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
highlight MatchParen guifg=#0f0f0f guibg=#3f2f8f gui=bold
highlight comment guifg=#2f5faf guibg=bg gui=NONE
highlight Constant guifg=#8d549f guibg=bg gui=NONE
highlight Identifier guifg=#ffff6f guibg=bg gui=NONE
highlight Special guifg=#aeffed guibg=bg gui=NONE
highlight Statement guifg=#3faf5f guibg=bg gui=NONE
highlight PreProc guifg=#2f21f7 guibg=bg gui=NONE
highlight type guifg=#5faf8f guibg=bg gui=NONE
highlight underlined guifg=#2fcf8f guibg=bg gui=underline
highlight Ignore guifg=#047f75 guibg=NONE gui=bold
highlight Error guifg=#af2f5f guibg=#ff8faf gui=NONE
highlight Todo guifg=#ff5f2a guibg=#000000 gui=bold,underline
highlight string guifg=#5f6fcf guibg=bg gui=NONE

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

