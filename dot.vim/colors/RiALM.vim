﻿" #- vim color file -# "{{{1
" Note: "{{{2
" hilight ZenkakuSpace /　/
" matchparen ({[*]})
" This colorscheme is improved darkblue

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
let colors_name = "RiALM"

" #- highlighting groups various ooccasions -# "{{{1
highlight Normal guifg=#efefef guibg=#192a4f gui=NONE
highlight SpecialKey guifg=#5f2fcf guibg=NONE gui=NONE
highlight NonText guifg=#99ffff guibg=#1f2f4f gui=NONE
highlight Directory guifg=#5f8fff guibg=bg gui=bold
highlight ErrorMsg guifg=#5f1f3f guibg=#cf3f5f gui=underline
" search "{{{2
highlight IncSearch guifg=#5f3f2f guibg=#bf6f4f gui=underline
highlight Search guifg=#0f3f5f guibg=#4f6fbf gui=underline
" }}}2
highlight MoreMsg guifg=#0f5f8f guibg=#3f8fcf gui=underline
highlight ModeMsg guifg=#5f5f5f guibg=#cfcfcf gui=underline
highlight LineNr ctermfg=white guifg=#75d99d gui=NONE
highlight Question guifg=#0f8f5f guibg=#3fcf8f gui=underline
" statusline "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#101f3f gui=NONE
highlight StatusLineNC guifg=#5f5f3f guibg=#c4b2ab gui=NONE
" }}}2
highlight Title guifg=#2fd4c6 guibg=bg gui=bold,underline
highlight VertSplit guifg=#23447f guibg=#1f1f4f gui=NONE
" visual "{{{2
highlight Visual gui=NONE guifg=#ffffff guibg=#001f3f
highlight VisualNOS gui=underline,bold guifg=#cfcfcf guibg=#0f2f5f
" }}}2
highlight WarningMsg guifg=#5f2f8f guibg=#cf5fff gui=underline
highlight WildMenu guifg=#ffffff guibg=#1f3f5f gui=NONE
" fold "{{{2
highlight Folded guifg=#bfbfbf guibg=#102040 gui=NONE
highlight FoldColumn guifg=#ffffff guibg=#1f2f5f gui=bold

" diff "{{{2
highlight DiffAdd guifg=fg guibg=#5f8f4f gui=NONE
highlight DiffChange guifg=fg guibg=#cf6f4f gui=NONE
highlight DiffDelete guifg=fg guibg=#9f2f3f gui=bold
highlight DiffText guifg=fg guibg=bg gui=NONE
" }}}2
highlight SignColumn guifg=#ff5f7f guibg=bg gui=NONE
" spell "{{{2
highlight SpellBad guifg=#cf5fdf guibg=bg gui=NONE
highlight SpellCap guifg=#5f9fff guibg=bg gui=NONE
highlight SpellRare guifg=#5fff8f guibg=bg gui=NONE
highlight SpellLocal guifg=#ffcf5f guibg=bg gui=NONE

" pmenu "{{{2
highlight pmenu guifg=#cfcfcf guibg=#050f2f gui=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#0f1f3f gui=NONE
highlight pmenuSbar guifg=#afafaf guibg=#0f0f0f gui=NONE
highlight PmenuThumb guifg=#afafaf guibg=#0f1f1f gui=NONE

" tabline "{{{2
highlight TabLine guifg=#aaaaaa guibg=#190a3f gui=underline
highlight TabLineSel guifg=#cfcfcf guibg=#15305f gui=NONE
highlight TabLineFill guifg=#415676 guibg=#100a3f gui=underline,bold

" cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
highlight CursorLine guifg=NONE guibg=#1f2f5f gui=NONE
highlight CursorColumn guifg=NONE guibg=grey40 gui=NONE
highlight Cursor guifg=#000000 guibg=#5faf7f gui=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#bfbfbf guibg=#5f0f3f gui=NONE
endif

" }}}2

" #- syntax highlighting group -# "{{{1
highlight lCursor guifg=#000000 guibg=#5fcfaf gui=NONE
highlight MatchParen guifg=#1f0f3f guibg=#3f5f8f gui=bold
highlight comment guifg=#3f5fff guibg=bg gui=NONE
highlight Constant guifg=#7fffaf guibg=bg gui=NONE
highlight Special guifg=#deffed guibg=bg gui=NONE
highlight Identifier guifg=#b6f5eb guibg=bg gui=NONE
highlight Statement guifg=#ffcf7f guibg=bg gui=NONE
highlight PreProc guifg=#ffadfe guibg=bg gui=NONE
highlight type guifg=#59c390 guibg=bg gui=NONE
highlight underlined guifg=#56efcc guibg=bg gui=underline
highlight Ignore guifg=#4f50ff guibg=bg gui=bold
highlight Error guifg=#fd4899 guibg=bg gui=NONE
highlight string guifg=#ffc8ff guibg=bg gui=NONE
highlight Todo guifg=#cfafcf guibg=#1f2f5f gui=bold,underline

" #- color functions -# "{{{1
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

" #- END: -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
