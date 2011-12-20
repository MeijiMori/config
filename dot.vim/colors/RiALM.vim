" #- vim color file -# "{{{1
" Note: "{{{2
" hilight ZenkakuSpace /　/
" matchparen ({[*]})
" This colorscheme filename is refered to Mizue Arimori ... thanks!
" This colorscheme is improved darkblue

" #- Vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -# "{{{1
let colors_name = "RiALM"

" #- highlighting groups various ooccasions -# "{{{1
highlight Normal gui=NONE guifg=#efefef guibg=#192a4f
highlight SpecialKey gui=NONE guifg=#5f2fcf guibg=NONE
highlight NonText gui=NONE guifg=#99ffff guibg=#1f2f4f
highlight Directory gui=NONE guifg=#2f5fcf guibg=bg
highlight ErrorMsg gui=NONE guifg=#ff2faf guibg=NONE
" search "{{{
highlight IncSearch gui=bold guifg=#000000 guibg=#af3fcf
highlight Search gui=bold guifg=#000000 guibg=#2f4fcf
" }}}
highlight MoreMsg gui=NONE guifg=#4488ff guibg=#0f2f5f
highlight ModeMsg cterm=bold gui=NONE guifg=#cfcfcf guibg=#0f2f5f
highlight LineNr gui=NONE ctermfg=white guifg=#75d99d
highlight Question gui=NONE guifg=#25af80 guibg=#0f1f3f
" statusline "{{{
highlight StatusLine gui=NONE guifg=#cfcfcf guibg=#101f3f
highlight StatusLineNC gui=NONE guifg=#5f5f3f guibg=#c4b2ab
" }}}
highlight Title term=bold ctermfg=LightMagenta gui=NONE guifg=#2fd4c6
highlight VertSplit term=reverse cterm=reverse gui=NONE guifg=#23447f guibg=#1f1f4f
" visual "{{{
highlight Visual gui=NONE guifg=#ffffff guibg=#001f3f
highlight VisualNOS gui=underline,bold guifg=#cfcfcf guibg=#0f2f5f
" }}}
highlight WarningMsg gui=NONE guifg=#cf5f7f guibg=NONE
highlight WildMenu gui=NONE guifg=#cfcfcf guibg=#1f2f5f
" fold "{{{
highlight Folded gui=NONE guifg=#bfbfbf guibg=#102040
highlight FoldColumn gui=bold guifg=#ffffff guibg=#1f2f5f
" }}}
" diff "{{{
highlight DiffAdd gui=NONE guifg=#00a3a5 guibg=bg
highlight DiffChange gui=NONE guifg=#196fff guibg=bg
highlight DiffDelete gui=bold guifg=#55ffff guibg=bg
highlight DiffText gui=NONE guifg=#cfcfcf guibg=bg
" }}}
highlight SignColumn gui=NONE guifg=#ff5f7f guibg=bg
" spell "{{{
highlight SpellBad gui=NONE guifg=#cf5fdf guibg=bg
highlight SpellCap gui=NONE guifg=#5f9fff guibg=bg
highlight SpellRare gui=NONE guifg=#5fff8f guibg=bg
highlight SpellLocal gui=NONE guifg=#ffcf5f guibg=bg
" }}}
"pmenu "{{{
highlight pmenu gui=NONE guifg=#cfcfcf guibg=#050f2f
highlight PmenuSel gui=NONE guifg=#cfcfcf guibg=#0f1f3f
highlight pmenuSbar gui=NONE guifg=#afafaf guibg=#0f0f0f
highlight PmenuThumb gui=NONE guifg=#afafaf guibg=#0f1f1f
" }}}
" tabline "{{{
highlight TabLine gui=underline guifg=#aaaaaa guibg=#190a3f
highlight TabLineSel gui=NONE guifg=#cfcfcf guibg=#15305f
highlight TabLineFill gui=underline guifg=#415676 guibg=#100a3f
" }}}
" cursor "{{{
highlight CursorLine term=underline cterm=underline ctermbg=blue guifg=NONE guibg=#1f2f5f
highlight CursorColumn term=reverse ctermbg=Black guibg=grey40
highlight Cursor gui=NONE guifg=#000000 guibg=#5faf7f
"IME status color for cursor "{{{
if has('multi_byte_ime') || has('xim')
  highlight CursorIM gui=NONE guifg=#bfbfbf guibg=#5f0f3f
endif "}}}
" }}}

" #- syntax highlighting group -# "{{{1
highlight lCursor gui=NONE guifg=#000000 guibg=#5fcfaf
highlight MatchParen gui=bold guifg=#0f0f0f guibg=#2f5faf
highlight comment gui=NONE guifg=#3f5fff guibg=bg
highlight Constant gui=NONE guifg=#7fffaf guibg=bg
highlight Special term=bold ctermfg=LightRed gui=NONE guifg=#deffed guibg=bg
highlight Identifier gui=NONE guifg=#b6f5eb guibg=bg
if &t_Co > 8
  highlight Statement term=bold cterm=bold ctermfg=Yellow guifg=#ffff60
endif
highlight Statement gui=NONE guifg=#ffcf7f guibg=bg
highlight PreProc gui=NONE guifg=#ffadfe guibg=bg
highlight type gui=NONE guifg=#59c390 guibg=bg
highlight underlined gui=underline guifg=#56efcc guibg=bg
highlight Ignore ctermfg=DarkGrey gui=NONE guifg=#4f50ff guibg=bg
highlight Error gui=NONE guifg=#fd4899 guibg=bg
highlight string gui=NONE guifg=#ffc8ff guibg=bg
highlight Todo gui=NONE guifg=#fe5eef guibg=bg

" #- color functions -# "{{{1
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

" END: "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
