" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}"
" highlighting ZenkakuSpace /　/
" Gui colorscheme file
" My standard colorscheme file

" #- reset -# "{{{1
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- Colorscheme name -# "{{{1
let g:colors_name = "Layven"

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#fdfdfd guibg=#10101f gui=NONE
                \ ctermfg=12 ctermbg=0 cterm=NONE
highlight SpecialKey guifg=#585fff guibg=bg gui=NONE
                \ ctermfg=2 ctermbg=NONE cterm=NONE
highlight NonText guifg=#6f79ff guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=NONE cterm=NONE
highlight Directory guifg=#2f5fe0 guibg=bg gui=bold
                \ ctermfg=9 ctermbg=bg cterm=underline
highlight ErrorMsg guifg=#4f1f1f guibg=#cf4f7f gui=underline
                \ ctermfg=2 ctermbg=bg cterm=NONE
" search "{{{2
highlight IncSearch guifg=#3f2f5f guibg=#af7fcf gui=bold,underline
                \ ctermfg=12 ctermbg=8 cterm=NONE
highlight Search guifg=#0f2f5f guibg=#5f7faf gui=bold,underline
                \ ctermfg=12 ctermbg=1 cterm=NONE
"}}}2
highlight MoreMsg guifg=#0f5f2f guibg=#5faf7f gui=underline
                \ ctermfg=12 ctermbg=0 cterm=NONE
highlight ModeMsg guifg=#5f5f5f guibg=#bfbfbf gui=underline
                \ ctermfg=12 ctermbg=9 cterm=NONE
highlight CursorLineNr guifg=#3f3fcf guibg=NONE gui=NONE
                \ ctermfg=11 ctermbg=NONE cterm=NONE
highlight LineNr guifg=#cfbfb0 guibg=NONE gui=NONE
                \ ctermfg=11 ctermbg=NONE cterm=NONE
highlight Question guifg=#0f2f5f guibg=#2f5f8f gui=underline
                \ ctermfg=5 ctermbg=bg cterm=NONE
" statusline "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#00051f gui=NONE
                \ ctermfg=1 ctermbg=10 cterm=NONE
highlight StatusLineNC guifg=#565234 guibg=#c0afcf gui=NONE
                \ ctermfg=10 ctermbg=1 cterm=NONE
"}}}2
highlight Title guifg=#1faf5f guibg=NONE gui=bold,underline
                \ ctermfg=2 ctermbg=NONE cterm=NONE
highlight VertSplit guifg=#aaaaaa guibg=#1f1f2f gui=bold
                \ ctermfg=15 ctermbg=bg cterm=NONE
" visual "{{{2
" highlight Visual guifg=#cfcfcf guibg=#202a4f gui=NONE
"               \ cterm=NONE ctermfg=10 ctermbg=9
highlight Visual guifg=#cfcfcf guibg=#101a3f gui=NONE
                \ ctermfg=fg ctermbg=1 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f2f4f gui=underline,bold
                \ ctermfg=10 ctermbg=9 cterm=bold
"}}}2
highlight WarningMsg guifg=#5f2f0f guibg=#ff7f6f gui=underline
                \ cterm=NONE ctermfg=2 ctermbg=bg
" highlight WildMenu guifg=#2f5f85 guibg=#cfcfcf gui=bold
"               \ ctermfg=1 ctermbg=10 cterm=NONE
highlight WildMenu guifg=#5f5f3f guibg=#cfcfdf gui=NONE
                \ ctermfg=1 ctermbg=10 cterm=NONE
" fold "{{{2
highlight Folded guifg=#aaaaaa guibg=#000015 gui=NONE
                \ cterm=NONE ctermfg=7 ctermbg=9
highlight FoldColumn guifg=#3f30cf guibg=#000010 gui=bold
                \ cterm=NONE ctermfg=7 ctermbg=1


" diff "{{{2
highlight DiffAdd guifg=fg guibg=#2f8f5f gui=NONE
                \ ctermfg=bg ctermbg=11 cterm=NONE
highlight DiffChange guifg=fg guibg=#af6f2f gui=NONE
                \ ctermfg=bg ctermbg=5 cterm=NONE
highlight DiffDelete guifg=fg guibg=#af2f4f gui=NONE
                \ ctermfg=bg ctermbg=2 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2
highlight SignColumn guifg=#ffffb0 guibg=bg gui=NONE
                \ ctermfg=1 ctermbg=10E cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#cf5faf guibg=bg gui=NONE
                \ ctermfg=1 ctermbg=10 cterm=NONE
highlight SpellCap guifg=#af5fcf guibg=bg gui=NONE
                \ ctermfg=1 ctermbg=10 cterm=NONE
highlight SpellRare guifg=#5fcfaf guibg=bg gui=NONE
                \ ctermfg=1 ctermbg=10 cterm=NONE
highlight SpellLocal guifg=#cfaf5f guibg=bg gui=NONE
                \ ctermfg=1 ctermbg=10 cterm=NONE


" pmenu "{{{2
highlight Pmenu guifg=#cfcfcf guibg=#151a1f gui=NONE
                \ ctermfg=10 ctermbg=1 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                \ ctermfg=10 ctermbg=9 cterm=NONE
highlight PmenuSbar guifg=#cccccc guibg=#1f1f2f gui=NONE
                \ ctermfg=1 ctermbg=0 cterm=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#6f2f3f gui=NONE
                \ ctermfg=1 ctermbg=3 cterm=NONE


" tabline "{{{2
highlight TabLine guifg=#afafaf guibg=#0f0f0f gui=underline
                \ ctermfg=15 ctermbg=16 cterm=NONE
highlight TabLineSel guifg=#cfcfcf guibg=#0f0f1f gui=NONE
                \ cterm=NONE ctermfg=12 ctermbg=1
highlight TabLineFill guifg=#af5faf guibg=#0f0f0f gui=NONE
                \ cterm=NONE ctermfg=1 ctermbg=0


" cursor "{{{2
highlight CursorColumn guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=1 ctermbg=10 cterm=NONE
" highlight CursorLine gui=NONE guifg=NONE guibg=#10355f
highlight CursorLine guifg=NONE guibg=#00051f gui=NONE
                \ ctermfg=NONE ctermbg=0 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
highlight Cursor guifg=#000000 guibg=#b0b0cf gui=NONE
                \ ctermfg=NONE ctermbg=0 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#2f0f0f guibg=#af2f5f gui=NONE
                \ ctermfg=NONE ctermbg=0 cterm=NONE
endif


" }}}2

" #- Syntax highlighting group -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
                \ ctermfg=10 ctermbg=0 cterm=NONE
highlight MatchParen guifg=#afafaf guibg=#10101f gui=bold,underline
                \ ctermfg=0 ctermbg=1 cterm=NONE
" highlight comment guifg=#4f79ff guibg=bg gui=NONE
highlight comment guifg=#1f5fef guibg=bg gui=NONE
                \ cterm=NONE ctermfg=9 ctermbg=bg
" highlight Constant guifg=#7dd97b guibg=bg gui=NONE
highlight Constant guifg=#2fcf7f guibg=bg gui=NONE
                \ cterm=NONE ctermfg=13 ctermbg=bg
" highlight Identifier guifg=#ccb0d7 guibg=bg gui=NONE
highlight Identifier guifg=#cf3fff guibg=bg gui=NONE
                \ cterm=NONE ctermfg=8 ctermbg=bg
highlight Special guifg=#aeffed guibg=bg gui=NONE
                \ cterm=NONE ctermfg=6 ctermbg=bg
" highlight Statement guifg=#94de92 guibg=bg gui=NONE
highlight Statement guifg=#2fcf6f guibg=bg gui=NONE
                \ cterm=NONE ctermfg=6 ctermbg=bg
" highlight PreProc guifg=#b871b7 guibg=bg gui=NONE
highlight PreProc guifg=#cf5fcf guibg=bg gui=NONE
                \ cterm=NONE ctermfg=14 ctermbg=bg
" highlight type guifg=#7fc9af guibg=bg gui=NONE
highlight type guifg=#0faf7f guibg=bg gui=NONE
                \ cterm=NONE ctermfg=9 ctermbg=bg
highlight Ignore guifg=#1f8f5f guibg=bg gui=bold
                \ cterm=NONE ctermfg=13 ctermbg=bg
highlight underlined guifg=#568cff guibg=bg gui=underline
                \ cterm=underline ctermfg=10 ctermbg=bg
highlight Error guifg=#f04f7e guibg=bg gui=NONE
                \ cterm=NONE ctermfg=14 ctermbg=bg
highlight Todo guifg=#7f7f7f guibg=#cfcfff gui=bold,underline
                \ cterm=NONE ctermfg=9 ctermbg=12
highlight string guifg=#ffc8e6 guibg=bg gui=NONE
                \ cterm=NONE ctermfg=5 ctermbg=bg

" #- hl-User -# "{{{1
highlight User1 guifg=#3f3f3f guibg=#cfcfff gui=NONE
                \ ctermfg=10 ctermbg=2 cterm=NONE
highlight User2 guifg=#5f5f5f guibg=#afafff gui=NONE
                \ ctermfg=10 ctermbg=3 cterm=NONE
highlight User3 guifg=#afafff guibg=#2f2f3f gui=NONE
                \ ctermfg=10 ctermbg=4 cterm=NONE
highlight User4 guifg=#5f2f5f guibg=#cfafff gui=NONE
                \ ctermfg=10 ctermbg=1 cterm=NONE
highlight User5 guifg=#2f5f5f guibg=#afcfff gui=NONE
                \ ctermfg=10 ctermbg=0 cterm=NONE
highlight User6 guifg=#2f2f5f guibg=#5f5faf gui=NONE
                \ ctermfg=10 ctermbg=8 cterm=NONE
highlight User7 guifg=#5f2f2f guibg=#af5f5f gui=NONE
                \ ctermfg=10 ctermbg=10 cterm=NONE
highlight User8 guifg=#2f5f2f guibg=#5faf5f gui=NONE
                \ ctermfg=10 ctermbg=11 cterm=NONE
highlight User9 guifg=#5f5f2f guibg=#afaf5f gui=NONE
                \ ctermfg=10 ctermbg=12 cterm=NONE



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


