" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file

" #- Syntax reset -# "{{{1
" First remove all existing highlighting.
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

" #- colorscheme name -# "{{{1
let g:colors_name = "Cugfr"

" #- hihlighting groups for various occasions -# "{{{1
highlight Normal guifg=#ffffff guibg=#00000f gui=NONE
highlight SpecialKey guifg=#5842ff guibg=bg gui=NONE
highlight NonText guifg=#1fffcf guibg=#101f1f gui=NONE
highlight Directory guifg=#2a2fff guibg=bg gui=bold
highlight ErrorMsg guifg=#ff3f8f guibg=bg gui=NONE
" #- search -# "{{{
highlight IncSearch guifg=#00000f guibg=#0f8f5f gui=bold
highlight Search guifg=#ffffff guibg=#0f1f4f gui=bold
" }}}
highlight MoreMsg guifg=#0f5f2f guibg=#7fcf8f gui=NONE
highlight ModeMsg guifg=#0f2f5f guibg=#7f8fcf gui=NONE
highlight LineNr guifg=#ffcfaf guibg=NONE gui=NONE
highlight Question guifg=#2f8f5f guibg=#afcfcf gui=NONE
" #- statusline -# "{{{
highlight StatusLine guifg=#cfcfff guibg=#0f0f1f gui=NONE
highlight StatusLineNC guifg=#5f5f3f guibg=#bfafcf gui=NONE
" }}}
highlight Title guifg=#22935f guibg=bg gui=NONE
highlight VertSplit guifg=#c2bfa5 guibg=bg gui=NONE
" #- visual -# "{{{
highlight Visual guifg=#cfcfcf guibg=#000f2f gui=NONE
highlight VisualNOS guifg=#3d3d3d guibg=#cfcfcf gui=underline,bold
" }}}
highlight WarningMsg guifg=#ff2f5f guibg=bg gui=NONE
highlight WildMenu guifg=#cfcfff guibg=#0f0f1f gui=NONE
" #- fold -# "{{{
highlight Folded guifg=#0f0f1f guibg=#afafcf gui=underline
highlight FoldColumn guifg=#2f1fcf guibg=bg gui=bold
" }}}
" #- Diff -# "{{{
highlight DiffAdd guifg=#0f0f0f guibg=#aacbde gui=NONE
highlight DiffChange guifg=#0f0f0f guibg=#998dbf gui=NONE
highlight DiffDelete guifg=#0f0f0f guibg=#af2f7f gui=bold
highlight DiffText guifg=#0f0f0f guibg=#c9cbce gui=NONE
" }}}
highlight SignColumn guifg=#a65774 guibg=bg gui=NONE
" #- Spell -# "{{{
highlight SpellBad term=NONE gui=NONE guibg=bg guifg=#795099
highlight SpellCap term=NONE gui=NONE guibg=bg guifg=#506399
highlight SpellRare term=NONE gui=NONE guibg=bg guifg=#509982
highlight SpellLocal term=NONE gui=NONE guibg=bg guifg=#998c50
" }}}
" #- Pmenu -# "{{{
highlight Pmenu guifg=#0f0f0f guibg=#bfbfff gui=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#0f1f4f gui=NONE
highlight PmenuSbar guifg=fg guibg=#00001f gui=NONE
highlight PmenuThumb guifg=fg guibg=#2f0f1f gui=NONE
" }}}
" #- Tabline -# "{{{
highlight TabLine guifg=#5f5f5f guibg=#cfcfff gui=underline
highlight TabLineSel guifg=#cccccf guibg=#0f1f3f gui=NONE
highlight TabLineFill guifg=#5f2f3f guibg=#cfcfcf gui=underline
"}}}
" #- Cursor -# "{{{
highlight CursorColumn guifg=NONE guibg=#20355f gui=NONE
      \ cterm=NONE ctermfg=NONE ctermbg=0
highlight CursorLine guifg=NONE guibg=#000a0f gui=NONE
      \ cterm=NONE ctermfg=NONE ctermbg=0
highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
      \ cterm=NONE ctermfg=NONE ctermbg=0
highlight Cursor guifg=#cfcfcf guibg=#101f3f gui=NONE
      \ cterm=NONE ctermfg=NONE ctermbg=0
"IME status color for cursor "{{{
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#8f0f2f gui=NONE
endif
" }}}
" }}}

" #- syntax highlighting group -# "{{{1
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
highlight MatchParen guifg=#000000 guibg=#0faf5f gui=bold
highlight comment guifg=#2f8f5f guibg=bg gui=NONE
highlight Constant guifg=#3faf8f guibg=bg gui=NONE
highlight Identifier guifg=#2f2fff guibg=bg gui=NONE
highlight Special guifg=#cfcfff guibg=bg gui=NONE
highlight Statement guifg=#1f2fcf guibg=bg gui=NONE
highlight PreProc guifg=#cc5c5c guibg=bg gui=NONE
highlight type guifg=#af0f5f guibg=bg gui=NONE
highlight underlined guifg=#5f5f5f guibg=#cfcfcf gui=underline,bold
highlight Ignore guifg=#047f75 guibg=bg gui=NONE
highlight Error guifg=#ff2f5f guibg=bg gui=NONE
highlight Todo guifg=#8f3fff guibg=#bfbfff gui=bold,underline
highlight string guifg=#ffaf3f guibg=bg gui=NONE
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
