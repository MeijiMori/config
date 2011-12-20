" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date

" #- First remove all existing highlighting. -# "{{{1
set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    highlight clear
    if exists("syntax_on")
        syntax reset
    endif
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = "ZycUs"
" #- Highlighting groups for various occasions -# "{{{1
highlight Normal gui=NONE guifg=#cfcfbf guibg=#0f0f0f
highlight SpecialKey gui=NONE guifg=#af2f5f guibg=bg
highlight NonText gui=bold guifg=#4f5fcf guibg=bg
highlight Directory gui=NONE guifg=#5f8fcf guibg=bg
highlight ErrorMsg gui=NONE guifg=#cf2f4f guibg=NONE
" search "{{{
highlight IncSearch gui=bold guifg=#000000 guibg=#8f9fff
highlight Search gui=bold guifg=#000000 guibg=#afcfff
"}}}
highlight MoreMsg gui=NONE guifg=#1f7f3f guibg=#afffcf
"highlight def link ModeMsg PmenuSel
highlight ModeMsg gui=NONE guifg=#1f3f7f guibg=#8fafcf
"highlight LineNr term=underline ctermbg=black gui=NONE ctermfg=white guifg=#cfcfcf guibg=NONE
highlight LineNr gui=NONE guifg=#ff8f7f guibg=NONE
"highlight def link Question MoreMsg
highlight Question gui=NONE guifg=#2fffcf guibg=bg
" Statusline "{{{
"highlight StatusLine ctermbg=black ctermfg=white gui=NONE guifg=#ffffff guibg=#2f2f4f
highlight StatusLine gui=NONE guifg=#cfcfcf guibg=#0f1f2f
highlight StatusLineNC gui=NONE guifg=#afafaf guibg=#2f0025
" }}}
"highlight VertSplit term=reverse cterm=reverse gui=NONE guifg=bg guibg=fg
highlight VertSplit gui=NONE guifg=#6f6f6f guibg=#dfdfdf
highlight Title gui=NONE guifg=#5fcfaf guibg=bg
" Visual "{{{
"highlight Visual term=reverse ctermbg=blue gui=NONE guifg=#ffffff guibg=#0f2f4f
highlight Visual gui=NONE guifg=#ffffff guibg=#0f1f3f
highlight VisualNOS gui=underline,bold guifg=#ffffff guibg=#3f4f7f
" }}}
highlight WarningMsg gui=NONE guifg=#cf2f4f guibg=bg
highlight WildMenu gui=NONE guifg=#cfcfcf guibg=#0f0f2f
" Fold "{{{
highlight Folded gui=NONE guifg=#3f5faf guibg=#0f0f2f
highlight FoldColumn gui=bold guifg=#2f2f8f guibg=#0f0f2f
" }}}
" diff "{{{
highlight DiffAdd gui=NONE guifg=#7fafff guibg=bg
highlight DiffChange gui=NONE guifg=#ff8faf guibg=bg
highlight DiffDelete gui=bold guifg=#af5faf guibg=bg
"highlight DiffText gui=bold guifg=#c9cbce guibg=bg
highlight DiffText gui=NONE guifg=#cfcfcf guibg=bg
" }}}
highlight SignColumn gui=NONE guifg=#cf4f8f guibg=bg
" Spell "{{{
highlight SpellBad gui=NONE guifg=#af5fcf guibg=bg
highlight SpellCap gui=NONE guifg=#6f7fff guibg=bg
highlight SpellRare gui=NONE guifg=#6fcf9f guibg=bg
highlight SpellLocal gui=NONE guifg=#8fdf6f guibg=bg
" }}}
" Pmenu "{{{
"highlight Pmenu gui=NONE guifg=#0f0f0f guibg=#cfcfcf
highlight Pmenu gui=NONE guifg=#0f0f0f guibg=#bfbfcf
highlight PmenuSel gui=NONE guifg=#dfdfdf guibg=#0f1f3f
highlight PmenuSbar gui=NONE guifg=#cccccc guibg=#1f1f1f
highlight PmenuThumb gui=NONE guifg=#aaaaaa guibg=#6f1f2f
" }}}
"tabline "{{{
" highlight TabLine term=NONE gui=NONE guifg=#bfbfbf guibg=#5f5f5f
" highlight TabLineSel term=NONE gui=NONE guifg=#ffffff guibg=#8f8f8f
" highlight TabLineFill term=NONE gui=NONE guifg=#5f5f5f guibg=#2f2f2f
highlight TabLine gui=underline guifg=#2f3f9f guibg=#0f0f1f
highlight TabLineSel gui=NONE guifg=#cfcfcf guibg=#0f1f3f
highlight TabLineFill gui=underline guifg=#2f3f8f guibg=#0f0f1f
"}}}
" cursor "{{{
highlight CursorColumn gui=NONE guifg=#000000 guibg=#2f2f2f
highlight CursorLine gui=NONE guifg=NONE guibg=#0f1f2f
highlight Cursor gui=underline guifg=#000000 guibg=#bfbfbf
" IME status color for cursor "{{{
if has('multi_byte_ime') || has('xim')
  highlight CursorIM gui=NONE guifg=#000000 guibg=#af2f3f
endif
"}}}
" }}}

" #- syntax highlighting groups -# "{{{1
highlight lCursor gui=NONE guifg=#575757 guibg=#7ea3a6
highlight MatchParen gui=bold guifg=#00000f guibg=#0f3faf
highlight comment gui=NONE guifg=#0f3fcf guibg=bg
highlight Constant gui=NONE guifg=#5f8fcf guibg=bg
highlight Special gui=NONE guifg=#bfbfbf guibg=bg
"highlight Identifier gui=NONE guifg=#9cb79c guibg=bg
highlight Identifier gui=NONE guifg=#2faf9f guibg=NONE
"highlight Statement term=bold cterm=bold ctermfg=Yellow gui=NONE guifg=#1f5f7f guibg=bg
highlight Statement gui=NONE guifg=#3f2faf guibg=bg
"highlight PreProc guifg=#b871b7 guibg=bg
highlight PreProc gui=NONE guifg=#5fcf7f guibg=bg
highlight type gui=NONE guifg=#2faf6f guibg=bg
highlight underlined gui=underline guifg=#2fcfaf guibg=bg
highlight Ignore gui=NONE guifg=#2f7f4f guibg=bg
highlight Error gui=NONE guifg=#ff4f8f guibg=bg
highlight Todo gui=bold guifg=#9f0f5f guibg=#bfbfcf
highlight string gui=NONE guifg=#cf8faf guibg=bg

" #- color function -# "{{{1
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
