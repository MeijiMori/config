" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date
" Guicolorscheme file

" #- Vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- Colorscheme name -# "{{{1
let g:colors_name = "joker"

"#- Highlighting groups for various occasions -# "{{{1
highlight Normal gui=NONE guifg=#cfcfcf guibg=#1f001f
highlight SpecialKey gui=NONE guifg=#585fff guibg=bg
highlight NonText gui=NONE guifg=#1f59ff guibg=#1f0f1f
"highlight Directory term=bold ctermfg=LightCyan guifg=#3a85d2 guibg=#363838
highlight Directory gui=NONE guifg=#2f5fe0 guibg=bg
"highlight ErrorMsg term=standout ctermbg=DarkBlue ctermfg=White gui=NONE guifg=#b84865 guibg=#363636
highlight ErrorMsg gui=NONE guifg=#f84865 guibg=bg
" search "{{{
"highlight IncSearch gui=NONE guibg=#704461 guifg=#000000
highlight IncSearch gui=bold guifg=#cfcfcf guibg=#2f0f5f
highlight Search gui=bold guifg=#cfcfcf guibg=#0f1f3f
"}}}
highlight MoreMsg gui=NONE guifg=#4faf8f guibg=NONE
highlight ModeMsg gui=NONE guifg=#4f3fdf guibg=NONE
" highlight LineNr term=underline ctermbg=black gui=NONE ctermfg=white guifg=#af0f3f guibg=NONE
highlight LineNr gui=NONE guifg=#5f0f3f guibg=NONE
highlight Question gui=NONE guifg=#6acf95 guibg=NONE
" statusline "{{{
highlight StatusLine gui=NONE guifg=#ffffff guibg=#101020
"highlight StatusLineNC term=reverse cterm=reverse gui=NONE guifg=#565234 guibg=#c4b2ab
highlight StatusLineNC gui=NONE guifg=#565234 guibg=#c4b2ab
"}}}
"highlight Title term=bold ctermfg=LightMagenta gui=NONE guifg=#a6dc72 guibg=#3d3d3d
highlight Title gui=NONE guifg=#72dc95 guibg=bg
highlight VertSplit gui=bold guifg=#7f1f5f guibg=#0f0f0f
" visual "{{{
"highlight Visual term=reverse cterm=bold ctermbg=blue guifg=#bfbfbf guibg=#202a4f
highlight Visual gui=NONE guifg=#afafaf guibg=#1f0f3f
highlight VisualNOS gui=underline,bold guifg=#cfcfcf guibg=#1f0f3f
"}}}
highlight WarningMsg gui=NONE guifg=#cf2f5f guibg=bg
highlight WildMenu gui=NONE guifg=#0f1f3f guibg=#afafaf
" fold "{{{
highlight Folded gui=underline guifg=#9f9f9f guibg=#150f15
" highlight FoldColumn term=standout ctermbg=LightGrey ctermfg=DarkBlue gui=bold guifg=#2f3fcf guibg=#100f10
 highlight FoldColumn  gui=bold guifg=#1f7f8f guibg=#100f10
" }}}
" diff "{{{
highlight DiffAdd gui=NONE guifg=#afdfff guibg=bg
highlight DiffChange gui=NONE guifg=#cf8fff guibg=bg
highlight DiffDelete gui=bold guifg=#f62c74 guibg=bg
highlight DiffText gui=NONE guifg=#f9fbfe guibg=bg
" }}}
highlight SignColumn gui=NONE guibg=bg guifg=#ffffb0
" spell "{{{
highlight SpellBad  gui=NONE guifg=#af5fbf guibg=bg
highlight SpellCap  gui=NONE guifg=#7f6fbf guibg=bg
highlight SpellRare gui=NONE guifg=#7fcfaf guibg=bg
highlight SpellLocal gui=NONE guifg=#bfaf5f guibg=bg
" }}}
" pmenu "{{{
"highlight Pmenu gui=NONE guifg=#cccccd guibg=#3f3f3f
"highlight PmenuSel gui=NONE guifg=#ededed guibg=#415676
"highlight PmenuSbar gui=NONE guifg=#9c9c9c guibg=#404040
"highlight PmenuThumb gui=reverse guifg=#415676 guibg=#404040
highlight Pmenu gui=NONE guifg=#0f0f3f guibg=#bfbfff
highlight PmenuSel gui=NONE guifg=#bfbfbf guibg=#2f1f50
highlight PmenuSbar gui=NONE guifg=#cccccc guibg=#101020
highlight PmenuThumb gui=NONE guifg=#aaaaaa guibg=#1f2f5f
" }}}
" tabline "{{{
"highlight TabLine term=NONE gui=NONE guifg=#9b9b9f guibg=#202020
"highlight TabLineSel term=NONE gui=NONE guifg=#cfcfcf guibg=#2f3f6f
"highlight TabLineFill term=NONE gui=underline guifg=#415676 guibg=#202025
highlight TabLine gui=NONE guifg=#555555 guibg=#bbbbbb
highlight TabLineSel gui=NONE guifg=#afafaf guibg=#0f0f2f
"highlight TabLineFill term=NONE gui=NONE guifg=#9f9f9f guibg=#bfbfbf
highlight TabLineFill gui=NONE guifg=#5f5f5f guibg=#bfbfbf
" }}}
" cursor "{{{
"highlight CursorLine ctermbg=magenta guibg=#314682
highlight CursorColumn gui=NONE guifg=fg guibg=bg
highlight CursorLine gui=NONE guifg=NONE guibg=#2f0f2f
highlight ColorColumn gui=NONE guifg=fg guibg=bg
" Cursor color for IME status"{{{
if has('multi_byte_ime') || has('xim')
  highlight CursorIM gui=NONE guifg=#0f0f0f guibg=#8f1f3f
endif "}}}
highlight Cursor gui=NONE guifg=#000000 guibg=#afafaf
" }}}

" #- Syntax highlighting group -# "{{{1
highlight lCursor gui=NONE guifg=#575757 guibg=#7ea3a6
highlight MatchParen gui=bold guifg=#00000f guibg=#2f3f7f
highlight comment gui=NONE guifg=#2f3fcf guibg=bg
highlight Constant gui=NONE guifg=#af2fcf guibg=bg
highlight Identifier gui=NONE guifg=#cf9f5f guibg=bg
highlight Special gui=NONE guifg=#afffcf guibg=bg
highlight Statement gui=NONE guifg=#2fcf8f guibg=bg
highlight PreProc gui=NONE guifg=#cf5f8f guibg=bg
highlight type gui=NONE guifg=#2faf8f guibg=bg
highlight underlined gui=underline guifg=#568cff guibg=bg
highlight Ignore gui=NONE guifg=#047f75 guibg=NONE
highlight Error gui=NONE guifg=#f04f7e guibg=bg
highlight Todo gui=bold guifg=#8f1f5f guibg=#0f0f2f
highlight string gui=NONE guifg=#ffc8e6 guibg=bg

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
