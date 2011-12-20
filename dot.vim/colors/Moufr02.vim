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

"#- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#00051f
highlight SpecialKey gui=NONE guifg=#2f0fff guibg=bg
highlight NonText gui=NONE guifg=#4ef9c8 guibg=bg
highlight Directory gui=NONE guifg=#3f7f8f guibg=bg
highlight ErrorMsg gui=NONE guifg=#ff0f5f guibg=bg
" search "{{{
"highlight IncSearch term=REVERSE cterm=REVERSE gui=NONE guibg=#704461 guifg=#000000
highlight IncSearch gui=bold guifg=#cfcfcf guibg=#7f0f1f
highlight Search gui=bold guifg=#cfcfcf guibg=#0f2faf
"}}}
highlight MoreMsg gui=NONE guifg=#3f5fff guibg=#00002f
highlight ModeMsg gui=NONE guifg=#ff3f5f guibg=#00002f
highlight LineNr gui=NONE guifg=#8f5faf guibg=NONE
highlight Question gui=NONE guifg=#6ab395 guibg=#00002f
" statusline "{{{
highlight StatusLine gui=NONE guifg=#ffffff guibg=#050f1f
highlight StatusLineNC gui=NONE guifg=#8f5f3f guibg=#c4b2ab
"}}}
"highlight Title gui=NONE guifg=#a6dc72 guibg=#3d3d3d
highlight Title gui=NONE guifg=#72dc95
"highlight VertSplit gui=NONE guifg=#aaaaaa guibg=#363636
highlight VertSplit gui=NONE guifg=#4049d9 guibg=bg
"visual "{{{
highlight Visual gui=NONE guifg=#afafaf guibg=#00002f
highlight VisualNOS gui=underline,bold guifg=#0f0f1f guibg=#aaeeee
"}}}
highlight WarningMsg gui=NONE guifg=#cf1f5f guibg=bg
highlight WildMenu gui=NONE guifg=#cfcfcf guibg=#0f1f5f
"fold "{{{
highlight Folded gui=underline guifg=#0f1fff guibg=#00000f
highlight FoldColumn gui=bold guifg=#2f3faf guibg=#00000f
"}}}
"diff "{{{
highlight DiffAdd gui=NONE guifg=#0f0f0f guibg=#afffaf
"
highlight DiffChange gui=NONE guifg=#0f0f0f guibg=#cfbfff
"
highlight DiffDelete gui=bold guifg=#0f0f0f guibg=#ffafcf
highlight DiffText gui=NONE guifg=#c9cbce guibg=bg
"}}}
highlight SignColumn gui=NONE guibg=bg guifg=#a65774
"spell "{{{
highlight SpellBad term=NONE gui=NONE guibg=bg guifg=#795099
highlight SpellCap term=NONE gui=NONE guibg=bg guifg=#506399
highlight SpellRare term=NONE gui=NONE guibg=bg guifg=#509982
highlight SpellLocal term=NONE gui=NONE guibg=bg guifg=#998c50
"}}}
"pmenu "{{{
highlight Pmenu gui=NONE guifg=#0f0f0f guibg=#cfc0cf
highlight PmenuSel gui=NONE guifg=#cfc0cf guibg=#0f0f2f
highlight PmenuSbar gui=NONE guifg=#9c9c9c guibg=#0f0f2f
highlight PmenuThumb gui=NONE guifg=#0f0f0f guibg=#112656
"}}}
"tabline "{{{
highlight TabLine gui=underline guifg=#0f1fff guibg=#00050f
highlight TabLineSel  gui=NONE guifg=#cfcfcf guibg=#0f1f3f
highlight TabLineFill gui=underline guifg=#0f1fff guibg=#00050f
"}}}
"cursor "{{{
highlight CursorColumn gui=NONE guifg=NONE guibg=#00000f
highlight CursorLine gui=NONE guifg=NONE guibg=#000f2f
highlight ColorColumn gui=NONE guifg=NONE guibg=#00001f
highlight Cursor gui=NONE guifg=#0f0f0f guibg=#cfbfff
"IME status color for cursor
if has('multi_byte_ime') || has('xim')
  highlight CursorIM gui=NONE guifg=#0f0f0f guibg=#8f1f3f
endif
"}}}

" #- syntax highlighting group -# "{{{1
highlight lCursor gui=NONE guifg=#0f0f0f guibg=#7ea3a6
highlight MatchParen gui=bold guifg=#000000 guibg=#2f3faf
highlight comment gui=NONE guifg=#2f5fef guibg=bg
highlight Constant term=underline ctermfg=Magenta gui=NONE guifg=#af1f8f guibg=bg
highlight Special gui=NONE guifg=#ffdfcf guibg=bg
highlight Identifier gui=NONE guifg=#2faf7f guibg=bg
if &t_Co > 8
  highlight Statement term=bold cterm=bold ctermfg=Yellow guifg=#5c71ab guibg=bg
endif
" highlight Statement gui=NONE guifg=#3f2fff guibg=bg
highlight Statement gui=NONE guifg=#0f2fff guibg=bg
highlight PreProc gui=NONE guifg=#af3faf guibg=bg
highlight type gui=NONE guifg=#2fc98f guibg=bg
highlight underlined gui=underline,bold guifg=#2f3faf guibg=bg
highlight Ignore gui=NONE guifg=#0f1faf guibg=bg
highlight Error gui=NONE guifg=#af1f5f guibg=bg
highlight Todo gui=bold guifg=#9f0f3f guibg=#0f0f0f
highlight string gui=NONE guifg=#af0f3f guibg=bg

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

" END "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
