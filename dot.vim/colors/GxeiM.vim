" vim colorscheme file "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file
" This colorscheme is improved default and default sakura editor color

" #- vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- color scheme name -# "{{{1
let g:colors_name = "GxeiM"

" #- highlighting groups for various occasions "{{{1
highlight Normal gui=NONE guifg=#0f0f0f guibg=#ffffef
highlight SpecialKey gui=NONE guifg=#1f915f guibg=bg
highlight NonText gui=NONE guifg=#2b3b76 guibg=#ffffff
highlight Directory gui=bold guifg=#2b609b guibg=#fffee0
highlight ErrorMsg gui=NONE guifg=#af1f5f guibg=#e8dfcb
"search "{{{
highlight IncSearch gui=bold guifg=#0f0f0f guibg=#cc88e1
highlight Search gui=bold guifg=#0f0f0f guibg=#5088e1
"}}}
highlight MoreMsg gui=NONE guifg=#66765a guibg=#e8dfcb
highlight ModeMsg gui=NONE guifg=#4a4741 guibg=#e8dfcb
"highlight LineNr gui=NONE ctermfg=white guifg=#b59720 guibg=bg
highlight LineNr gui=NONE ctermfg=white guifg=#b57720
highlight Question gui=NONE guifg=#345749 guibg=bg
"statusline "{{{
highlight StatusLine gui=NONE guifg=#ffffff guibg=#10202f
highlight StatusLineNC gui=NONE guifg=#7b8b85 guibg=#0f1f2f
"}}}
highlight Title gui=bold guifg=#177479 guibg=bg
highlight VertSplit gui=NONE guifg=#66aaff guibg=#363636
" visual "{{{
highlight Visual gui=NONE guifg=#cfcfcf guibg=#2c325f
highlight VisualNOS gui=underline,bold guifg=#cfcfcf guibg=#2f3f5f
"}}}
highlight WarningMsg gui=NONE guifg=#af2f5f guibg=#e8dfcb
highlight WildMenu gui=NONE guifg=#001f5f guibg=#efefff
" fold "{{{
highlight Folded gui=NONE guifg=#001f5f guibg=#bfcfdf
highlight FoldColumn gui=bold guifg=#1c417c guibg=bg
"}}}
" diff "{{{
"highlight DiffAdd gui=NONE guibg=#3a3b3c guifg=#aacbde
"highlight DiffChange gui=NONE guifg=#998dbf guibg=#3a3b3c
"highlight DiffText  gui=bold guibg=#3a3b3c guifg=#c9cbce
highlight DiffAdd gui=bold guifg=#000000 guibg=#afffcf
highlight DiffChange gui=NONE guifg=#ea69dc guibg=#fff6e6
highlight DiffDelete gui=NONE guifg=#a62c74 guibg=#fff6e6
highlight DiffText gui=NONE guifg=#16187f guibg=#fff6e6
"}}}
highlight SignColumn gui=NONE guifg=#a65774 guibg=bg
"spell "{{{
highlight SpellBad gui=NONE guifg=#795099 guibg=bg
highlight SpellCap gui=NONE guifg=#506399 guibg=bg
highlight SpellRare gui=NONE guifg=#509982 guibg=bg
highlight SpellLocal gui=NONE guifg=#998c50 guibg=bg
"}}}
"pemu "{{{
"highlight Pmenu gui=NONE guifg=#10102f guibg=#dff9ff
"highlight PmenuSel gui=NONE guifg=#000000 guibg=#7fa0ff
"highlight PmenuThumb gui=NONE guifg=#292929 guibg=#10205f
highlight Pmenu gui=NONE guifg=#10102f guibg=#dbdbf3
highlight PmenuSel gui=NONE guifg=#bfbfbf guibg=#2f265f
highlight PmenuSbar gui=NONE guifg=#cccccc guibg=#3a3b3c
highlight PmenuThumb gui=NONE guifg=#0f0f0f guibg=#21365f
"}}}
"tabline "{{{
" highlight TabLine gui=underline guifg=#3f3f3f guibg=#dfdfff
" highlight TabLineSel gui=NONE guifg=#eeeeee guibg=#10356f
" highlight TabLineFill gui=underline guifg=#3f3f3f guibg=#efefff
highlight TabLine gui=underline guifg=#5f5f5f guibg=#cfcfdf
highlight TabLineSel gui=underline guifg=#00001f guibg=#efefff
highlight TabLineFill gui=underline guifg=#5f2f3f guibg=#cfcfcf
"}}}
"cursor "{{{
highlight CursorColumn guibg=bg
"highlight CursorLine ctermbg=magenta guibg=#545454
highlight CursorLine gui=NONE guifg=NONE guibg=#f9daf6
highlight ColorColumn gui=NONE guifg=NONE guibg=#ff5588
" highlight Cursor gui=NONE guifg=#000000 guibg=#6e6fac
highlight Cursor gui=NONE guifg=#000000 guibg=#2f8f8f
" IME status color for cursor "{{{
if has('multi_byte_ime') || has('xim')
  highlight CursorIM gui=NONE guifg=#000000 guibg=#7f0f2f
endif "}}}
"}}}

" #- syntax highlighting groups -# "{{{1
highlight lCursor gui=NONE guifg=#575757 guibg=#000000
highlight MatchParen gui=bold guifg=#20202f guibg=#a26fac
" highlight comment gui=NONE guifg=#2f852d guibg=NONE
highlight comment gui=NONE guifg=#1f3f8f guibg=NONE
highlight Constant gui=NONE guifg=#0f2f7f guibg=bg
highlight Special term=bold ctermfg=LightRed gui=NONE guifg=#003857 guibg=bg
highlight Identifier gui=NONE guifg=#1f5f0f guibg=bg
if &t_Co > 8
  highlight Statement term=bold cterm=bold ctermfg=Yellow guifg=#3a3b3c guibg=#3a3b3c
endif
highlight Statement gui=NONE guifg=#0f2f7f guibg=bg
highlight PreProc gui=NONE guifg=#7c207b guibg=bg
highlight type gui=NONE guifg=#0f3f1f guibg=bg
highlight underlined gui=NONE guifg=#399620 guibg=#f4f8c9
highlight Ignore gui=bold guifg=#105f20 guibg=bg
highlight Error gui=NONE guifg=#af2f5f guibg=bg
highlight Todo gui=bold guifg=#4e5ca0 guibg=#cfcfdf
highlight string gui=NONE guifg=#7f1f2f guibg=bg

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
