" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date
" Guicolorscheme file

" #- Vim color file reset -# "{{{1
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- Colorscheme name -# "{{{1
let g:colors_name = "PexiRm"

" #- Hilighting group for various occasions -#"{{{1
highlight Normal guifg=#fdfdfd guibg=#323232 gui=NONE
highlight SpecialKey guifg=#759f9e guibg=bg gui=NONE
highlight NonText guifg=#ffffff guibg=#383838 gui=NONE
highlight Directory guifg=#5787a6 guibg=bg gui=bold
highlight ErrorMsg guifg=#835071 guibg=bg gui=NONE
" search "{{{2
highlight IncSearch guifg=#000000 guibg=#702e59 gui=bold
highlight Search guifg=#111111 guibg=#702556 gui=bold
" }}}2
highlight MoreMsg guifg=#87a07a guibg=bg gui=NONE
highlight ModeMsg guifg=#ffffff guibg=NONE gui=NONE
highlight LineNr guifg=#6b6b6b guibg=NONE gui=NONE
highlight Question guifg=#6ab395 guibg=bg gui=NONE
" statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#35353f gui=NONE
highlight StatusLineNC guifg=#3b3835 guibg=#636363 gui=NONE
" }}}2
highlight Title guifg=#acacac guibg=bg gui=NONE
highlight VertSplit guifg=#aaaaaa guibg=#363636 gui=NONE
" visual "{{{2
highlight Visual guifg=#cfcfcf guibg=#2f3f77 gui=NONE
highlight VisualNOS guifg=#3d3d3d guibg=#aaeeee gui=underline,bold
" }}}
highlight WarningMsg guifg=#e573a0 guibg=bg gui=NONE
highlight WildMenu guifg=#6380c5 guibg=#2f2f5f gui=NONE
" fold "{{{2
highlight Folded guifg=#afafaf guibg=#2f3f6f gui=NONE
highlight FoldColumn guifg=#4f6dc3 guibg=#343434 gui=bold

" diff "{{{2
highlight DiffAdd guifg=#aacbde guibg=bg gui=NONE
highlight DiffChange guifg=#998dbf guibg=bg gui=NONE
highlight DiffDelete guifg=#a62c74 guibg=bg gui=bold
highlight DiffText guifg=#c9cbce guibg=bg gui=bold
" }}}2
highlight SignColumn gui=NONE guibg=bg guifg=#a65774
" spell "{{{2
highlight SpellBad gui=NONE guibg=bg guifg=#795099
highlight SpellCap gui=NONE guibg=bg guifg=#506399
highlight SpellRare gui=NONE guibg=bg guifg=#509982
highlight SpellLocal gui=NONE guibg=bg guifg=#998c50

"Pmenu "{{{2
"highlight pmenu guifg=#a4a9a4 guibg=#3d3f3d
highlight Pmenu guifg=#a0a0a0 guibg=#35353f gui=NONE
highlight PmenuSel guifg=#d2d2d2 guibg=#223f6f gui=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=#4d2f4d gui=NONE
highlight PmenuThumb guifg=#3d3f3d guibg=#000000 gui=NONE

" tabline "{{{2
highlight TabLine gui=NONE guifg=#80a990 guibg=bg
highlight TabLineSel gui=NONE guifg=#cfcfcf guibg=#152046
highlight TabLineFill gui=underline guifg=#769950 guibg=bg

" cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
highlight CursorLine guifg=NONE guibg=#393939 gui=NONE
highlight Cursor guifg=#000000 guibg=#00ee99 gui=NONE
highlight CursorColumn guifg=NONE guibg=bg gui=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#ffb6c1 gui=NONE
endif

" }}}2

" #- Syntax highlighting group -#"{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
highlight MatchParen guifg=#575757 guibg=#5f93cd gui=bold
highlight comment guifg=#4b89a6 guibg=bg gui=NONE
highlight Constant guifg=#aaeeaa guibg=bg gui=NONE
highlight Identifier guifg=#9cb79c guibg=bg gui=NONE
highlight Special guifg=#deffed guibg=bg gui=NONE
highlight Statement guifg=#5c71ab guibg=NONE gui=NONE
highlight PreProc guifg=#b871b7 guibg=bg gui=NONE
"highlight type guifg=#9781ab guibg=bg gui=NONE
highlight type guifg=#81a09a guibg=NONE gui=NONE
highlight underlined guifg=#66ff9c guibg=#37463c gui=NONE
highlight Ignore guifg=#047f75 guibg=#353535 gui=bold
highlight Error guifg=#a04f7e guibg=bg gui=NONE
highlight Todo guifg=#4e5ca0 guibg=#3f303f gui=bold,underline
highlight string guifg=#7dac8f guibg=bg gui=NONE

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
