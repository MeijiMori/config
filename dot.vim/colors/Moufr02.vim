" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date
" Guicolorscheme file
" Refer for oeNmP and candycode ...

" #- reset -# "{{{1
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

"#- colorscheme name -#"{{{2
let g:colors_name = "Moufr02"

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#00051f gui=NONE
highlight SpecialKey guifg=#2f0fff guibg=bg gui=NONE
highlight NonText guifg=#4ef9c8 guibg=bg gui=NONE
highlight Directory guifg=#3f7f8f guibg=bg gui=NONE
highlight ErrorMsg guifg=#ff0f5f guibg=bg gui=NONE
" search "{{{2
highlight IncSearch guifg=#cfcfcf guibg=#7f0f1f gui=bold
highlight Search guifg=#cfcfcf guibg=#0f2faf gui=bold
"}}}2
highlight MoreMsg guifg=#3f5fff guibg=#00002f gui=NONE
highlight ModeMsg guifg=#ff3f5f guibg=#00002f gui=NONE
highlight LineNr guifg=#8f5faf guibg=NONE gui=NONE
highlight Question guifg=#6ab395 guibg=#00002f gui=NONE
" statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#050f1f gui=NONE
highlight StatusLineNC guifg=#8f5f3f guibg=#c4b2ab gui=NONE
"}}}2
highlight Title guifg=#72dc95 guibg=#0f000f gui=NONE
highlight VertSplit guifg=#4049d9 guibg=bg gui=NONE
" visual "{{{2
highlight Visual guifg=#afafaf guibg=#00002f gui=NONE
highlight VisualNOS guifg=#0f0f1f guibg=#aaeeee gui=underline,bold
"}}}2
highlight WarningMsg guifg=#cf1f5f guibg=bg gui=NONE
highlight WildMenu guifg=#cfcfcf guibg=#0f1f5f gui=NONE
" fold "{{{2
highlight Folded guifg=#0f1fff guibg=#00000f gui=NONE
highlight FoldColumn guifg=#2f3faf guibg=#00000f gui=bold

" diff "{{{2
highlight DiffAdd guifg=#0f0f0f guibg=#afffaf gui=NONE
highlight DiffChange guifg=#0f0f0f guibg=#cfbfff gui=NONE
highlight DiffDelete guifg=#0f0f0f guibg=#ffafcf gui=bold
highlight DiffText guifg=#c9cbce guibg=bg gui=NONE
highlight SignColumn gui=NONE guibg=bg guifg=#a65774

" spell "{{{2
highlight SpellBad guibg=bg guifg=#795099 gui=NONE
highlight SpellCap guibg=bg guifg=#506399 gui=NONE
highlight SpellRare guibg=bg guifg=#509982 gui=NONE
highlight SpellLocal guibg=bg guifg=#998c50 gui=NONE

" pmenu "{{{2
highlight Pmenu gui=NONE guifg=#0f0f0f guibg=#cfc0cf
highlight PmenuSel gui=NONE guifg=#cfc0cf guibg=#0f0f2f
highlight PmenuSbar gui=NONE guifg=#9c9c9c guibg=#0f0f2f
highlight PmenuThumb gui=NONE guifg=#0f0f0f guibg=#112656
"}}}
" tabline "{{{2
highlight TabLine guifg=#0f1fff guibg=#00050f gui=underline
highlight TabLineSel  guifg=#cfcfcf guibg=#0f1f3f gui=NONE
highlight TabLineFill guifg=#0f1fff guibg=#00050f gui=underline

" cursor "{{{2
highlight CursorColumn guifg=NONE guibg=#00000f gui=NONE
highlight CursorLine guifg=NONE guibg=#000f2f gui=NONE
highlight ColorColumn guifg=NONE guibg=#00001f gui=NONE
highlight Cursor guifg=#0f0f0f guibg=#cfbfff gui=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#0f0f0f guibg=#8f1f3f gui=NONE
endif

"}}}2

" #- syntax highlighting group -# "{{{1
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
highlight MatchParen guifg=#000000 guibg=#2f3faf gui=bold
highlight comment guifg=#2f5fef guibg=bg gui=NONE
highlight Constant guifg=#af1f8f guibg=bg gui=NONE
highlight Special guifg=#ffdfcf guibg=bg gui=NONE
highlight Identifier guifg=#2faf7f guibg=bg gui=NONE
highlight Statement guifg=#0f2fff guibg=bg gui=NONE
highlight PreProc guifg=#af3faf guibg=bg gui=NONE
highlight type guifg=#2fc98f guibg=bg gui=NONE
highlight underlined guifg=#2f3faf guibg=bg gui=underline,bold
highlight Ignore guifg=#0f1faf guibg=bg gui=NONE
highlight Error guifg=#af1f5f guibg=bg gui=NONE
highlight Todo guifg=#9f0f3f guibg=#0f0f0f gui=bold
highlight string guifg=#af0f3f guibg=bg gui=NONE

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
