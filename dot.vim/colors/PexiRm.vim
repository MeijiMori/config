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
highlight Normal ctermbg=black ctermfg=white guifg=#fdfdfd guibg=#323232
highlight SpecialKey term=bold ctermfg=LightBlue guifg=#759f9e guibg=bg
highlight NonText term=NONE ctermfg=LightBlue guifg=#ffffff guibg=#383838
highlight Directory term=bold ctermfg=LightCyan guifg=#5787a6 guibg=bg
highlight ErrorMsg term=standout ctermbg=DarkBlue ctermfg=White gui=NONE guifg=#835071 guibg=bg
" search "{{{
"highlight IncSearch term=reverse cterm=reverse gui=NONE guibg=#704461 guifg=#000000
highlight IncSearch term=reverse cterm=reverse gui=NONE guibg=#702e59 guifg=#000000
highlight Search term=reverse ctermbg=white ctermfg=Black guibg=#702556 guifg=#111111
" }}}
highlight MoreMsg term=NONE ctermfg=LightGreen gui=NONE guifg=#87a07a guibg=bg
highlight ModeMsg term=bold cterm=bold ctermfg=white gui=NONE guifg=#ffffff
highlight LineNr term=underline ctermbg=black gui=NONE ctermfg=white guifg=#6b6b6b guibg=NONE
highlight Question term=standout ctermfg=LightGreen gui=NONE guifg=#6ab395 guibg=bg
" statusline "{{{
"highlight StatusLine term=reverse,bold cterm=reverse,bold gui=reverse,bold
highlight StatusLine ctermbg=black ctermfg=white gui=NONE guifg=#ffffff guibg=#35353f
highlight StatusLineNC term=reverse cterm=reverse gui=NONE guifg=#3b3835 guibg=#636363
" }}}
highlight Title term=bold ctermfg=LightMagenta gui=NONE guifg=#acacac guibg=bg
highlight VertSplit term=reverse cterm=reverse gui=NONE guifg=#aaaaaa guibg=#363636
" visual "{{{
highlight Visual term=reverse ctermbg=blue guifg=#cfcfcf guibg=#2f3f77
highlight VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold guibg=#aaeeee guifg=#3d3d3d
" }}}
highlight WarningMsg term=standout ctermfg=LightRed guifg=#e573a0 guibg=bg
highlight WildMenu term=standout ctermbg=Yellow ctermfg=Black gui=NONE guifg=#6380c5 guibg=#2f2f5f
" fold "{{{
highlight Folded term=standout ctermbg=LightGrey ctermfg=DarkBlue guifg=#afafaf guibg=#2f3f6f
highlight FoldColumn term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=#343434 guifg=#4f6dc3
" }}}
" diff "{{{
highlight DiffAdd term=bold ctermbg=DarkBlue guibg=bg guifg=#aacbde
highlight DiffChange term=bold ctermbg=DarkMagenta guifg=#998dbf guibg=bg
highlight DiffDelete term=bold ctermfg=Blue ctermbg=DarkCyan gui=bold guifg=#a62c74 guibg=bg
highlight DiffText term=reverse cterm=bold ctermbg=Red gui=bold guibg=bg guifg=#c9cbce
" }}}
highlight SignColumn term=NONE gui=NONE guibg=bg guifg=#a65774
" spell "{{{
highlight SpellBad term=NONE gui=NONE guibg=bg guifg=#795099
highlight SpellCap term=NONE gui=NONE guibg=bg guifg=#506399
highlight SpellRare term=NONE gui=NONE guibg=bg guifg=#509982
highlight SpellLocal term=NONE gui=NONE guibg=bg guifg=#998c50
" }}}
"Pmenu "{{{
"highlight pmenu guifg=#a4a9a4 guibg=#3d3f3d
highlight Pmenu gui=NONE guifg=#a0a0a0 guibg=#35353f
highlight PmenuSel gui=NONE guifg=#d2d2d2 guibg=#223f6f
highlight PmenuSbar guifg=#9c9c9c guibg=#4d2f4d
highlight PmenuThumb guifg=#3d3f3d guibg=#000000
" }}}
" tabline "{{{
highlight TabLine term=NONE gui=NONE guifg=#80a990 guibg=bg
highlight TabLineSel term=NONE gui=NONE guifg=#cfcfcf guibg=#152046
highlight TabLineFill term=NONE gui=underline guifg=#769950 guibg=bg
" }}}
" cursor "{{{
"highlight CursorLine ctermbg=magenta guibg=#545454
highlight CursorLine ctermbg=magenta guibg=#393939
highlight Cursor guibg=#00ee99
highlight CursorIM guibg=#ffb6c1
" }}}

" #- Syntax highlighting group -#"{{{1
highlight lCursor gui=NONE guifg=#575757 guibg=#7ea3a6
highlight MatchParen gui=bold guifg=#575757 guibg=#5f93cd
highlight comment term=bold gui=NONE guifg=#4b89a6 guibg=bg
highlight Constant term=underline ctermfg=Magenta gui=NONE guifg=#aaeeaa guibg=bg
"highlight Identifier gui=NONE guifg=#9cb79c guibg=bg
highlight Identifier gui=NONE guifg=#9cb79c
highlight Special term=bold ctermfg=LightRed gui=NONE guifg=#deffed guibg=bg
if &t_Co > 8
  highlight Statement term=bold cterm=bold ctermfg=Yellow guifg=bg guibg=bg
endif
"highlight Statement gui=NONE guifg=#5c71ab guibg=bg
highlight Statement gui=NONE guifg=#5c71ab guibg=NONE
highlight PreProc gui=NONE guifg=#b871b7 guibg=bg
"highlight type gui=NONE guifg=#9781ab guibg=bg
highlight type gui=NONE guifg=#81a09a
highlight underlined guibg=#37463c guifg=#66ff9c
highlight Ignore ctermfg=DarkGrey guifg=#047f75 guibg=#353535
highlight Error gui=NONE guifg=#a04f7e guibg=bg
highlight Todo gui=bold guifg=#4e5ca0 guibg=#3f303f
highlight string gui=NONE guifg=#7dac8f guibg=bg
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
" vim: filetype=vim
