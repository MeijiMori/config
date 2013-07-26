" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/

" #- reset -# "{{{1
" First remove all existing highlighting.
if version > 580
  set background=dark
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = "TrimSh"

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#000000 guibg=#ffffff gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight SpecialKey guifg=#af3f5f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight NonText guifg=#2f3faf guibg=bg gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Directory guifg=#2faf8f guibg=bg gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight ErrorMsg guifg=#8f3f4f guibg=#ffafaf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" search"{{{2
highlight IncSearch guifg=#000000 guibg=#cf8fff gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Search guifg=#cfcfcf guibg=#2f2f5f gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
"}}}2
highlight MoreMsg guifg=#4fab6e guibg=#cfffcf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight ModeMsg guifg=#0f1f5f guibg=#afafcf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight LineNr guifg=#5f0f3f guibg=NONE gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Question guifg=#4faf7f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" Statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#001f2f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" highlight StatusLineNC guifg=#5f4f4f guibg=#c3aca5 gui=NONE
"           \ ctermfg=16 ctermbg=12 cterm=NONE
highlight StatusLineNC guifg=#565234 guibg=#c0afcf gui=NONE
                \ ctermfg=10 ctermbg=1 cterm=NONE
" }}}2
highlight VertSplit guifg=#6f6f6f guibg=#dfdfdf gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Title guifg=#8f5faf guibg=#dfdfff gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" Visual "{{{2
highlight Visual guifg=#cfcfcf guibg=#1f1f4f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight VisualNOS guifg=#ffffff guibg=#3f4f7f gui=underline,bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
" }}}2
highlight WarningMsg guifg=#ef2f3f guibg=#ffcfcf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight WildMenu guifg=#cfcfcf guibg=#2f2f6f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" Fold "{{{2
" highlight Folded guifg=#2f3f6f guibg=#9fafbf gui=NONE
highlight Folded guifg=#000000 guibg=#cfbfbf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight FoldColumn guifg=#2f0f2f guibg=#ffefff gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE

" diff "{{{2
highlight DiffAdd guifg=#0f0f0f guibg=#afffcf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight DiffChange guifg=#0f0f0f guibg=#ffffcf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight DiffDelete guifg=#0f0f0f guibg=#f6afcf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight DiffText guifg=#6f6f6f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" }}}2
highlight SignColumn guifg=#8f1f3f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" Spell "{{{2
highlight SpellBad guifg=#5f2f7f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight SpellCap guifg=#2f3f8f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight SpellRare guifg=#2f8f5f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight SpellLocal guifg=#5f5f2f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE

" Pmenu "{{{2
highlight Pmenu guifg=#2f2f2f guibg=#cfcfff gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight PmenuSel guifg=#dfdfdf guibg=#3f0f3f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight PmenuSbar guifg=#cfcfcf guibg=#2f2f2f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight PmenuThumb guifg=#ffffff guibg=#6f2f4f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE

"tabline "{{{2
highlight TabLine guifg=#5f5f5f guibg=#cccccc gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight TabLineSel guifg=#dfdfdf guibg=#0f2f5f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight TabLineFill guifg=#5f8f5f guibg=#aaaaaa gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE

" cursor "{{{2
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight CursorLine guifg=NONE guibg=#dfffff gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#ff5588 gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Cursor guifg=#000000 guibg=#2f8f8f gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af0f2f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
endif

" }}}2

" #- syntax highlighting groups -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight MatchParen guifg=#000000 guibg=#5f8f0f gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Comment guifg=#2f3f8f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Constant guifg=#8f1f2f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Special guifg=#3f3f5f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Identifier guifg=#0f6f2f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Statement guifg=#1f2f4f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight PreProc guifg=#8f0f2f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight type guifg=#3f8f5f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight underlined guifg=#3faf6f guibg=bg gui=underline
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Ignore guifg=#7f7f7f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Error guifg=#a04f7e guibg=bg gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Todo guifg=#ff5f8f guibg=#dfefff gui=bold,underline
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight string guifg=#af2f8f guibg=bg gui=NONE
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
