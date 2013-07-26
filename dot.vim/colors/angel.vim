" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file
" Inspired Dragon that angel

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
let g:colors_name = "angel"

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#1f000f gui=NONE
highlight SpecialKey guifg=#3f0fff guibg=bg gui=NONE
highlight NonText guifg=#3f0fff guibg=bg gui=NONE
highlight Directory guifg=#2f2fff guibg=bg gui=NONE
highlight ErrorMsg guifg=#af0f3f guibg=bg gui=NONE
" search "{{{2
highlight IncSearch guifg=#ffffff guibg=#5f0f2f gui=bold
highlight Search guifg=#cfcfcf guibg=#0f0f7f gui=bold
"}}}2
highlight MoreMsg guifg=#0faf5f guibg=bg gui=NONE
highlight ModeMsg guifg=#3f0fff guibg=NONE gui=NONE
highlight LineNr guifg=#af0f3f guibg=NONE gui=NONE
highlight Question guifg=#0fbf5f guibg=NONE gui=NONE
" statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#000510 gui=NONE
highlight StatusLineNC guifg=#5f3f3f guibg=#bfafaf gui=NONE
"}}}2
highlight Title guifg=#9f223f guibg=bg gui=NONE
highlight VertSplit guifg=#7f1f5f guibg=bg gui=bold
" visual "{{{2
highlight Visual guifg=#afafaf guibg=#0f002f gui=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f0f3f gui=underline,bold
"}}}2
highlight WarningMsg guifg=#cf2f5f guibg=bg gui=NONE
highlight WildMenu guifg=#1f2f5f guibg=#afafaf gui=NONE
" fold "{{{2
highlight Folded guifg=#9f9f9f guibg=#0f050f gui=NONE
highlight FoldColumn guifg=#1f6f5f guibg=#0f050f gui=bold

" diff "{{{2
highlight DiffAdd guifg=#cfcfcf guibg=#1f2faf gui=NONE
highlight DiffChange guifg=#cfcfcf guibg=#5f1faf gui=bold
highlight DiffDelete guifg=#cfcfcf guibg=#af2f3f gui=bold
highlight DiffText guifg=#cfcfcf guibg=bg gui=NONE
" }}}2
highlight SignColumn guifg=#ffffb0 guibg=bg gui=NONE
" spell "{{{2
highlight SpellBad guifg=#7f2f8f guibg=bg gui=NONE
highlight SpellCap guifg=#2f3f5f guibg=bg gui=NONE
highlight SpellRare guifg=#2f8f4f guibg=bg gui=NONE
highlight SpellLocal guifg=#8f7f2f guibg=bg gui=NONE

" pmenu "{{{2
highlight Pmenu guifg=#1f1f1f guibg=#bfbfff gui=NONE
highlight PmenuSel guifg=#bfbfbf guibg=#1f0f30 gui=NONE
highlight PmenuSbar guifg=#cccccc guibg=#101020 gui=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#0f001f gui=NONE

" tabline "{{{2
highlight TabLine guifg=#2f2f2f guibg=#bbbbbb gui=NONE
highlight TabLineSel guifg=#afafaf guibg=#0f0f2f gui=NONE
highlight TabLineFill guifg=#3f3f3f guibg=#bfbfbf gui=NONE

" cursor "{{{2
highlight CursorColumn guifg=NONE guibg=#00000f gui=NONE
highlight CursorLine guifg=NONE guibg=#1f051f gui=NONE
highlight ColorColumn guifg=fg guibg=bg gui=NONE
highlight Cursor guifg=#0f0f0f guibg=#cfbfaf gui=NONE
"IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#bfbfbf guibg=#5f0f2f gui=NONE
endif

" }}}2

" #- Syntax highlighting group -# "{{{1
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
highlight MatchParen guifg=#0f0f0f guibg=#2f3faf gui=bold
highlight comment guifg=#1f2fff guibg=bg gui=NONE
highlight Constant guifg=#8d2f9f guibg=bg gui=NONE
highlight Special guifg=#afdfff guibg=bg gui=NONE
highlight Identifier guifg=#cfaf5f guibg=bg gui=NONE
highlight Statement guifg=#0faf7f guibg=bg gui=NONE
highlight PreProc guifg=#bf3fcf guibg=bg gui=NONE
highlight type guifg=#3fcf9f guibg=bg gui=NONE
highlight underlined guifg=#2f5fff guibg=bg gui=underline
highlight Ignore guifg=#047f75 guibg=NONE gui=bold
highlight Error guifg=#bf2f3f guibg=bg gui=NONE
highlight Todo guifg=#5f2fff guibg=#1f0f2f gui=bold
highlight string guifg=#4f2ff6 guibg=bg gui=NONE

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
