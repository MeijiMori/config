" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date
" Guicolorscheme file

" #- Vim color file reset -#{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

"#- colorscheme name -#{{{1
let g:colors_name = "FaiEd"

"#- highlighting groups for various occasions -# "{{{1
highlight Normal gui=NONE guifg=#fdfdfd guibg=#10101f
"highlight SpecialKey term=bold ctermfg=LightBlue guifg=#5842ff guibg=#3b3b3b
highlight SpecialKey term=bold cterm=NONE ctermfg=blue guifg=#6f5fff guibg=bg
highlight NonText term=NONE ctermfg=LightBlue ctermbg=black gui=NONE guifg=#4eafff guibg=#202020
"highlight Directory term=bold ctermfg=LightCyan guifg=#3a85d2 guibg=#363838
highlight Directory term=bold ctermfg=brown guifg=#3a85d2 guibg=bg
"highlight ErrorMsg term=standout ctermbg=DarkBlue ctermfg=White gui=NONE guifg=#b84865 guibg=#363636
highlight ErrorMsg term=standout ctermfg=black ctermbg=gray ctermfg=White gui=NONE guifg=#f84865 guibg=bg
"search "{{{
"highlight IncSearch term=reverse cterm=reverse gui=NONE guibg=#704461 guifg=bg
highlight IncSearch term=reverse cterm=NONE ctermfg=black ctermbg=blue gui=NONE guifg=#10101f guibg=#cc88e1
highlight Search term=reverse  cterm=NONE ctermfg=black ctermbg=blue guifg=#10101f guibg=#5088e1
"}}}
highlight MoreMsg term=NONE cterm=NONE ctermfg=black ctermbg=White gui=NONE guifg=#95d5d9 guibg=#25252f
highlight ModeMsg term=bold cterm=bold ctermfg=white gui=NONE guifg=#ffffff guibg=#25252f
"highlight LineNr term=underline ctermbg=black gui=NONE ctermfg=white guifg=#c3bcb4 guibg=#3a3a3a
highlight LineNr term=underline ctermbg=black gui=NONE ctermfg=white guifg=#c3bcb4 guibg=NONE
highlight Question term=standout ctermfg=LightGreen gui=NONE guifg=#6ab395 guibg=#25252f
"statusline "{{{
highlight StatusLine ctermbg=black ctermfg=white gui=NONE guifg=bg guibg=#dfdfdf
highlight StatusLineNC term=reverse cterm=reverse gui=NONE guifg=#564234 guibg=#b2a089
"}}}
highlight Title term=bold ctermfg=LightMagenta gui=NONE guifg=#72dc95
highlight VertSplit term=reverse cterm=reverse gui=NONE guifg=#4f5fdf guibg=#202020
"visual "{{{
highlight Visual term=reverse ctermbg=blue gui=NONE guifg=#ffffff guibg=#2f3f5f
highlight VisualNOS term=underline,bold cterm=underline,bold gui=underline guibg=#aaeeee guifg=#3d3d3d
"}}}
highlight WarningMsg term=standout ctermfg=LightRed guifg=#fc4765 guibg=bg
highlight WildMenu term=standout ctermbg=Yellow ctermfg=Black gui=NONE guifg=#3a85d2 guibg=#202020
"fold "{{{
highlight Folded term=standout ctermfg=white ctermbg=blue guifg=#3f7fdf guibg=#202020
highlight FoldColumn term=standout ctermfg=green ctermbg=black gui=bold guifg=#4f6dcf guibg=#202020
" }}}
"diff "{{{
highlight DiffAdd term=bold ctermbg=DarkBlue guifg=#afdfff guibg=bg
highlight DiffChange term=bold ctermbg=DarkMagenta guifg=#cf8fff guibg=bg
highlight DiffDelete term=bold ctermfg=Blue ctermbg=DarkCyan gui=bold guifg=#f62c74 guibg=bg
highlight DiffText term=reverse cterm=bold ctermbg=Red gui=NONE guifg=#f9fbfe guibg=bg
" }}}
highlight SignColumn term=NONE gui=NONE guifg=#f65774 guibg=bg
if v:version >= 703
  highlight Conceal term=NONE gui=NONE guibg=#3a3b3c guifg=#a65774
endif
"spell "{{{
highlight SpellBad term=NONE gui=NONE guifg=#af5fbf guibg=bg
highlight SpellCap term=NONE gui=NONE guifg=#7f6fbf guibg=bg
highlight SpellRare term=NONE gui=NONE guifg=#7fcfaf guibg=bg
highlight SpellLocal term=NONE gui=NONE guifg=#bfaf5f guibg=bg
" }}}
"pmenu "{{{
highlight Pmenu gui=NONE guifg=#cccccd guibg=bg
highlight PmenuSel gui=NONE guifg=#cccccc guibg=#41569f
highlight PmenuSbar gui=NONE guifg=#9c9c9c guibg=#404040
highlight PmenuThumb gui=reverse guifg=#415676 guibg=#404040
" }}}
"tabline "{{{
"highlight TabLine term=NONE gui=underline guifg=#9b9b9f guibg=bg
highlight TabLine term=NONE gui=underline guifg=#7f7f7f guibg=#bfbfbf
"highlight TabLineSel term=NONE gui=NONE guifg=#f0f0f0 guibg=#3f4f7f
highlight TabLineSel term=NONE gui=NONE guifg=#ffffff guibg=#0f3f5f
"highlight TabLineFill term=NONE gui=underline guifg=#415676 guibg=bg
highlight TabLineFill term=NONE gui=underline guifg=#415676 guibg=#9f9f9f
" }}}
"cursor "{{{
"highlight CursorLine ctermbg=darkblue guibg=#1f3f5f
highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=blue guibg=#2f3f6f
highlight Cursor ctermfg=NONE ctermbg=white gui=NONE guifg=bg guibg=#4f9fcf
"IME status color for cursor " "{{{
if has('multi_byte_ime')
  highlight Cursor gui=NONE guifg=bg guibg=#3f7faf
  highlight CursorIM gui=NONE guifg=#bfbfbf guibg=#ffb6c1
endif " }}}
" }}}

" #- syntax highlighting group -# "{{{1
highlight lCursor gui=NONE guifg=#575757 guibg=#7ea3a6
highlight MatchParen gui=bold guifg=#30303f guibg=#5f93cd
highlight comment term=bold gui=NONE guifg=#4d79ff guibg=bg
highlight Constant term=underline ctermfg=Magenta gui=NONE guifg=#7dd97b guibg=bg
highlight Identifier gui=NONE guifg=#ccb0d7 guibg=bg
highlight Special term=bold ctermfg=LightRed gui=NONE guifg=#aeffed guibg=bg
if &t_Co > 8
  highlight Statement term=bold cterm=bold ctermfg=Yellow guifg=#5c71ab guibg=bg
endif
"highlight Statement gui=NONE guifg=#9be188 guibg=bg
highlight Statement gui=NONE guifg=#94de92 guibg=bg
"highlight PreProc guifg=#b871b7 guibg=bg
highlight PreProc guifg=#b871b7 guibg=bg
highlight type gui=NONE guifg=#71c9af guibg=bg
highlight underlined gui=underline guifg=#568cff guibg=bg
highlight Ignore ctermfg=DarkGrey guifg=#047f75
highlight Error gui=NONE guifg=#f04f7e guibg=bg
highlight Todo gui=None guifg=#3268ca guibg=bg
highlight string gui=NONE guifg=#ffc8e6 guibg=bg
highlight CursorColumn term=reverse ctermbg=Black guibg=bg

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
"  vim:filetype=vim
