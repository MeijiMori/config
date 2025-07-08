" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" White and Black


"}}}1
" #- reset -# "{{{1
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- check -# "{{{1
let s:is_wab_t = 1
if exists('g:' . 'is_wab')
  if g:is_wab  == 'black'
    let s:is_wab_t = 1
  elseif g:is_wab == 'white'
    let s:is_wab_t = 0
  endif
else
  let s:is_wab_t = 0
endif


" #- Highlighting groups for various occasions -# "{{{1
if s:is_wab_t
  highlight Normal guifg=#cfcfcf guibg=#000000 gui=NONE
  highlight SpecialKey guifg=#afafaf guibg=bg gui=NONE
  highlight NonText guifg=#3f3f3f guibg=bg gui=NONE
  highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
  highlight Directory guifg=#5f5f5f guibg=bg gui=bold
  highlight ErrorMsg guifg=#0f0f0f guibg=#3f3f3f gui=NONE
  " Search "{{{2
  highlight IncSearch guifg=#000000 guibg=#4f4f4f gui=bold
  highlight Search guifg=#000000 guibg=#efefef gui=bold
  "}}}2
  highlight MoreMsg guifg=#2f2f2f guibg=#cfcfff gui=NONE
  highlight ModeMsg guifg=#2f2f2f guibg=#afafaf gui=NONE
  highlight LineNr guifg=#1f1f1f guibg=NONE gui=NONE
  highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
  highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
  highlight CursorLineNr guifg=#9f4f7f guibg=#af8fff gui=NONE
  highlight Question guifg=#3f3f3f guibg=#8f8f8f gui=NONE
  " Statusline "{{{2
  highlight StatusLine guifg=#ffffff guibg=#0f0f0f gui=NONE
  highlight StatusLineNC guifg=#6f6f6f guibg=#cfcfcf gui=NONE
  " terminal "{{{3
  highlight Terminal guifg=#cfcfcf guibg=#00000f gui=NONE
        \ ctermfg=10 ctermbg=0 cterm=NONE
  highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
        \ ctermfg=0 ctermbg=10 cterm=NONE
  highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
        \ ctermfg=96 ctermbg=183 cterm=NONE
  " }}}2
  highlight VertSplit guifg=bg guibg=bg gui=bold
  highlight Title guifg=#cfcfcf guibg=bg gui=bold,underline
  " Visual "{{{2
  highlight Visual guifg=#cfcfcf guibg=#101010 gui=NONE
  highlight VisualNOS guifg=#cfcfcf guibg=#101010 gui=underline,bold
  " }}}2
  highlight WarningMsg guifg=#0f0f0f guibg=#cfcfcf gui=NONE
  highlight WildMenu guifg=#3f3f3f guibg=#cfcfcf gui=NONE
  " Fold "{{{2
  highlight Folded guifg=#afafaf guibg=#0f0f0f gui=NONE
  highlight FoldColumn guifg=#afafaf guibg=#0f0f0f gui=bold

  " Diff "{{{2
  highlight DiffAdd guifg=bg guibg=#bfffbf gui=NONE
  highlight DiffChange guifg=bg guibg=#ffffbf gui=NONE
  highlight DiffDelete guifg=bg guibg=#ffbfbf gui=bold
  highlight DiffText guifg=fg guibg=bg gui=NONE
  " }}}2
  highlight SignColumn guifg=#cfcfcf guibg=bg gui=NONE
  " Spell "{{{2
  highlight SpellBad guifg=#2f2f2f guibg=bg gui=NONE
  highlight SpellCap guifg=#8f8f8f guibg=bg gui=NONE
  highlight SpellRare guifg=#5f5f5f guibg=bg gui=NONE
  highlight SpellLocal guifg=#afafaf guibg=bg gui=NONE

  " Pmenu "{{{2
  highlight Pmenu guifg=#0f0f0f guibg=#cfcfcf gui=NONE
  highlight PmenuSel guifg=fg guibg=#1f1f1f gui=NONE
  highlight PmenuSbar guifg=#cfcfcf guibg=#000000 gui=NONE
  highlight PmenuThumb guifg=#000000 guibg=#4f4f4f gui=NONE

  " tabline "{{{2
  highlight TabLine guifg=#cfcfcf guibg=#1f1f1f gui=underline
  highlight TabLineSel guifg=#cfcfcf guibg=#000000 gui=underline
  highlight TabLineFill guifg=#ffffff guibg=#1f1f1f gui=underline

  " tabpanel "{{{2
  highlight TabPanel guifg=#cfcfcf guibg=#1f1f1f gui=NONE
  highlight TabPanelSel guifg=#cfcfcf guibg=#000000 gui=NONE
  highlight TabPanelFill guifg=#ffffff guibg=#1f1f1f gui=NONE

  " cursor "{{{2
  highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
  highlight ColorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
  highlight CursorPanel guifg=NONE guibg=#0a0a0a gui=NONE
  highlight Cursor guifg=#000000 guibg=#afafaf gui=NONE
  " IME status color for cursor "{{{3
  if has('multi_byte_ime') || has('xim')
    highlight CursorIM gui=NONE guifg=#cfcfcf guibg=#afafaf
  endif

" }}}2
else
  highlight Normal guifg=#000000 guibg=#dfdfdf gui=NONE
  highlight SpecialKey guifg=#8f8f8f guibg=bg gui=NONE
  highlight NonText guifg=#3f3f3f guibg=bg gui=NONE
  highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
  highlight Directory guifg=#3f3f3f guibg=bg gui=bold
  highlight ErrorMsg guifg=#0f0f0f guibg=#3f3f3f gui=NONE
  " Search "{{{2
  highlight IncSearch guifg=#000000 guibg=#afafaf gui=bold
  highlight Search guifg=#cfcfcf guibg=#000000 gui=bold
  "}}}2
  highlight MoreMsg guifg=#2f2f2f guibg=#cfcfff gui=NONE
  highlight ModeMsg guifg=#2f2f2f guibg=#afafaf gui=NONE
  highlight LineNr guifg=#1f1f1f guibg=NONE gui=NONE
  highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
  highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
  highlight CursorLineNr guifg=#9f4f7f guibg=#af8fff gui=NONE
  highlight Question guifg=#3f3f3f guibg=#8f8f8f gui=NONE
  " Statusline "{{{2
  highlight StatusLine guifg=#ffffff guibg=#1f1f1f gui=NONE
  highlight StatusLineNC guifg=#6f6f6f guibg=#cfcfcf gui=NONE
  " terminal "{{{3
  highlight Terminal guifg=#cfcfcf guibg=#00000f gui=NONE
        \ ctermfg=10 ctermbg=0 cterm=NONE
  highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
        \ ctermfg=0 ctermbg=10 cterm=NONE
  highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
        \ ctermfg=96 ctermbg=183 cterm=NONE
  " }}}2
  highlight VertSplit guifg=bg guibg=bg gui=bold
  highlight Title guifg=#5f5f5f guibg=#cfcfcf gui=bold,underline
  " Visual "{{{2
  highlight Visual guifg=#cfcfcf guibg=#101010 gui=NONE
  highlight VisualNOS guifg=#cfcfcf guibg=#101010 gui=underline,bold
  " }}}2
  highlight WarningMsg guifg=#0f0f0f guibg=#cfcfcf gui=NONE
  highlight WildMenu guifg=#3f3f3f guibg=#cfcfcf gui=NONE
  " Fold "{{{2
  highlight Folded guifg=#2f2f2f guibg=#8f8f8f gui=NONE
  highlight FoldColumn guifg=#1f1f1f guibg=#8f8f8f gui=bold

  " Diff "{{{2
  highlight DiffAdd guifg=fg guibg=#bfffbf gui=NONE
  highlight DiffChange guifg=fg guibg=#ffffbf gui=NONE
  highlight DiffDelete guifg=fg guibg=#ffbfbf gui=bold
  highlight DiffText guifg=fg guibg=bg gui=NONE
  " }}}2
  highlight SignColumn guifg=fg guibg=bg gui=NONE
  " Spell "{{{2
  highlight SpellBad guifg=#2f2f2f guibg=bg gui=NONE
  highlight SpellCap guifg=#8f8f8f guibg=bg gui=NONE
  highlight SpellRare guifg=#5f5f5f guibg=bg gui=NONE
  highlight SpellLocal guifg=#afafaf guibg=bg gui=NONE

  " Pmenu "{{{2
  highlight Pmenu guifg=#cfcfcf guibg=#0f0f0f gui=NONE
  highlight PmenuSel guifg=bg guibg=#1f1f1f gui=NONE
  highlight PmenuSbar guifg=#cfcfcf guibg=#000000 gui=NONE
  highlight PmenuThumb guifg=#cfcfcf guibg=#1f1f1f gui=NONE

  " tabline "{{{2
  highlight TabLine guifg=#1f1f1f guibg=#cfcfcf gui=underline
  highlight TabLineSel guifg=#0f0f0f guibg=#bfbfbf gui=underline
  highlight TabLineFill guifg=#1f1f1f guibg=#cfcfcf gui=underline


  " tabpanel "{{{2
  highlight TabPanel guifg=#1f1f1f guibg=#cfcfcf gui=NONE
  highlight TabPanelSel guifg=#0f0f0f guibg=#bfbfbf gui=NONE
  highlight TabPanelFill guifg=#1f1f1f guibg=#cfcfcf gui=NONE

  " cursor "{{{2
  highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
  highlight ColorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
  highlight CursorPanel guifg=NONE guibg=#afafaf gui=NONE
  highlight Cursor guifg=#cfcfcf guibg=#0f0f0f gui=NONE
  " IME status color for cursor "{{{3
  if has('multi_byte_ime') || has('xim')
    highlight CursorIM guifg=#0f0f0f guibg=#afafaf gui=NONE
  endif

  " }}}2
endif

" #- Syntax highlighting groups -# "{{{1
if s:is_wab_t
  highlight lCursor guifg=#2f2f2f guibg=#000000 gui=NONE
  highlight MatchParen guifg=#000000 guibg=#3f3f3f gui=bold
  highlight comment guifg=#3f3f3f guibg=bg gui=NONE
  highlight Constant guifg=#9f9f9f guibg=bg gui=NONE
  highlight Special guifg=#bfbfbf guibg=bg gui=NONE
  highlight Identifier guifg=#afafaf guibg=bg gui=NONE
  highlight Statement guifg=#404040 guibg=bg gui=NONE
  highlight PreProc guifg=#6f6f6f guibg=bg gui=NONE
  highlight type guifg=#5f5f5f guibg=bg gui=NONE
  highlight underlined guifg=#8f8f8f guibg=#cfcfcf gui=underline,bold
  highlight Ignore guifg=#0c0c0c guibg=bg gui=bold
  highlight Error guifg=#0f0f0f guibg=#afafaf gui=NONE
  highlight Todo guifg=#7f7f7f guibg=#dfdfdf gui=underline,bold
  highlight String guifg=#afafaf guibg=bg gui=NONE
else
  highlight lCursor guifg=#2f2f2f guibg=#000000 gui=NONE
  highlight MatchParen guifg=#000000 guibg=#3f3f3f gui=bold
  highlight comment guifg=#3f3f3f guibg=bg gui=NONE
  highlight Constant guifg=#9f9f9f guibg=bg gui=NONE
  highlight Special guifg=#bfbfbf guibg=bg gui=NONE
  highlight Identifier guifg=#afafaf guibg=bg gui=NONE
  highlight Statement guifg=#404040 guibg=bg gui=NONE
  highlight PreProc guifg=#6f6f6f guibg=bg gui=NONE
  highlight type guifg=#5f5f5f guibg=bg gui=NONE
  highlight underlined guifg=#8f8f8f guibg=#cfcfcf gui=underline,bold
  highlight Ignore guifg=#0c0c0c guibg=bg gui=bold
  highlight Error guifg=#0f0f0f guibg=#afafaf gui=NONE
  highlight Todo guifg=#7f7f7f guibg=#dfdfdf gui=underline,bold
  highlight String guifg=#7f7f7f guibg=bg gui=NONE
endif


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
