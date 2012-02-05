" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Inspered K_Rider Eternal



" #- reset -# "{{{1
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = "z1qt"

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#000000 guibg=#f0f0ff gui=NONE
highlight SpecialKey guifg=#6f2f6f guibg=bg gui=NONE
highlight NonText guifg=#5f33ff guibg=bg gui=NONE
highlight Directory guifg=#1f2f5f guibg=bg gui=bold
highlight ErrorMsg guifg=#cf2f4f guibg=#ffcfcf gui=NONE
" Search "{{{2
highlight IncSearch guifg=#000000 guibg=#af2f35 gui=bold
highlight Search guifg=#000000 guibg=#2f3faf gui=bold
"}}}2
highlight MoreMsg guifg=#2f4f7f guibg=#cfcfff gui=NONE
highlight ModeMsg guifg=#2faf8f guibg=#cfffcf gui=NONE
highlight LineNr guifg=#3f7faf guibg=NONE gui=NONE
highlight Question guifg=#2faf6f guibg=#cfffff gui=NONE
" Statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#2f2f4f gui=NONE
highlight StatusLineNC guifg=#6f6f6f guibg=#cfbfbf gui=NONE
" }}}2
highlight VertSplit guifg=bg guibg=bg gui=bold
highlight Title guifg=#2f7f86 guibg=bg gui=NONE
" Visual "{{{2
highlight Visual guifg=#ffffff guibg=#1f2f5f gui=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#3f4f7f gui=underline,bold
" }}}2
highlight WarningMsg guifg=#cf2f4f guibg=#ffdfff gui=NONE
highlight WildMenu guifg=#ffffff guibg=#0f2f5f gui=NONE
" Fold "{{{2
highlight Folded guifg=#0f0f0f guibg=#cfcfff gui=NONE
highlight FoldColumn guifg=#0f1f5f guibg=#cfcfff gui=bold
" }}}2
" Diff "{{{2
highlight DiffAdd guifg=fg guibg=#bfffbf gui=NONE
highlight DiffChange guifg=fg guibg=#ffffbf gui=NONE
highlight DiffDelete guifg=fg guibg=#ffbfbf gui=bold
highlight DiffText guifg=fg guibg=bg gui=NONE
" }}}2
highlight SignColumn guifg=#7f2f4f guibg=bg gui=NONE
" Spell "{{{2
highlight SpellBad guifg=#af3f5f guibg=bg gui=NONE
highlight SpellCap guifg=#3f4f7f guibg=bg gui=NONE
highlight SpellRare guifg=#3f7f6f guibg=bg gui=NONE
highlight SpellLocal guifg=#5faf3f guibg=bg gui=NONE

" Pmenu "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#cfcfff gui=NONE
highlight PmenuSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
highlight PmenuSbar guifg=#cccccc guibg=#2f2f2f gui=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#6f2f4f gui=NONE

" tabline "{{{2
" highlight TabLine guifg=#5f5f5f guibg=#cfcfcf gui=NONE
" highlight TabLineSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
" highlight TabLineFill guifg=#5f5f5f guibg=#afafaf gui=NONE
highlight TabLine guifg=#cf3f8f guibg=#0f1f3f gui=NONE
highlight TabLineSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
highlight TabLineFill guifg=#3f5fff guibg=#0f1f3f gui=NONE

" cursor "{{{2
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
highlight CursorLine guifg=NONE guibg=#dfefff gui=NONE
highlight Cursor guifg=#cfcfcf guibg=#1f2f6f gui=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af4f5f gui=NONE
endif

" }}}2

" #- Syntax highlighting groups -# "{{{1
highlight lCursor guifg=#2f2f2f guibg=#7ea3a6 gui=NONE
highlight MatchParen guifg=#0f0f0f guibg=#2f2f8d gui=bold
highlight comment guifg=#1f4faf guibg=bg gui=NONE
highlight Constant guifg=#1f5f3f guibg=bg gui=NONE
highlight Special guifg=#2f2f5f guibg=bg gui=NONE
highlight Identifier guifg=#9f2f3f guibg=bg gui=NONE
highlight Statement guifg=#4f5faf guibg=bg gui=NONE
highlight PreProc guifg=#9f2faf guibg=bg gui=NONE
highlight type guifg=#7f2f7f guibg=bg gui=NONE
highlight underlined guifg=#3f5faf guibg=#cfcfff gui=underline,bold
highlight Ignore guifg=#1f2f3f guibg=bg gui=bold
highlight Error guifg=#a04f7e guibg=#ffcfcf gui=NONE
highlight Todo guifg=#af2f5f guibg=#cfcfff gui=underline,bold
highlight String guifg=#8f4f2f guibg=bg gui=NONE


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
