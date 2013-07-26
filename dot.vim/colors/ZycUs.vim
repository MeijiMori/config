" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date

" #- First remove all existing highlighting. -# "{{{1
set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    highlight clear
    if exists("syntax_on")
        syntax reset
    endif
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = "ZycUs"
" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfbf guibg=#0f0f0f gui=NONE
highlight SpecialKey guifg=#af2f5f guibg=bg gui=NONE
highlight NonText guifg=#4f5fcf guibg=bg gui=bold
highlight Directory guifg=#5f8fcf guibg=bg gui=NONE
highlight ErrorMsg gui=NONE guifg=#cf2f4f guibg=NONE
" search "{{{2
highlight IncSearch guifg=#000000 guibg=#8f9fff gui=bold
highlight Search guifg=#000000 guibg=#afcfff gui=bold
"}}}2
highlight MoreMsg guifg=#1f7f3f guibg=#afffcf gui=NONE
highlight ModeMsg guifg=#1f3f7f guibg=#8fafcf gui=NONE
highlight LineNr guifg=#ff8f7f guibg=NONE gui=NONE
highlight Question guifg=#2fffcf guibg=bg gui=NONE
" statusline "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#0f1f2f gui=NONE
highlight StatusLineNC guifg=#afafaf guibg=#2f0025 gui=NONE
" }}}2
highlight VertSplit guifg=#6f6f6f guibg=#dfdfdf gui=NONE
highlight Title guifg=#5fcfaf guibg=bg gui=NONE
" visual "{{{2
highlight Visual guifg=#ffffff guibg=#0f1f3f gui=NONE
highlight VisualNOS guifg=#ffffff guibg=#3f4f7f gui=underline,bold
" }}}2
highlight WarningMsg guifg=#cf2f4f guibg=bg gui=NONE
highlight WildMenu guifg=#cfcfcf guibg=#0f0f2f gui=NONE
" fold "{{{2
highlight Folded guifg=#3f5faf guibg=#0f0f2f gui=NONE
highlight FoldColumn guifg=#2f2f8f guibg=#0f0f2f gui=bold

" diff "{{{2
highlight DiffAdd guifg=#7fafff guibg=bg gui=NONE
highlight DiffChange guifg=#ff8faf guibg=bg gui=NONE
highlight DiffDelete guifg=#af5faf guibg=bg gui=bold
highlight DiffText guifg=fg guibg=bg gui=NONE
" }}}2
highlight SignColumn guifg=#cf4f8f guibg=bg gui=NONE
" spell "{{{2
highlight SpellBad guifg=#af5fcf guibg=bg gui=NONE
highlight SpellCap guifg=#6f7fff guibg=bg gui=NONE
highlight SpellRare guifg=#6fcf9f guibg=bg gui=NONE
highlight SpellLocal guifg=#8fdf6f guibg=bg gui=NONE

" pmenu "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#bfbfcf gui=NONE
highlight PmenuSel guifg=#dfdfdf guibg=#0f1f3f gui=NONE
highlight PmenuSbar guifg=#cccccc guibg=#1f1f1f gui=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#6f1f2f gui=NONE

" tabline "{{{2
" highlight TabLine term=NONE gui=NONE guifg=#bfbfbf guibg=#5f5f5f
" highlight TabLineSel term=NONE gui=NONE guifg=#ffffff guibg=#8f8f8f
" highlight TabLineFill term=NONE gui=NONE guifg=#5f5f5f guibg=#2f2f2f
highlight TabLine guifg=#2f3f9f guibg=#0f0f1f gui=underline
highlight TabLineSel guifg=#cfcfcf guibg=#0f1f3f gui=NONE
highlight TabLineFill guifg=#2f3f8f guibg=#0f0f1f gui=underline

" cursor "{{{2
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
highlight CursorLine guifg=NONE guibg=#0f1f2f gui=NONE
highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
highlight Cursor guifg=#000000 guibg=#bfbfbf gui=underline
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af2f3f gui=NONE
endif

" }}}2

" #- syntax highlighting groups -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
highlight MatchParen guifg=#00000f guibg=#0f3faf gui=bold
highlight comment guifg=#0f3fcf guibg=bg gui=NONE
highlight Constant guifg=#5f8fcf guibg=bg gui=NONE
highlight Special guifg=#bfbfbf guibg=bg gui=NONE
highlight Identifier guifg=#2faf9f guibg=NONE gui=NONE
highlight Statement guifg=#3f2faf guibg=bg gui=NONE
highlight PreProc guifg=#5fcf7f guibg=bg gui=NONE
highlight type guifg=#2faf6f guibg=bg gui=NONE
highlight underlined guifg=#2fcfaf guibg=bg gui=underline
highlight Ignore guifg=#2f7f4f guibg=bg gui=NONE
highlight Error guifg=#ff4f8f guibg=bg gui=NONE
highlight Todo guifg=#9f0f5f guibg=#bfbfcf gui=bold,underline
highlight string guifg=#cf8faf guibg=bg gui=NONE

" #- color function -# "{{{1
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
