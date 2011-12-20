" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file

" #- reset -# "{{{1
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

"#- colorscheme name -# "{{{1
let g:colors_name = "QximWs"

"#- highlighting groups for various occasions -# "{{{1
highlight Normal ctermbg=black ctermfg=white guifg=#fdfdfd guibg=#1f1f2f
"highlight SpecialKey term=bold ctermfg=LightBlue guifg=#7c49d9 guibg=#3b3b3b
highlight SpecialKey term=bold ctermfg=LightBlue guifg=#5842ff guibg=bg
highlight NonText term=NONE ctermfg=LightBlue gui=NONE guifg=#4e79c8 guibg=#10101f
highlight Directory term=bold ctermfg=LightCyan guifg=#3a85d2 guibg=bg
highlight ErrorMsg term=standout ctermbg=DarkBlue ctermfg=White gui=NONE guifg=#f84865 guibg=bg
"search "{{{
"highlight IncSearch term=REVERSE cterm=REVERSE gui=NONE guibg=#704461 guifg=#000000
highlight IncSearch term=REVERSE cterm=REVERSE gui=NONE guifg=#000000 guibg=#cc88e1
highlight Search term=REVERSE ctermbg=white ctermfg=Black guifg=#000000 guibg=#5088e1
"}}}
highlight MoreMsg term=NONE ctermfg=LightGreen gui=NONE guifg=#95d5d9 guibg=#303030
highlight ModeMsg term=bold cterm=bold ctermfg=white gui=NONE guifg=#ffffff guibg=#303030
highlight LineNr term=UNDERLINE ctermbg=black gui=NONE ctermfg=white guifg=#ff8fa0
highlight Question term=standout ctermfg=LightGreen gui=NONE guifg=#6ab395 guibg=bg
"statusline "{{{
highlight StatusLine ctermbg=black ctermfg=white gui=NONE guifg=#cfcfcf guibg=bg
"highlight StatusLineNC term=REVERSE cterm=REVERSE gui=NONE guifg=#564234 guibg=#b2a089
highlight StatusLineNC term=REVERSE cterm=REVERSE gui=NONE guifg=#5f5f5f guibg=#c4b2ab
"}}}
"highlight Title term=bold ctermfg=LightMagenta gui=NONE guifg=#a6dc72 guibg=#3d3d3d
highlight Title term=bold ctermfg=LightMagenta gui=NONE guifg=#72dc95
highlight VertSplit term=REVERSE cterm=REVERSE gui=NONE guifg=#4049d9 guibg=#202020
"visual "{{{
highlight Visual term=REVERSE ctermbg=blue guifg=#ffffff guibg=#1c5287
"
highlight VisualNOS term=UNDERLINE,bold cterm=UNDERLINE,bold gui=UNDERLINE guibg=#aaeeee guifg=#3d3d3d
"}}}
highlight WarningMsg term=standout ctermfg=LightRed guifg=#bc4765 guibg=bg
"highlight WildMenu term=standout ctermbg=Yellow ctermfg=Black gui=NONE guifg=#3a85d2 guibg=#3f3f3f
highlight WildMenu term=standout ctermbg=Yellow ctermfg=Black gui=NONE guifg=#3a85d2 guibg=#2a2a2a
"fold "{{{
highlight Folded term=standout ctermbg=LightGrey ctermfg=DarkBlue guifg=#cfcfcf guibg=#0f101f
highlight FoldColumn term=standout ctermbg=LightGrey ctermfg=DarkBlue gui=bold guifg=#3b54ec guibg=#0f101f
"}}}
"diff "{{{
highlight DiffAdd term=bold ctermbg=DarkBlue guifg=#aacbde guibg=bg
"
highlight DiffChange term=bold ctermbg=DarkMagenta guifg=#998dbf guibg=bg
"
highlight DiffDelete term=bold ctermfg=Blue ctermbg=DarkCyan gui=bold guifg=#a62c74 guibg=bg
highlight DiffText term=REVERSE cterm=bold ctermbg=Red gui=NONE guifg=#c9cbce guibg=bg
"}}}
highlight SignColumn term=NONE gui=NONE guibg=bg guifg=#a65774
"spell "{{{
highlight SpellBad term=NONE gui=NONE guibg=bg guifg=#795099
highlight SpellCap term=NONE gui=NONE guibg=bg guifg=#506399
highlight SpellRare term=NONE gui=NONE guibg=bg guifg=#509982
highlight SpellLocal term=NONE gui=NONE guibg=bg guifg=#998c50
"}}}
"pmenu "{{{
highlight Pmenu gui=NONE guifg=#cfcfcf guibg=#020f1f
highlight PmenuSel gui=NONE guifg=#ccfcfa guibg=#2f3faf
highlight PmenuSbar gui=NONE guifg=#9c9c9c guibg=#0f0f0f
highlight PmenuThumb gui=NONE guifg=#0f0f0f guibg=#212656
"}}}
"tabline "{{{
"highlight TabLine term=NONE gui=NONE guifg=#9d887c guibg=bg
highlight TabLine term=NONE gui=underline guifg=#7b7b7b guibg=bg
"highlight TabLineSel term=NONE gui=NONE guifg=#f0f0f0 guibg=#37538b
highlight TabLineSel term=NONE gui=NONE guifg=#afafaf guibg=#0f2f5f
"highlight TabLineFill term=NONE gui=NONE guifg=#564234 guibg=bg
highlight TabLineFill term=NONE gui=underline guifg=#415676 guibg=bg
"}}}
"cursor "{{{
highlight CursorLine ctermbg=magenta guibg=#3f3f3f
highlight Cursor guifg=#555555 guibg=#ffffff
"IME status color for cursor
if has('multi_byte_ime') || has('xim')
  highlight CursorIM gui=NONE guifg=#bfbfbf guibg=#ffb6c1
endif
"}}}

" #- syntax highlighting group -# "{{{1
highlight lCursor gui=NONE guifg=#575757 guibg=#7ea3a6
highlight MatchParen gui=bold guifg=#575757 guibg=#5f93cd
highlight comment term=bold gui=NONE guifg=#509fff guibg=bg
highlight Constant term=UNDERLINE ctermfg=Magenta gui=NONE guifg=#da7f7f guibg=bg
highlight Identifier gui=NONE guifg=#77aa77 guibg=bg
highlight Special term=bold ctermfg=LightRed gui=NONE guifg=#faaafa guibg=bg
if &t_Co > 8
  highlight Statement term=bold cterm=bold ctermfg=Yellow guifg=#5c71ab guibg=bg
endif
"highlight Statement gui=NONE guifg=#9be188 guibg=bg
highlight Statement gui=NONE guifg=#7f70ff guibg=bg
"highlight PreProc guifg=#b871b7 guibg=bg
highlight PreProc guifg=#aaffff guibg=bg
highlight type gui=NONE guifg=#71c9af guibg=bg
highlight underlined guifg=#6699cc guibg=#232323
highlight Ignore ctermfg=DarkGrey gui=NONE guifg=#fac08f
highlight Error gui=NONE guifg=#ff5050 guibg=bg
"highlight Todo gui=bold guifg=#50a0ff guibg=bg
highlight Todo gui=NONE guifg=#50a0ff guibg=bg
highlight string gui=NONE guifg=#ffafff guibg=bg
highlight CursorColumn term=REVERSE ctermbg=Black guibg=bg
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
