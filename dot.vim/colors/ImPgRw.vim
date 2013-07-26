" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file
" This colorscheme file is refered to my original colorscheme file that oeNmP.vim
" more darker and my music player's color that foobar2000

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
let g:colors_name = "ImPgRw"

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#16152d gui=NONE
highlight SpecialKey guifg=#3f2faf guibg=bg gui=NONE
highlight NonText guifg=#4e79c8 guibg=bg gui=NONE
highlight Directory guifg=#2f5faf guibg=bg gui=bold
highlight ErrorMsg guifg=#af2f6f guibg=bg gui=underline
" search "{{{2
highlight IncSearch guifg=#cfcfcf guibg=#8f2f5f gui=bold,underline
highlight Search guifg=#cfcfcf guibg=#21253f gui=bold,underline
"}}}2
highlight MoreMsg guifg=#0f3f1f guibg=#5fbf8f gui=underline
highlight ModeMsg guifg=#0f1f3f guibg=#5f8fbf gui=underline
highlight LineNr  guifg=#3faf7f guibg=NONE gui=NONE
highlight Question guifg=#0f5f2f guibg=#8fcf8f gui=underline
" statusline "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#0f102f gui=NONE
highlight StatusLineNC guifg=#6a6a6f guibg=#afafbf gui=NONE
"}}}2
highlight Title guifg=#ff5f2f guibg=NONE gui=underline
highlight VertSplit guifg=bg guibg=#0f0f1f gui=NONE
" visual "{{{2
highlight Visual guifg=#cfcfcf guibg=#0f1f3f gui=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f3f3f gui=underline
"}}}2
highlight WarningMsg guifg=#ff4765 guibg=bg gui=NONE
highlight WildMenu guifg=#c0afcf guibg=#0f1f2f gui=NONE
" fold "{{{2
highlight Folded guifg=#cfcfcf guibg=#1f1f35 gui=NONE
highlight FoldColumn guifg=#0f2faf guibg=bg gui=bold

" diff "{{{2
highlight DiffAdd guifg=#000000 guibg=#5fffaf gui=NONE
highlight DiffChange guifg=#0f0f0f guibg=#ffcfaf gui=NONE
highlight DiffDelete guifg=#0f0f0f guibg=#df4f9f gui=bold
highlight DiffText guifg=#cfcfcf guibg=bg gui=NONE
"}}}2
highlight SignColumn gui=NONE guifg=#ff2f5f guibg=bg
" spell "{{{2
highlight SpellBad guifg=#ff3f5f guibg=bg gui=underline
highlight SpellCap guifg=#1f2fff guibg=bg gui=NONE
highlight SpellRare guifg=#3fff7f guibg=bg gui=NONE
highlight SpellLocal guifg=#efdf3f guibg=bg gui=NONE

" pmenu "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#c0c0cf gui=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#0f1f3f gui=NONE
highlight PmenuSbar guifg=#cfcfcf guibg=#1a001f gui=NONE
highlight PmenuThumb guifg=#0f0f0f guibg=#afa21f gui=bold

" tabline "{{{2
" highlight TabLine guifg=#555555 guibg=#bbbbbb gui=NONE
" highlight TabLineSel guifg=#000000 guibg=#cccccc gui=NONE
" highlight TabLineFill guifg=#9f9f9f guibg=#bfbfbf gui=NONE
" highlight TabLineSel guifg=#cfcfcf guibg=#1f1f3f gui=NONE
" highlight TabLineFill guifg=#2f5fff guibg=#21253f gui=NONE
highlight TabLine guifg=#af8faf guibg=#0f0f1f gui=NONE
highlight TabLineSel guifg=#cfcfcf guibg=#21253f gui=NONE
highlight TabLineFill guifg=#2f5fff guibg=#0f0f1f gui=bold

" cursor "{{{2
highlight CursorColumn guifg=fg guibg=bg gui=NONE
highlight CursorLine guifg=NONE guibg=#1f1f3f gui=NONE
highlight ColorColumn guifg=fg guibg=bg gui=NONE
highlight Cursor guifg=#000000 guibg=#0f7f5f gui=NONE
" Cursor color for IME status "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#7f2f4f gui=NONE
endif
"}}}2


" #- syntax highlighting group -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
highlight MatchParen guifg=#000000 guibg=#0f2f5f gui=bold,underline
highlight comment guifg=#2f5f9f guibg=bg gui=NONE
highlight Constant guifg=#2faf7b guibg=bg gui=NONE
highlight Special guifg=#deffed guibg=bg gui=NONE
highlight Identifier guifg=#302faf guibg=bg gui=NONE
highlight Statement guifg=#3faf5f guibg=bg gui=NONE
highlight PreProc guifg=#af2fff guibg=bg gui=NONE
highlight type guifg=#1faf8f guibg=bg gui=NONE
highlight underlined guifg=#9f7fff guibg=bg gui=underline
highlight Ignore guifg=#047f75 gui=NONE gui=bold
highlight Error guifg=#ff2faf guibg=bg gui=NONE
highlight Todo guifg=#3f3f3f guibg=#bfbfbf gui=bold,underline
highlight string guifg=#ffcf8f guibg=bg gui=NONE

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
