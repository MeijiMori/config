" #- Vim colorscheme file -# "{{{1
" NONE: "{{{2
" hilight /　/
" MatchParen "{([*])}

" #- reset -#{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -#{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cccccc guibg=#202020 gui=NONE
              \ ctermfg=7 ctermbg=0 cterm=NONE
highlight SpecialKey guifg=#4f53ff guibg=bg gui=NONE
              \ ctermfg=25 ctermbg=NONE cterm=NONE
highlight NonText guifg=#4ef9c8 guibg=#2f2f2f gui=NONE
              \ ctermfg=48 ctermbg=234 cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
              \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#5f7fff guibg=bg gui=NONE
              \ ctermfg=33 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#ff3f5f guibg=bg gui=NONE
              \ ctermfg=9 ctermbg=bg cterm=NONE
" search "{{{2
highlight IncSearch guifg=bg guibg=#bf9fef gui=bold
              \ ctermfg=53 ctermbg=140 cterm=bold,underline
highlight Search guifg=#000000 guibg=#4f88f1 gui=bold
              \ ctermfg=17 ctermbg=27 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#95d5d9 guibg=#303030 gui=NONE
              \ ctermfg=84 ctermbg=234 cterm=underline
highlight ModeMsg guifg=#bfd9ff guibg=#303030 gui=NONE
              \ ctermfg=81 ctermbg=234 cterm=underline
highlight LineNr guifg=#c3bcb4 guibg=#252525 gui=NONE
              \ ctermfg=248 ctermbg=bg cterm=NONE
highlight CursorLineNr guifg=#c3bcb4 guibg=#252525 gui=NONE
              \ ctermfg=bg ctermbg=fg cterm=bold
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#6ab3b5 guibg=bg gui=NONE
              \ ctermfg=85 ctermbg=bg cterm=underline
" statusline "{{{2
highlight StatusLine guifg=#10103f guibg=#dfdfdf gui=NONE
              \ ctermfg=235 ctermbg=252 cterm=NONE
highlight StatusLineNC guifg=#565234 guibg=#c4b2ab gui=NONE
              \ ctermfg=235 ctermbg=181 cterm=NONE
" #- Terminal -# "{{{3
highlight StatusLineTerm guifg=#000f2f guibg=#cfccff gui=NONE
                \ ctermfg=11 ctermbg=bg cterm=NONE
highlight StatusLineTermNc guifg=#002f2f guibg=#8fafcf gui=NONE
                \ ctermfg=11 ctermbg=bg cterm=NONE
"}}}2
highlight VertSplit guifg=#3f7fff guibg=#2f2f2f gui=NONE
              \ ctermfg=26 ctermbg=235 cterm=NONE
highlight Title guifg=#72dc95 guibg=bg gui=NONE
              \ ctermfg=48 ctermbg=bg cterm=NONE
" visual "{{{2
highlight Visual guifg=#ffeedd guibg=#1f2f5f gui=NONE
              \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#1f1f2f guibg=#5f8fcf gui=bold,underline
              \ ctermfg=17 ctermbg=24 cterm=bold,underline
"}}}2
highlight WarningMsg guifg=#ff3f5f guibg=bg gui=NONE
              \ ctermfg=9 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#dfdfdf guibg=#2f3f5f gui=NONE
              \ ctermfg=15 ctermbg=17 cterm=NONE
" fold "{{{2
highlight Folded guifg=#4f53ff guibg=#1f1f1f gui=NONE
              \ ctermfg=33 ctermbg=233 cterm=NONE
highlight FoldColumn guifg=#4bcf7f guibg=#1f1f1f gui=bold
              \ ctermfg=35 ctermbg=232 cterm=bold

" diff "{{{2
highlight DiffAdd guifg=#2f7fff guibg=bg gui=NONE
              \ ctermfg=NONE ctermbg=25 cterm=NONE
highlight DiffChange guifg=#ffff9f guibg=bg gui=NONE
              \ ctermfg=NONE ctermbg=208 cterm=NONE
"highlight DiffDelete guifg=#f62c74 guibg=bg gui=bold
highlight DiffDelete guifg=#f62c74 guibg=bg gui=NONE
              \ ctermfg=NONE ctermbg=88 cterm=NONE
highlight DiffText guifg=#c9cbce guibg=bg gui=NONE
              \ ctermfg=NONE ctermbg=bg cterm=NONE
"}}}2
highlight SignColumn gui=NONE guifg=#56a7f4 guibg=bg
              \ ctermfg=NONE ctermbg=bg cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#f95099 guibg=bg gui=NONE
              \ ctermfg=125 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#50a3f9 guibg=bg gui=NONE
              \ ctermfg=27 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#50c982 guibg=bg gui=NONE
              \ ctermfg=35 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#a9cc50 guibg=bg gui=NONE
              \ ctermfg=220 ctermbg=bg cterm=NONE

" pmenu "{{{2
highlight Pmenu guifg=#aaaaaa guibg=#25202f gui=NONE
              \ ctermfg=247 ctermbg=232 cterm=NONE
highlight PmenuSel guifg=#afafaf guibg=#1f2f5f gui=NONE
              \ ctermfg=249 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=#000000 gui=bold
              \ ctermfg=fg ctermbg=0 cterm=bold
highlight PmenuThumb guifg=#415676 guibg=#0f0f0f gui=bold
              \ ctermfg=fg ctermbg=25 cterm=bold

" tabline "{{{2
highlight TabLine guifg=#3f3f3f guibg=#cccccc gui=underline
              \ ctermfg=235 ctermbg=253 cterm=underline
highlight TabLineSel guifg=#cfcfcf guibg=#1f2f4f gui=NONE
              \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#000000 guibg=#999999 gui=underline
              \ ctermfg=234 ctermbg=240 cterm=underline
" tabpanel "{{{2
highlight TabPanel guifg=#3f3f3f guibg=#cccccc gui=NONE
              \ ctermfg=235 ctermbg=253 cterm=NONE
highlight TabPanelSel guifg=#cfcfcf guibg=#1f2f4f gui=NONE
              \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#000000 guibg=#999999 gui=NONE
              \ ctermfg=234 ctermbg=240 cterm=NONE

" cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
              \ ctermfg=fg ctermbg=bg cterm=underline
highlight CursorLine guifg=NONE guibg=#2f3f5f gui=NONE
              \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#892f30 gui=NONE
              \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight Cursor guifg=#000000 guibg=#2f807f gui=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#bd2745 gui=NONE
              \ ctermfg=NONE ctermbg=196 cterm=NONE
endif

" }}}2

" #- syntax highlighting group -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
              \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight MatchParen guifg=#00000f guibg=#2f3fcd gui=bold
              \ ctermfg=16 ctermbg=27 cterm=bold,underline
"highlight comment guifg=#2d79c6 guibg=#3f3f3f gui=NONE
highlight comment guifg=#5088e1 guibg=bg gui=NONE
              \ ctermfg=26 ctermbg=bg cterm=NONE
highlight Constant guifg=#aa7777 guibg=bg gui=NONE
              \ ctermfg=131 ctermbg=bg cterm=NONE
highlight Special guifg=#cfffff guibg=bg gui=NONE
              \ ctermfg=145 ctermbg=bg cterm=NONE
highlight Identifier guifg=#879fff guibg=bg gui=NONE
              \ ctermfg=75 ctermbg=bg cterm=NONE
"highlight Statement guifg=#9be188 guibg=bg gui=NONE
highlight Statement guifg=#85baff guibg=bg gui=NONE
              \ ctermfg=33 ctermbg=bg cterm=NONE
"highlight guifg=#b871b7 guibg=bg PreProc
highlight PreProc guifg=#aaffff guibg=bg gui=NONE
              \ ctermfg=86 ctermbg=bg cterm=NONE
"highlight type guifg=#71ffaf guibg=bg gui=NONE
highlight type guifg=#61cf8f guibg=bg gui=NONE
              \ ctermfg=36 ctermbg=bg cterm=NONE
highlight underlined guifg=#6699cc guibg=bg gui=underline
              \ ctermfg=33 ctermbg=bg cterm=underline
highlight Ignore guifg=#a3ffa2 guibg=bg gui=NONE
              \ ctermfg=118 ctermbg=bg cterm=NONE
highlight Error guifg=#ff3f5f guibg=bg gui=NONE
              \ ctermfg=124 ctermbg=bg cterm=NONE
"highlight Todo guifg=#a0a0ff guibg=bg gui=bold
highlight Todo guifg=#50a0ff guibg=bg gui=NONE
              \ ctermfg=124 ctermbg=238 cterm=bold,underline
highlight string guifg=#f0d8e6 guibg=bg gui=NONE
              \ ctermfg=224 ctermbg=bg cterm=NONE

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
" vim: filetype=vim
" vim: fen:fdm=marker
