" #- Vim color file -# "{{{1
" NOTE: "{{{3
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/

" #- First remove all existing highlighting. -# "{{{1
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = "vinary"

" #- check -# "{{{1
let s:is_vinary_t = 1
if exists('g:' . 'is_vinary')
  if g:is_vinary  == 'black'
    let s:is_vinary_t = 1
  elseif g:is_vinary == 'white'
    let s:is_vinary_t = 0
  endif
else
  let s:is_vinary_t = 0
endif


" #- Highlighting groups for various occasions -# "{{{1
if s:is_vinary_t "{{{2
  "black
  highlight Normal guifg=#cfcfcf guibg=#15151a gui=NONE
  highlight SpecialKey guifg=#af2f6f guibg=bg gui=NONE
  highlight NonText guifg=#af3faf guibg=bg gui=bold
  highlight Directory guifg=#5fafaf guibg=bg gui=bold
  highlight ErrorMsg guifg=#ff3f8f guibg=#5f1f1f gui=NONE
  highlight IncSearch guifg=#000000 guibg=#2faf2f gui=bold
  highlight Search guifg=#000000 guibg=#2faf8f gui=bold
  highlight MoreMsg guifg=#5f5fcf guibg=#0f3f5f gui=underline
  highlight ModeMsg guifg=#5fcf5f guibg=#0f5f3f gui=underline
  highlight LineNr guifg=#3fcfaf guibg=NONE gui=NONE
  highlight Question guifg=#ffafaf guibg=#5f0f3f gui=underline
  " Statusline "{{{3
  highlight StatusLine guifg=#cfcfcf guibg=#0a000f gui=NONE
  highlight StatusLineNC guifg=#5f5f5f guibg=#efdfcf gui=NONE
  " }}}3
  highlight VertSplit guifg=#6f6f6f guibg=#000000 gui=bold
  highlight Title guifg=#af5f8f guibg=bg gui=underline
  " Visual "{{{3
  highlight Visual guifg=#ffffff guibg=#1f2f5f gui=NONE
  highlight VisualNOS guifg=#ffffff guibg=#3f4f7f gui=underline,bold
  " }}}3
  highlight WarningMsg guifg=#cf2f4f guibg=#5f0f0f gui=NONE
  highlight WildMenu guifg=#cfcfcf guibg=#0f1f3f gui=NONE
  " Fold "{{{3
  highlight Folded guifg=#afafaf guibg=bg gui=NONE
  highlight FoldColumn guifg=#af5fcf guibg=bg gui=bold

  " diff "{{{3
  highlight DiffAdd guifg=bg guibg=#8fffcf gui=NONE
  highlight DiffChange guifg=bg guibg=#ffffcf gui=NONE
  highlight DiffDelete guifg=bg guibg=#ffafcf gui=bold
  highlight DiffText guifg=#4f4f4f guibg=bg gui=NONE
  " }}}3
  highlight SignColumn guifg=#7f2f4f guibg=bg gui=NONE
  " Spell "{{{3
  highlight SpellBad guifg=#5f3f7f guibg=bg gui=NONE
  highlight SpellCap guifg=#3f4f7f guibg=bg gui=NONE
  highlight SpellRare guifg=#3f7f6f guibg=bg gui=NONE
  highlight SpellLocal guifg=#5faf3f guibg=bg gui=NONE

  " Pmenu "{{{3
  highlight Pmenu guifg=#cfcfcf guibg=#0f0f1f gui=NONE
  highlight PmenuSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
  highlight PmenuSbar guifg=#cfcfcf guibg=#1f1f1f gui=NONE
  highlight PmenuThumb guifg=#cfcfcf guibg=#4f0f2f gui=NONE

  " tabline "{{{3
  highlight TabLine guifg=#5f5f5f guibg=#efefff gui=NONE
  highlight TabLineSel guifg=#cfcfcf guibg=#1f2f5f gui=NONE
  highlight TabLineFill guifg=#5f5f5f guibg=#efefff gui=bold

  " cursor "{{{3
  highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
  highlight CursorLine guifg=NONE guibg=#1f0f1f gui=NONE
  highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
  highlight Cursor guifg=#ffffff guibg=#5f1f3f gui=NONE
  " IME status color for cursor "{{{4
  if has('multi_byte_ime') || has('xim')
    highlight CursorIM guifg=fg guibg=#8f0f1f gui=NONE
  endif

  " }}}3
  "}}}2
else "{{{2
  " white
  highlight Normal guifg=#1f1f1f guibg=#ffffff gui=NONE
  highlight SpecialKey guifg=#af2f6f guibg=bg gui=NONE
  highlight NonText guifg=#af3faf guibg=bg gui=bold
  highlight Directory guifg=#0f6faf guibg=bg gui=bold
  highlight ErrorMsg guifg=#8f2f4f guibg=#ffcfcf gui=NONE
  highlight IncSearch guifg=#000000 guibg=#afaf2f gui=bold
  highlight Search guifg=#000000 guibg=#2faf8f gui=bold
  highlight MoreMsg guifg=#0f3f5f guibg=#cfcfff gui=underline
  highlight ModeMsg guifg=#0f5f3f guibg=#cfffcf gui=underline
  highlight LineNr guifg=#af5f1f guibg=NONE gui=NONE
  highlight Question guifg=#5f0f3f guibg=#ffcfcf gui=underline
  " Statusline "{{{3
  highlight StatusLine guifg=#5f5f5f guibg=#cfcfcf gui=NONE
  highlight StatusLineNC guifg=#6f6f6f guibg=#efdfcf gui=NONE
  " }}}3
  highlight VertSplit guifg=#6f6f6f guibg=#cfcfcf gui=bold
  highlight Title guifg=#af5f8f guibg=bg gui=underline
  " Visual "{{{3
  highlight Visual guifg=#ffffff guibg=#1f2f5f gui=NONE
  highlight VisualNOS guifg=#ffffff guibg=#3f4f7f gui=underline,bold
  " }}}3
  highlight WarningMsg guifg=#cf2f4f guibg=#ffcfcf gui=NONE
  highlight WildMenu guifg=#cfcfcf guibg=#2f3f5f gui=NONE
  " Fold "{{{3
  highlight Folded guifg=#3f3f3f guibg=#efefff gui=NONE
  highlight FoldColumn guifg=#5f5faf guibg=#fff0fc gui=bold

  " diff "{{{3
  highlight DiffAdd guifg=fg guibg=#8fffcf gui=NONE
  highlight DiffChange guifg=fg guibg=#ffffcf gui=NONE
  highlight DiffDelete guifg=fg guibg=#ffafcf gui=bold
  highlight DiffText guifg=#4f4f4f guibg=bg gui=NONE
  " }}}3
  highlight SignColumn guifg=#7f2f4f guibg=bg gui=NONE
  " Spell "{{{3
  highlight SpellBad guifg=#5f3f7f guibg=bg gui=NONE
  highlight SpellCap guifg=#3f4f7f guibg=bg gui=NONE
  highlight SpellRare guifg=#3f7f6f guibg=bg gui=NONE
  highlight SpellLocal guifg=#5faf3f guibg=bg gui=NONE

  " Pmenu "{{{3
  highlight Pmenu guifg=#cfcfcf guibg=#0f0f1f gui=NONE
  highlight PmenuSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
  highlight PmenuSbar guifg=#cfcfcf guibg=#1f1f1f gui=NONE
  highlight PmenuThumb guifg=#cfcfcf guibg=#4f0f2f gui=NONE

  " tabline "{{{3
  highlight TabLine guifg=#5f5f5f guibg=#efefff gui=NONE
  highlight TabLineSel guifg=#cfcfcf guibg=#1f2f5f gui=NONE
  highlight TabLineFill guifg=#5f5f5f guibg=#efefff gui=NONE

  " cursor "{{{3
  highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
  highlight CursorLine guifg=NONE guibg=#dfefff gui=NONE
  highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
  highlight Cursor guifg=#ffffff guibg=#5f1f3f gui=NONE
  " IME status color for cursor "{{{3
  if has('multi_byte_ime') || has('xim')
    highlight CursorIM guifg=#000000 guibg=#af2f3f gui=NONE
  endif

  " }}}3
endif
"}}}2


" #- syntax highlighting groups -# "{{{1
if s:is_vinary_t "{{{2
  " black
  highlight lCursor guifg=#3f3f3f guibg=#7ea3a6 gui=NONE
  highlight MatchParen guifg=#000000 guibg=#2f438f gui=bold
  highlight comment guifg=#8f4fff guibg=bg gui=NONE
  highlight Constant guifg=#5f8fff guibg=bg gui=NONE
  highlight Special guifg=#afafff guibg=bg gui=NONE
  highlight Identifier guifg=#ffaf2f guibg=bg gui=NONE
  highlight Statement guifg=#2faf7f guibg=bg gui=NONE
  highlight PreProc guifg=#ffaf2f guibg=bg gui=NONE
  highlight type guifg=#2f3fcf guibg=bg gui=NONE
  highlight underlined guifg=#5fcf8f guibg=bg gui=underline
  highlight Ignore guifg=#2f8f3f guibg=bg gui=bold
  highlight Error guifg=#ff1f4f guibg=#2f0f1f gui=NONE
  highlight Todo guifg=#5f5f5f guibg=#dfdfdf gui=bold,underline
  highlight string guifg=#cf8faf guibg=bg gui=NONE
else "{{{2
  " white
  highlight lCursor guifg=#3f3f3f guibg=#7ea3a6 gui=NONE
  highlight MatchParen guifg=#000000 guibg=#2f438f gui=bold
  highlight comment guifg=#1f4faf guibg=bg gui=NONE
  highlight Constant guifg=#8f2f5f guibg=bg gui=NONE
  highlight Special guifg=#4f4f5f guibg=bg gui=NONE
  highlight Identifier guifg=#4f3f3f guibg=bg gui=NONE
  highlight Statement guifg=#7f0f7f guibg=bg gui=NONE
  highlight PreProc guifg=#6f3f8f guibg=bg gui=NONE
  highlight type guifg=#0f5f1f guibg=bg gui=NONE
  highlight underlined guifg=#1f5f3f guibg=bg gui=underline
  highlight Ignore guifg=#3f3f3f guibg=bg gui=bold
  highlight Error guifg=#7f1f4f guibg=#ffcfcf gui=NONE
  highlight Todo guifg=#af2f5f guibg=#ffcfef gui=bold,underline
  highlight string guifg=#2f2f5f guibg=bg gui=NONE
endif
"}}}2


" #- Color function -# "{{{1
" this code is written mrkn256.vim
if has("gui_running") || &t_Co == 88 || &t_Co == 256
  " functions {{{
  " returns an approximate grey index for the given grey level
  function! <SID>grey_number(x) "{{{
    if &t_Co == 88
      if a:x < 23
        return 0
      elseif a:x < 69
        return 1
      elseif a:x < 103
        return 3
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
      elseif a:n == 3
        return 93
      elseif a:n == 3
        return 115
      elseif a:n == 4
        return 139
      elseif a:n == 5
        return 163
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
      elseif a:x < 173
        return 1
      elseif a:x < 230
        return 3
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
      elseif a:n == 3
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
