" #- vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file

" #- Vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

" #- colorscheme name -#"{{{1
let g:colors_name = "AiPxGm"

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#aaaaaa guibg=#1f1f1f gui=NONE
highlight SpecialKey guifg=#4f3fff guibg=NONE gui=NONE
highlight NonText guifg=#4effaf guibg=#202020 gui=bold
highlight Directory guifg=#5fbfff guibg=NONE gui=NONE
highlight ErrorMsg guifg=#4878f5 guibg=NONE gui=NONE
" search "{{{2
highlight IncSearch guifg=#000000 guibg=#cc88e1 gui=bold
highlight Search guifg=#000000 guibg=#4f88f1 gui=bold
"}}}2
highlight MoreMsg guifg=#ffffff guibg=#2f2f2f gui=NONE
highlight ModeMsg guifg=#affff9 guibg=NONE gui=NONE
highlight LineNr guifg=#cfccb4 guibg=NONE gui=NONE
highlight Question guifg=#6ab3b5 guibg=NONE gui=NONE
" statusline "{{{2
highlight StatusLine guifg=#202020 guibg=#bfbfbf gui=NONE
highlight StatusLineNC guifg=#565234 guibg=#b2a089 gui=NONE
"}}}2
highlight Title guifg=#72acf5 guibg=NONE gui=NONE
highlight VertSplit guifg=#3059ff guibg=#0f0f0f gui=bold
" visual "{{{2
highlight Visual guifg=#ffeedd guibg=#2f3f5f gui=NONE
highlight VisualNOS guibg=#aaeeee guifg=#3d3d3d gui=underline
"}}}2
highlight WarningMsg guifg=#ff3845 guibg=NONE gui=NONE
highlight WildMenu guifg=#dfdfdf guibg=#2f3f5f gui=NONE
" fold "{{{2
highlight Folded guifg=#3f7fff guibg=#1f1f3f gui=NONE
highlight FoldColumn guifg=#aaaaaa guibg=#0f2f4f gui=bold

" diff "{{{2
highlight DiffAdd guifg=#2f7fff guibg=NONE gui=NONE
highlight DiffChange guifg=#ffff9f guibg=NONE gui=NONE
highlight DiffDelete guifg=#f62c74 guibg=NONE gui=NONE
highlight DiffText guifg=#c9cbce guibg=NONE gui=NONE
"}}}2
highlight SignColumn guifg=#afdfff guibg=NONE gui=NONE
" spell "{{{2
highlight SpellBad guifg=#c950ff guibg=NONE gui=NONE
highlight SpellCap guifg=#4f8fff guibg=NONE gui=NONE
highlight SpellRare guifg=#50ff82 guibg=NONE gui=NONE
highlight SpellLocal guifg=#bbcf6f guibg=NONE gui=NONE

" pmenu "{{{2
highlight Pmenu guifg=#aaaaaa guibg=#202020 gui=NONE
highlight PmenuSel guifg=#cccccc guibg=#415676 gui=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=NONE gui=bold
highlight PmenuThumb guifg=#415676 guibg=NONE gui=reverse

" tabline "{{{2
" highlight TabLine term=NONE gui=underline guifg=#000000 guibg=#afafaf
" highlight TabLineSel term=NONE gui=bold guifg=#ffffff guibg=#21569f
" highlight TabLineFill term=NONE gui=underline guifg=#415676 guibg=NONE
highlight TabLine guifg=#5f5f5f guibg=#bfbfbf gui=underline
highlight TabLineSel guifg=#ffffff guibg=#1f3f6f gui=NONE
highlight TabLineFill guifg=#000000 guibg=#aaaaaa gui=underline

" cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
highlight CursorLine guifg=NONE guibg=#2f3f5f gui=NONE
highlight ColorColumn guifg=NONE guibg=#892f30 gui=NONE
highlight Cursor guifg=#000000 guibg=#7fffa9 gui=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#ff425f gui=NONE
endif
"}}}2

" #- syntax highlighting group -#"{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
highlight MatchParen guifg=#575757 guibg=#5f93cd gui=bold
highlight comment guifg=#5088e1 guibg=NONE gui=NONE
highlight Constant guifg=#aa7777 guibg=NONE gui=NONE
highlight Identifier guifg=#879fff guibg=NONE gui=NONE
highlight Special guifg=#cfffff guibg=NONE gui=NONE
highlight Statement guifg=#85baff guibg=NONE gui=NONE
highlight PreProc guifg=#aaffff guibg=NONE gui=NONE
highlight type guifg=#61cf8f guibg=NONE gui=NONE
highlight underlined guifg=#6699cc guibg=NONE gui=NONE
highlight Ignore guifg=#a3ffa2 guibg=NONE gui=bold
highlight Error guifg=#ff3845 guibg=NONE gui=NONE
highlight Todo guifg=#50a0ff guibg=NONE gui=bold,underline
highlight string guifg=#f0d8e6 guibg=NONE gui=NONE


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
