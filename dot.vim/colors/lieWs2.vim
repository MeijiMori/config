﻿" #- vim colorscheme file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Made at 2012-04-29
" Guicolorscheme file
" Improved my colorscheme Brews

" #- Vim color file reset -#"{{{1
" First remove all existing highlighting.
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

" #- colorscheme name -#"{{{1
let g:colors_name = "lieWs2"

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#fdfdfd guibg=#303037 gui=NONE
highlight SpecialKey guifg=#8f5fff guibg=NONE gui=bold
highlight NonText guifg=#8f8fff guibg=#303030 gui=bold
highlight Directory guifg=#cf3f8f guibg=bg gui=bold
highlight ErrorMsg guifg=#5f1f2f guibg=#cf8faf gui=underline
" Search "{{{2
highlight IncSearch guifg=#0f5f3f guibg=#3faf7f gui=underline
highlight Search guifg=#5f0f3f guibg=#af3f7f gui=underline
"}}}2
highlight MoreMsg guifg=#0f5f3f guibg=#3faf7f gui=underline
highlight ModeMsg guifg=#6f6f8f guibg=#cfcfff gui=underline
highlight LineNr  guifg=#c3bcb4 guibg=NONE gui=NONE
highlight Question guifg=#0f3f5f guibg=#3f7faf gui=underline
" Statusline "{{{2
highlight StatusLine guifg=#aaaaaa guibg=#2f2f2f gui=NONE
highlight StatusLineNC guifg=#6f6f8f guibg=#cfcfff gui=underline
"}}}2
highlight Title guifg=#72dc95 guibg=NONE gui=underline
highlight VertSplit guifg=#1f5fdf guibg=#0f0f2f gui=NONE
" Visual "{{{2
highlight Visual guifg=fg guibg=#1f2f5f gui=NONE
highlight VisualNOS guibg=#aaeeee guifg=#3d3d3d gui=underline
"}}}2
highlight WarningMsg guifg=#5f2f0f guibg=#ff7f5f gui=underline
highlight WildMenu guifg=#cfcfcf guibg=#7f3f5f gui=underline
" Fold "{{{2
highlight Folded guifg=#cfcfff guibg=#1f1f2f gui=NONE
highlight FoldColumn guifg=#8f8fff guibg=#1f1f2f gui=bold


" Diff "{{{2
highlight DiffAdd guifg=fg guibg=#5f8f4f gui=NONE
highlight DiffChange guifg=fg guibg=#ff8f4f gui=NONE
highlight DiffDelete guifg=fg guibg=#cf2f3f gui=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
"}}}2
highlight SignColumn guifg=#afafff guibg=bg gui=NONE
" Spell "{{{2
highlight SpellBad guifg=#cf2f5f guibg=bg gui=NONE
highlight SpellCap guifg=#5f5fff guibg=bg gui=NONE
highlight SpellRare guifg=#5fff8f guibg=bg gui=NONE
highlight SpellLocal guifg=#bfcf5f guibg=bg gui=NONE


" Pmenu "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#afafff gui=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#1f1f1f gui=NONE
highlight PmenuSbar guifg=fg guibg=#1f1f2f gui=NONE
highlight PmenuThumb guifg=#5f0f0f guibg=#8f2f2f gui=NONE


" Tabline "{{{2
highlight TabLine guifg=#cccccc guibg=bg gui=underline
highlight TabLineSel guifg=#cccccc guibg=#2f3f5f gui=NONE
highlight TabLineFill guifg=#415676 guibg=bg gui=underline

" Cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
highlight CursorLine guifg=NONE guibg=#3f3f3f gui=NONE
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
highlight Cursor guifg=#0f0f0f guibg=#cfcfff gui=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af2f5f gui=NONE
endif


"}}}2


" #- Syntax highlighting group -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
highlight MatchParen guifg=#002f4f guibg=#3f7faf gui=bold
highlight comment guifg=#5f8fcf guibg=bg gui=NONE
highlight Constant guifg=#cf2f5f guibg=bg gui=NONE
highlight Identifier guifg=#5fff8f guibg=bg gui=NONE
highlight Special guifg=#cfffcf guibg=bg gui=NONE
highlight Statement guifg=#5f5fff guibg=bg gui=NONE
highlight PreProc guifg=#ffaf8f guibg=bg gui=NONE
highlight type guifg=#5fffaf guibg=bg gui=NONE
highlight underlined guifg=#6699cc guibg=bg gui=underline
highlight Ignore guifg=#7f7f7f guibg=bg gui=bold
highlight Error guifg=#ff2f5f guibg=bg gui=NONE
highlight Todo guifg=#a0a0ff guibg=bg gui=bold,underline
highlight string guifg=#afafff guibg=bg gui=NONE

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

