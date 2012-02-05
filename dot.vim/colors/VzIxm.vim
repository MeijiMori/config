" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date
" Guicolorscheme file


" #- Vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
if version >= 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -# "{{{1
let g:colors_name = "VzIxm"

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#fdfdfd guibg=#303030 gui=NONE
highlight SpecialKey guifg=#759f9e guibg=NONE gui=NONE
highlight NonText guifg=#ffffff guibg=#383838 gui=NONE
highlight Directory guifg=#5787a6 guibg=bg gui=bold
highlight ErrorMsg guibg=bg guifg=#ffaaff gui=NONE
" search "{{{2
highlight IncSearch guifg=#000000 guibg=#6f8faf gui=NONE
highlight Search guifg=#111111 guibg=#ff8faf gui=NONE
" }}}2
highlight MoreMsg guifg=#99ff99 guibg=#30303f gui=NONE
highlight ModeMsg guifg=#fffeee guibg=#30303f gui=NONE
highlight LineNr guifg=#60656f guibg=NONE gui=NONE
highlight Question guifg=#53e6a9 guibg=bg gui=NONE
" statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#32353b gui=NONE
highlight StatusLineNC guifg=#3f3f37 guibg=#52514c gui=NONE
" }}}2
highlight Title guifg=#2fd4c6 guibg=bg gui=NONE
highlight VertSplit guifg=#aaaaaa guibg=#2f2f30 gui=NONE
" visual "{{{2
highlight Visual guifg=#cfcfcf guibg=#1f3f6f gui=NONE
highlight VisualNOS guibg=#aaeeee guifg=#3d3d3d gui=underline,bold
" }}}2
highlight WarningMsg guifg=#ef5faf guibg=bg gui=NONE
highlight WildMenu guifg=#3f50cf guibg=#cfcfcf gui=NONE
" fold "{{{2
highlight Folded guifg=#bfbfcf guibg=#2f2f30 gui=NONE
highlight FoldColumn guifg=#4f6dc3 guibg=#2f2f30 gui=bold

" diff "{{{2
highlight DiffAdd guifg=#aacbde guibg=bg gui=NONE
highlight DiffChange guifg=#998dbf guibg=bg gui=NONE
highlight DiffDelete guifg=#a62c74 guibg=bg gui=bold
highlight DiffText guifg=#c9cbce guibg=bg gui=bold
" }}}2
highlight SignColumn guibg=bg guifg=#a65774 gui=NONE
" spell "{{{2
highlight SpellBad guifg=#af8fbf guibg=bg gui=NONE
highlight SpellCap guifg=#8f9fbf guibg=bg gui=NONE
highlight SpellRare guifg=#8fcfbf guibg=bg gui=NONE
highlight SpellLocal guifg=#cfbf8f guibg=bg gui=NONE

" pmenu "{{{2
highlight Pmenu guifg=#5f5f5f guibg=#cfcfcf gui=NONE
highlight PmenuSel guifg=#d2d2d2 guibg=#5f385f gui=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=#4d2f4d gui=NONE
highlight PmenuThumb guifg=#3d3f3d guibg=#1f1f2f gui=NONE

" tabline "{{{2
highlight TabLine guifg=#995050 guibg=bg gui=underline
highlight TabLineSel guifg=#675090 guibg=bg gui=underline
highlight TabLineFill guifg=#769950 guibg=bg gui=underline

" cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
highlight CursorLine guifg=NONE guibg=#432230 gui=NONE
highlight ColorColumn guifg=#0088ff guibg=bg gui=NONE
highlight Cursor guifg=#000000 guibg=#00ee99 gui=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#ffb6c1 gui=NONE
endif

" }}}2

" #- Syntax highlighting group -# "{{{1
highlight lCursor guibg=#7ea3a6 guifg=#a68d7e gui=NONE
highlight MatchParen guifg=#2f2f4f guibg=#cf8faf gui=bold
highlight Constant guifg=#aaeeaa guibg=bg gui=NONE
highlight comment guifg=#646464 guibg=NONE gui=NONE
highlight Identifier guifg=#9cb79c guibg=bg gui=NONE
highlight Special guifg=#deffed guibg=bg gui=NONE
highlight Statement guifg=#c4a76a guibg=bg gui=NONE
highlight PreProc guifg=#ffadfe guibg=bg gui=NONE
highlight type guifg=#81a09a guibg=bg gui=NONE
highlight underlined guifg=#66af9c guibg=#303f3f gui=underline
highlight Ignore guifg=#8f8f8f guibg=bg gui=NONE
highlight Error guifg=#a04f7e guibg=bg gui=bold
highlight Todo guifg=#4e5ca0 guibg=#23252f gui=bold
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

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
