" #- Vim colorscheme file -# "{{{1
" NONE: "{{{2
" hilight /　/
" MatchParen "{([*])}

" #-  reset -#{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

"#- colorscheme name -#{{{1
let g:colors_name = "DioSy2"

"#- highlighting groups for various occasions -# "{{{1
highlight Normal gui=NONE guifg=#cccccc guibg=#202020
highlight SpecialKey gui=NONE guifg=#4f53ff guibg=bg
highlight NonText gui=NONE guifg=#4ef9c8 guibg=#2f2f2f
highlight Directory gui=NONE guifg=#5f7fff guibg=bg
highlight ErrorMsg gui=NONE guifg=#ff3f5f guibg=bg
"search "{{{
highlight IncSearch gui=bold guifg=bg guibg=#bf9fef
highlight Search gui=bold guifg=#000000 guibg=#4f88f1
"}}}
highlight MoreMsg gui=NONE guifg=#95d5d9 guibg=#303030
"highlight ModeMsg gui=NONE guifg=#bfd9c0 guibg=#3a3b3c
highlight ModeMsg gui=NONE guifg=#bfd9ff guibg=#303030
highlight LineNr gui=NONE guifg=#c3bcb4 guibg=#252525
highlight Question gui=NONE guifg=#6ab3b5 guibg=bg
"statusline "{{{
highlight StatusLine gui=NONE guifg=#10103f guibg=#dfdfdf
highlight StatusLineNC gui=NONE guifg=#565234 guibg=#c4b2ab
"}}}
"highlight Title gui=NONE guifg=#a6dc72 guibg=#3d3d3d
highlight Title gui=NONE guifg=#72dc95 guibg=bg
highlight VertSplit gui=NONE guifg=#3f7fff guibg=#2f2f2f
"visual "{{{
highlight Visual gui=NONE guifg=#ffeedd guibg=#1f2f5f
highlight VisualNOS gui=bold,underline guifg=#1f1f2f guibg=#5f8fcf
"}}}
highlight WarningMsg gui=NONE guifg=#ff3f5f guibg=bg
"highlight WildMenu  gui=NONE guifg=#3a85d2 guibg=#3f3f3f
highlight WildMenu gui=NONE guifg=#dfdfdf guibg=#2f3f5f
"fold "{{{
highlight Folded gui=NONE guifg=#4f53ff guibg=#1f1f1f
highlight FoldColumn gui=bold guifg=#4bcf7f guibg=#1f1f1f
"}}}
"diff "{{{
highlight DiffAdd gui=NONE guifg=#2f7fff guibg=bg
highlight DiffChange gui=NONE guifg=#ffff9f guibg=bg
"highlight DiffDelete gui=bold guifg=#f62c74 guibg=bg
highlight DiffDelete gui=NONE guifg=#f62c74 guibg=bg
highlight DiffText gui=NONE guifg=#c9cbce guibg=bg
"}}}
highlight SignColumn gui=NONE guifg=#56a7f4 guibg=bg
"spell "{{{
highlight SpellBad gui=NONE guifg=#f95099 guibg=bg
highlight SpellCap gui=NONE guifg=#50a3f9 guibg=bg
highlight SpellRare gui=NONE guifg=#50c982 guibg=bg
highlight SpellLoca gui=NONE guifg=#a9cc50 guibg=bg
"}}}
"pmenu "{{{
highlight Pmenu gui=NONE guifg=#aaaaaa guibg=#25202f
highlight PmenuSel gui=NONE guifg=#afafaf guibg=#1f2f5f
highlight PmenuSbar gui=bold guifg=#9c9c9c guibg=#000000
highlight PmenuThumb gui=bold guifg=#415676 guibg=#0f0f0f
"}}}
"tabline "{{{
"highlight TabLineSel term=NONE gui=bold guifg=#cccccc guibg=#415676
"highlight TabLineFill term=NONE gui=underline guifg=#415676 guibg=bg
highlight TabLine gui=underline guifg=#3f3f3f guibg=#cccccc
highlight TabLineSel gui=NONE guifg=#cfcfcf guibg=#1f2f4f
highlight TabLineFill gui=underline guifg=#000000 guibg=#999999
"}}}
"cursor "{{{
"highlight CursorLine ctermbg=magenta guibg=bg
highlight CursorLine gui=NONE guifg=NONE guibg=#2f3f5f
highlight ColorColumn gui=NONE guifg=NONE guibg=#892f30
highlight CursorColumn term=reverse ctermbg=Black guibg=bg
" IME status color for cursor "{{{
if has('multi_byte_ime') || has('xim')
  highlight CursorIM gui=NONE guifg=#000000 guibg=#bd2745
endif
" }}}
highlight Cursor gui=NONE guifg=#000000 guibg=#2f807f
" }}}

" #- syntax highlighting group -# "{{{1
highlight lCursor gui=NONE guifg=#575757 guibg=#7ea3a6
highlight MatchParen gui=bold guifg=#00000f guibg=#2f3fcd
"highlight comment term=bold gui=NONE guifg=#2d79c6 guibg=#3f3f3f
highlight comment gui=NONE guifg=#5088e1 guibg=bg
highlight Constant gui=NONE guifg=#aa7777 guibg=bg
highlight Identifier gui=NONE guifg=#879fff guibg=bg
highlight Special gui=NONE guifg=#cfffff guibg=bg
"highlight Statement gui=NONE guifg=#9be188 guibg=bg
highlight Statement gui=NONE guifg=#85baff guibg=bg
"highlight PreProc guifg=#b871b7 guibg=bg
highlight PreProc gui=NONE guifg=#aaffff guibg=bg
"highlight type gui=NONE guifg=#71ffaf guibg=bg
highlight type gui=NONE guifg=#61cf8f guibg=bg
highlight underlined gui=underline guifg=#6699cc guibg=bg
highlight Ignore gui=NONE guifg=#a3ffa2 guibg=bg
highlight Error gui=NONE guifg=#ff3f5f guibg=bg
"highlight Todo gui=bold guifg=#a0a0ff guibg=bg
highlight Todo gui=NONE guifg=#50a0ff guibg=bg
highlight string gui=NONE guifg=#f0d8e6 guibg=bg

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

"END "{{{1
" vim: filetype=vim
" vim: fen:fdm=marker
