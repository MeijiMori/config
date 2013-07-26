" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" like a barcerk fuler

" #- reset-# "{{{1
" First remove all existing highlighting.
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = "Jager"

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#000000 guibg=#fff0fa gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight SpecialKey guifg=#7f5f8f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight NonText guifg=#3f7f5f guibg=bg gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Directory guifg=#1f4f6f guibg=NONE gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight ErrorMsg guifg=#cf2f4f guibg=#ffdfdf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" search "{{{2
highlight IncSearch guifg=#0f0f0f guibg=#c3afc5 gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Search guifg=#0f0f0f guibg=#afcfcf gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
"}}}2
highlight MoreMsg guifg=#2f8f5f guibg=#dfffdf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight ModeMsg guifg=#2f4f8f guibg=#dfdfff gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight LineNr guifg=#9f4f7f guibg=NONE gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Question guifg=#1faf5f guibg=#dfffdf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" Statusline "{{{2
highlight StatusLine guifg=#efefef guibg=#1f2f3f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight StatusLineNC guifg=#7f5f6f guibg=#cfafaf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" }}}2
highlight VertSplit guifg=#6f6f9f guibg=#dfcfff gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Title guifg=#2f7f8f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" Visual "{{{2
highlight Visual guifg=#efefef guibg=#2f3f5f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#2f3f7f gui=underline,bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
" }}}2
highlight WarningMsg guifg=#cf2f4f guibg=#ffdfdf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight WildMenu guifg=#cfcfcf guibg=#0f1f3f gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
" Fold "{{{2
highlight Folded guifg=#1f1f1f guibg=#efe5ef gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight FoldColumn guifg=#3f3f3f guibg=#fff5ff gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE

" Diff "{{{2
highlight DiffAdd guifg=fg guibg=#afffcf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight DiffChange guifg=fg guibg=#ffffcf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight DiffDelete guifg=fg guibg=#ffafcf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight DiffText guifg=#6f6f6f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" }}}2
highlight SignColumn guifg=#a6577f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" Spell "{{{2
highlight SpellBad guifg=#593079 guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight SpellCap guifg=#304379 guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight SpellRare guifg=#307962 guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight SpellLocal guifg=#796c30 guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE

" Pmenu "{{{2
highlight Pmenu guifg=fg guibg=#efdfff gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#2f2f3f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight PmenuSbar guifg=fg guibg=#cfafbf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight PmenuThumb guifg=fg guibg=#dfcfef gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#afafaf guibg=#0f1f2f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight TabLineSel guifg=#cfcfcf guibg=#0f2f5f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight TabLineFill guifg=#af2f5f guibg=#0f1f2f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE

" cursor "{{{2
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight CursorLine guifg=NONE guibg=#ffeff5 gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Cursor guifg=#000000 guibg=#6faf8f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af2f3f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
endif
"}}}2

" #- syntax highlighting groups -# "{{{1
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight MatchParen guifg=#000000 guibg=#8f8fff gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight comment guifg=#3f4f8f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Constant guifg=#1f6f3f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Special guifg=#5f5f7f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Identifier guifg=#8f5f2f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Statement guifg=#3f1f5f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight PreProc guifg=#7f0f3f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight type guifg=#0f5f3f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight underlined guifg=#0f7f3f guibg=bg gui=underline
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Ignore guifg=#7f7f7f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Error guifg=#af1f3f guibg=#ffdfdf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Todo guifg=#8f8fff guibg=#dfdfdf gui=bold,underline
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight string guifg=#af1f3f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE

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
