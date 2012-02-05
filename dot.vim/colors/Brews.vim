" #- vim colorscheme file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Made at 2011-04-05
" Guicolorscheme file
" Refer to Shougo's vim color (candy-ex)

" #- Vim color file reset -#"{{{1
" First remove all existing highlighting.
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

" #- colorscheme name -#"{{{1
let g:colors_name = "Brews"

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#fdfdfd guibg=#303037 gui=NONE
highlight SpecialKey guifg=#5842ff guibg=NONE gui=bold
highlight NonText guifg=#4e79c8 guibg=#303030 gui=bold
highlight Directory guifg=#3a85d2 guibg=#363838 gui=bold
highlight ErrorMsg guifg=#b84865 guibg=#363636 gui=NONE
" search "{{{2
highlight IncSearch guifg=bg guibg=#cc88e1 gui=bold
highlight Search guifg=#323232 guibg=#5088e1 gui=bold
"}}}2
highlight MoreMsg guifg=#95d5d9 guibg=#454545 gui=NONE
highlight ModeMsg guifg=#ffffff guibg=#454545 gui=NONE
highlight LineNr  guifg=#c3bcb4 guibg=NONE gui=NONE
highlight Question guifg=#6ab395 guibg=bg gui=NONE
" statusline "{{{2
highlight StatusLine guifg=#aaaaaa guibg=#2f2f2f gui=NONE
highlight StatusLineNC guifg=#f0f0f0 guibg=#505050 gui=NONE
"}}}2
highlight Title guifg=#72dc95 guibg=NONE gui=NONE
highlight VertSplit guifg=#1f5fdf guibg=#2f1f2f gui=NONE
" visual "{{{2
highlight Visual guifg=#ffffff guibg=#1f2f5f gui=NONE
highlight VisualNOS guibg=#aaeeee guifg=#3d3d3d gui=underline
"}}}2
highlight WarningMsg guifg=#bc4765 guibg=#363636 gui=NONE
highlight WildMenu guifg=#3a85d2 guibg=#0a192c gui=NONE
" fold "{{{2
highlight Folded guifg=#3f5faf guibg=#202025 gui=NONE
highlight FoldColumn guifg=#3b54ec guibg=#25252f gui=bold

" diff "{{{2
highlight DiffAdd guifg=#aacbde guibg=bg gui=NONE
highlight DiffChange guifg=#998dbf guibg=bg gui=NONE
highlight DiffDelete guifg=#a62c74 guibg=bg gui=bold
highlight DiffText guifg=#c9cbce guibg=bg gui=NONE
"}}}2
highlight SignColumn guifg=#a65774 guibg=bg gui=NONE
" spell"{{{2
highlight SpellBad guifg=#795099 guibg=bg gui=NONE
highlight SpellCap guifg=#506399 guibg=bg gui=NONE
highlight SpellRare guifg=#509982 guibg=bg gui=NONE
highlight SpellLocal guifg=#998c50 guibg=bg gui=NONE

" pmenu"{{{2
highlight Pmenu guifg=#333333 guibg=#ffe7bc gui=NONE
highlight PmenuSel guifg=#000000 guibg=#74a7bf gui=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=#404040 gui=NONE
highlight PmenuThumb guifg=#415676 guibg=#404040 gui=NONE

" tabline"{{{2
highlight TabLine guifg=#cccccc guibg=bg gui=underline
highlight TabLineSel guifg=#cccccc guibg=#2f3f5f gui=NONE
highlight TabLineFill guifg=#415676 guibg=bg gui=underline

" cursor"{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
highlight CursorLine guifg=NONE guibg=#3f3f3f gui=NONE
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
highlight Cursor guifg=#555555 guibg=#ffffff gui=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#ff5661 gui=NONE
endif
"}}}2

" #- syntax highlighting group -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
highlight MatchParen guifg=#575757 guibg=#5f93cd gui=bold
highlight comment guifg=#5088e1 guibg=bg gui=NONE
highlight Constant guifg=#aa7777 guibg=bg gui=NONE
highlight Identifier guifg=#77aa77 guibg=bg gui=NONE
highlight Special guifg=#777777 guibg=bg gui=NONE
highlight Statement guifg=#77aaaa guibg=bg gui=NONE
highlight PreProc guifg=#aaffff guibg=bg gui=NONE
highlight type guifg=#71c9af guibg=bg gui=NONE
highlight underlined guifg=#6699cc guibg=bg gui=underline
highlight Ignore guifg=#777777 guibg=bg gui=bold
highlight Error guifg=#ffa0a0 guibg=bg gui=NONE
highlight Todo guifg=#a0a0ff guibg=bg gui=bold,underline
highlight string guifg=#f0d8e6 guibg=bg gui=NONE

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
