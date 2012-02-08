" #- Vim color file -# "{{{1
" Note: "{{{2
" highlighting ZenkakuSpace /　/
" MatchParen "{[(*)]}
" This colorscheme is light my original olorscheme that RiALM

" #- reset -# "{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -# "{{{1
let g:colors_name = "Ws2fr"

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#ffffff guibg=#1f2f64 gui=NONE
highlight SpecialKey guifg=#759f9e guibg=NONE gui=NONE
highlight NonText guifg=#aaccff guibg=bg gui=NONE
highlight Directory guifg=#4eacbd guibg=bg gui=NONE
highlight ErrorMsg guifg=#6091e1 guibg=bg gui=NONE
highlight IncSearch guifg=#0f0f0f guibg=#cf1fff gui=bold
highlight Search guifg=#0f0f0f guibg=#2f38cf gui=bold
highlight MoreMsg guifg=#5c8ad6 guibg=bg gui=NONE
highlight ModeMsg guifg=#fffeee guibg=#0f1f5f gui=NONE
highlight LineNr  ctermfg=white guifg=#75d99d gui=NONE
highlight Question guifg=#7bdccb guibg=bg gui=NONE
" statusline "{{{2
highlight StatusLine guifg=#e5e5e5 guibg=#102854 gui=NONE
highlight StatusLineNC  guifg=#564234 guibg=#b2a089 gui=NONE
" }}}2
highlight VertSplit guifg=#4f6dc3 guibg=#1e2446 gui=NONE
highlight Title guifg=#ffffff guibg=#03344b gui=NONE
" Visual "{{{2
highlight Visual guifg=#cfcfcf guibg=#000f3f gui=NONE
highlight VisualNOS gui=bold,underline  guibg=#0f2f5f guifg=#cfcfcf
"}}}2
highlight WarningMsg guifg=#ff2faf guibg=bg gui=NONE
highlight WildMenu guifg=#ffffff guibg=#28376b gui=NONE
" fold "{{{2
highlight Folded guifg=#cfcfcf guibg=#0f1f3f gui=NONE
highlight FoldColumn guifg=#cfcfcf guibg=#0f2f5f gui=bold

" Diff "{{{2
highlight DiffAdd guifg=#5abbff guibg=bg gui=NONE
highlight DiffChange guifg=#cf6ddf guibg=bg gui=NONE
highlight DiffDelete guifg=#ff0c8f guibg=bg gui=NONE
highlight DiffText guifg=#c9cbce guibg=bg gui=NONE
" }}}2
highlight SignColumn guifg=#ff8f5f guibg=bg gui=NONE
" spell "{{{2
highlight SpellBad guifg=#f95f4f guibg=bg gui=NONE
highlight SpellCap guifg=#5f9fff guibg=bg gui=NONE
highlight SpellRare guifg=#50c982 guibg=bg gui=NONE
highlight SpellLocal guifg=#f9fc50 guibg=bg gui=NONE

" pmenu "{{{2
highlight Pmenu guifg=#a4a9a4 guibg=#1d1f3d gui=NONE
highlight PmenuSel guifg=#dddddd guibg=#1f3f5f gui=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=#1f1f1f gui=NONE
highlight PmenuThumb guifg=#0f1f3f guibg=#3f3f3f gui=NONE

" tabline "{{{2
highlight TabLine guifg=#82a3ff guibg=#171e4b gui=underline
highlight TabLineSel guifg=#ffffff guibg=#28376b gui=NONE
highlight TabLineFill guifg=#82a3ff guibg=#171e4b gui=underline

" cursor "{{{2
highlight CursorColumn guifg=#000000 guibg=#0f2f5f gui=NONE
highlight CursorLine guifg=NONE guibg=#1e418c gui=NONE
highlight ColorColumn guifg=NONE guibg=#2e21ac gui=NONE
highlight Cursor guifg=#000000 guibg=#0faf5f gui=NONE
" For IME status color cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guibg=#992345 guifg=#000000 gui=NONE
endif

" }}}2

" #- Syntax highlighting groups -# "{{{1
highlight lCursor guifg=#000000 guibg=#2ebc99 gui=NONE
highlight MatchParen guifg=#0f0f1f guibg=#2f5fcf gui=bold
highlight comment guifg=#1090d9 guibg=bg gui=NONE
highlight Constant guifg=#caf5a0 guibg=bg gui=NONE
highlight Special guifg=#deffed guibg=#202b6c gui=NONE
highlight Identifier guifg=#b6f5eb guibg=bg gui=NONE
highlight Statement guifg=#ffcf5f guibg=bg gui=NONE
highlight PreProc guifg=#fdacfc guibg=bg gui=NONE
highlight Type guifg=#70ac8f guibg=bg gui=NONE
highlight Underlined guifg=#76abfa guibg=NONE gui=underline
highlight Ignore guifg=#2985bf guibg=bg gui=bold
highlight Error guifg=#6588e1 guibg=bg gui=NONE
highlight Todo guifg=#cf65c3 guibg=#1f1f5f gui=bold
highlight string guifg=#ffc8ff guibg=bg gui=NONE

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
