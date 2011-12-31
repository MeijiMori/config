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
let g:colors_name = "joker"

"#- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#1f001f gui=NONE
highlight SpecialKey guifg=#585fff guibg=bg gui=NONE
highlight NonText guifg=#1f59ff guibg=#1f0f1f gui=NONE
highlight Directory guifg=#2f5fe0 guibg=bg gui=bold
highlight ErrorMsg guifg=#f84865 guibg=bg gui=NONE
" search "{{{
highlight IncSearch guifg=#cfcfcf guibg=#2f0f5f gui=bold
highlight Search guifg=#cfcfcf guibg=#0f1f3f gui=bold
"}}}
highlight MoreMsg guifg=#4faf8f guibg=NONE gui=NONE
highlight ModeMsg guifg=#4f3fdf guibg=NONE gui=NONE
highlight LineNr guifg=#5f0f3f guibg=NONE gui=NONE
highlight Question guifg=#6acf95 guibg=NONE gui=NONE
" statusline "{{{
highlight StatusLine guifg=#ffffff guibg=#101020 gui=NONE
highlight StatusLineNC guifg=#565234 guibg=#c4b2ab gui=NONE
"}}}
highlight Title guifg=#72dc95 guibg=bg gui=NONE
highlight VertSplit guifg=#7f1f5f guibg=#0f0f0f gui=bold
" visual "{{{
highlight Visual guifg=#afafaf guibg=#1f0f3f gui=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f0f3f gui=underline,bold
"}}}
highlight WarningMsg guifg=#cf2f5f guibg=bg gui=NONE
highlight WildMenu guifg=#0f1f3f guibg=#afafaf gui=NONE
" fold "{{{
highlight Folded guifg=#cfcfbf guibg=#150f15 gui=underline
highlight FoldColumn  guifg=#1f7f8f guibg=#100f10 gui=bold
" }}}
" diff "{{{
highlight DiffAdd guifg=#afdfff guibg=bg gui=NONE
highlight DiffChange guifg=#cf8fff guibg=bg gui=NONE
highlight DiffDelete guifg=#f62c74 guibg=bg gui=bold
highlight DiffText guifg=#f9fbfe guibg=bg gui=NONE
" }}}
highlight SignColumn guifg=#ffffb0 guibg=bg gui=NONE
" spell "{{{
highlight SpellBad  guifg=#af5fbf guibg=bg gui=NONE
highlight SpellCap  guifg=#7f6fbf guibg=bg gui=NONE
highlight SpellRare guifg=#7fcfaf guibg=bg gui=NONE
highlight SpellLocal guifg=#bfaf5f guibg=bg gui=NONE
" }}}
" pmenu "{{{
highlight Pmenu guifg=#0f0f3f guibg=#bfbfff gui=NONE
highlight PmenuSel guifg=#bfbfbf guibg=#2f1f50 gui=NONE
highlight PmenuSbar guifg=#cccccc guibg=#101020 gui=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#1f2f5f gui=NONE
" }}}
" tabline "{{{
highlight TabLine guifg=#555555 guibg=#bbbbbb gui=NONE
highlight TabLineSel guifg=#afafaf guibg=#0f0f2f gui=NONE
highlight TabLineFill guifg=#5f5f5f guibg=#bfbfbf gui=NONE
" }}}
" cursor "{{{
highlight CursorColumn guifg=fg guibg=bg gui=NONE
highlight CursorLine guifg=NONE guibg=#2f0f2f gui=NONE
highlight ColorColumn guifg=fg guibg=bg gui=NONE
highlight Cursor gui=NONE guifg=#000000 guibg=#afafaf
" Cursor color for IME status"{{{
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#0f0f0f guibg=#8f1f3f gui=NONE
endif "}}}
" }}}

" #- Syntax highlighting group -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
highlight MatchParen guifg=#00000f guibg=#2f3f7f gui=bold
highlight comment guifg=#2f3fcf guibg=bg gui=NONE
highlight Constant guifg=#af2fcf guibg=bg gui=NONE
highlight Identifier guifg=#cf9f5f guibg=bg gui=NONE
highlight Special guifg=#afffcf guibg=bg gui=NONE
highlight Statement guifg=#2fcf8f guibg=bg gui=NONE
highlight PreProc guifg=#cf5f8f guibg=bg gui=NONE
highlight type guifg=#2faf8f guibg=bg gui=NONE
highlight underlined guifg=#568cff guibg=bg gui=underline
highlight Ignore guifg=#047f75 guibg=NONE gui=NONE
highlight Error guifg=#f04f7e guibg=bg gui=NONE
highlight Todo guifg=#8f1f5f guibg=#0f0f2f gui=bold
highlight string guifg=#ffc8e6 guibg=bg gui=NONE

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
