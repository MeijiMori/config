" #- vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/

" reset "{{{1
if version > 580
  set background=dark
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" colorscheme name "{{{1
let g:colors_name = "UxIm"

" #- highlighting groups for various occasions -# "{{{1
highlight Normal ctermbg=black ctermfg=white guifg=#cfcfcf guibg=#1f1f20
highlight SpecialKey term=bold ctermfg=LightBlue gui=NONE guifg=#734cce guibg=bg
highlight NonText term=bold ctermfg=LightBlue gui=NONE guifg=#4c58ce guibg=#101a2f
highlight Directory term=bold ctermfg=LightCyan gui=NONE guifg=#2b9aa4 guibg=bg
highlight ErrorMsg term=standout ctermbg=DarkBlue ctermfg=White gui=NONE guifg=#d42f79 guibg=bg
" search "{{{
highlight IncSearch term=reverse cterm=reverse gui=bold guifg=bg guibg=#caa1af
highlight Search term=reverse ctermbg=white ctermfg=Black gui=bold guifg=#000000 guibg=#6f7fff
"}}}
highlight MoreMsg term=NONE ctermfg=LightGreen gui=NONE guifg=#66af51 guibg=bg
highlight ModeMsg term=bold cterm=bold ctermfg=white gui=NONE guifg=#fffeee guibg=bg
highlight LineNr term=underline ctermbg=black gui=NONE ctermfg=white guifg=#75d99d guibg=NONE
highlight Question term=standout ctermfg=LightGreen gui=NONE guifg=#7bdccb
" statusline "{{{
highlight StatusLine ctermbg=black ctermfg=white gui=NONE guifg=#cfcfcf guibg=#0f0f1f
highlight StatusLineNC term=reverse cterm=reverse gui=NONE guifg=#565234 guibg=#c4b2ab
" }}}
highlight VertSplit term=reverse cterm=reverse gui=NONE guifg=#1f1f2f guibg=#0f0f0f
highlight Title term=bold ctermfg=LightMagenta gui=NONE guifg=#4cdc75 guibg=bg
" visual "{{{
highlight Visual term=reverse ctermbg=blue guifg=#ffffff gui=NONE guifg=#cccccc guibg=#1f2a40
highlight VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold guifg=#ffffff guibg=#2f3f8f
" }}}
highlight WarningMsg term=standout ctermfg=LightRed gui=NONE guifg=#79a2f6 guibg=bg
highlight WildMenu term=standout ctermbg=Yellow ctermfg=Black gui=NONE guifg=#57a496 guibg=#20203f
" fold "{{{
highlight Folded term=standout ctermbg=LightGrey ctermfg=DarkBlue guifg=#35afa1 guibg=#10101f
highlight FoldColumn term=standout ctermbg=LightGrey ctermfg=DarkBlue gui=bold guifg=#3bcfac guibg=#13121f
" }}}
" diff "{{{
highlight DiffAdd term=bold ctermbg=DarkBlue gui=bold guifg=#aacbde guibg=bg
highlight DiffChange term=bold ctermbg=DarkMagenta guifg=#998dbf guibg=#20324f
highlight DiffDelete term=bold ctermfg=Blue ctermbg=DarkCyan gui=bold guifg=#a62c74 guibg=bg
highlight DiffText term=reverse cterm=bold ctermbg=Red gui=NONE guifg=#c9cbce guibg=bg
" }}}
highlight SignColumn term=NONE gui=NONE guibg=bg guifg=#a65774
" spell "{{{
highlight SpellBad term=NONE gui=NONE guifg=#795099 guibg=bg
highlight SpellCap term=NONE gui=NONE guifg=#506399 guibg=bg
highlight SpellRare term=NONE gui=NONE guifg=#509982 guibg=bg
highlight SpellLocal term=NONE gui=NONE guifg=#998c50 guibg=bg
" }}}
" pmenu "{{{
highlight pmenu gui=NONE guifg=#cfcfcf guibg=#0f0f1f
"highlight PmenuSel gui=NONE guifg=#d2d2d2 guibg=#253a5f
highlight PmenuSel gui=NONE guifg=#d2d2d2 guibg=#21365f
highlight PmenuSbar gui=NONE guifg=#9c9c9c guibg=#1f1f3f
highlight PmenuThumb gui=NONE guifg=#0f0f0f guibg=#21365f
" }}}
" tabline "{{{
highlight TabLine term=NONE gui=underline guifg=#858585 guibg=bg
highlight TabLineSel term=NONE gui=underline guifg=#cfcfcf guibg=#2f305f
highlight TabLineFill term=NONE gui=underline guifg=#858585 guibg=bg
" }}}
" cursor "{{{
highlight CursorLine ctermbg=magenta gui=NONE guifg=NONE guibg=#1f2530
highlight Cursor gui=NONE guifg=#000000 guibg=#afafaf
if has('multi_byte_ime') || has('xim')
  highlight CursorIM gui=NONE guifg=#000000 guibg=#c483a6
endif
" }}}

" #- syntax highlighting group -# "{{{1
highlight lCursor gui=NONE guifg=#000000 guibg=#6c83a6
highlight MatchParen term=bold gui=NONE guifg=#000000 guibg=#965a81
highlight comment term=bold guifg=#6588e1 guibg=bg
highlight Constant term=underline ctermfg=Magenta guifg=#7498ff guibg=bg
highlight Special term=bold ctermfg=LightRed gui=NONE guifg=#deffed guibg=bg
highlight Identifier gui=NONE guifg=#766fff guibg=bg
highlight Statement gui=NONE guifg=#cf7ff6 guibg=bg
highlight PreProc gui=NONE guifg=#fdacfc guibg=bg
highlight type gui=NONE guifg=#7ab191 guibg=bg
highlight underlined gui=underline guifg=#8abbd5 guibg=#1f363c
highlight Ignore ctermfg=DarkGrey gui=NONE guifg=#c35fa1 guibg=bg
highlight Error gui=NONE guifg=#f34d70 guibg=bg
highlight Todo gui=bold guifg=#fe5eef guibg=#2f203f
" highlight string gui=NONE guifg=#f0bf80 guibg=bg
highlight string gui=NONE guifg=#ed4949 guibg=bg
" Show ZenkakuSpace "{{{
autocmd VimEnter,BufEnter * let zspace  = matchadd("ZenkakuSpace", "　")
highlight ZenkakuSpace gui=NONE guifg=NONE guibg=#4f2f4f
" }}}
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

" End "{{{1
" vim: fen:fdm=marker
" vim: ts=2:sw=2
" }}}
