" #- Vim color file -# "{{{1
" Note: "{{{2
" hilight ZenkakuSpace /　/
" matchparen ({[*]})

" #- reset -# "{{{1
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -#"{{{1
let g:colors_name = "HwPng01"

" #- highiliting group for various occasions "{{{1
" highlight Normal ctermbg=black ctermfg=white guifg=#efefef guibg=#20202f
highlight Normal guifg=#efefef guibg=#101025 gui=NONE
highlight SpecialKey guifg=#734cce guibg=bg gui=NONE
highlight NonText guifg=#8f5f8f guibg=bg gui=NONE
highlight Directory guifg=#3993d3 guibg=bg gui=NONE
highlight ErrorMsg guifg=#ff3f3f guibg=bg gui=NONE
" search "{{{2
highlight IncSearch guifg=#cfcfcf guibg=#7f0f3f gui=bold
highlight Search guifg=#cfcfcf guibg=#0f1f5f gui=bold
"}}}2
highlight MoreMsg guifg=#af8fff guibg=bg gui=NONE
highlight ModeMsg guifg=#3f5fff guibg=bg gui=NONE
highlight LineNr guifg=#35ffaf guibg=NONE gui=NONE
highlight Question guifg=#7bdccb gui=NONE gui=NONE
" statusline "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#000f1f gui=NONE
highlight StatusLineNC guifg=#4f4f4f guibg=#afafcf gui=NONE
"}}}2
highlight VertSplit guifg=#3b54ec guibg=#0f0f0f gui=NONE
highlight Title guifg=#6666c2 guibg=bg gui=NONE
" visual "{{{2
highlight Visual gui=NONE guifg=#cfcfcf guibg=#0f1f2f
highlight VisualNOS term=underline,bold gui=underline,bold guifg=#65c06d guibg=bg
"}}}2
highlight WarningMsg guifg=#af2f3f guibg=bg gui=NONE
highlight WildMenu guifg=#0f2f3f guibg=#afafcf gui=NONE
" fold "{{{2
highlight Folded guifg=#20202f guibg=#afafcf gui=underline
highlight FoldColumn guifg=#3b54ec guibg=bg gui=bold

" diff "{{{2
highlight DiffAdd guifg=#0f0f0f guibg=#a47e7e gui=NONE
highlight DiffChange guifg=#0f0f0f guibg=#9f8fbf gui=NONE
highlight DiffDelete guifg=#0f0f0f guibg=#af2f7f gui=bold
highlight DiffText guifg=#c9cbce guibg=bg gui=NONE
"}}}2
highlight SignColumn term=NONE gui=NONE guifg=#a65774  guibg=bg
" spell "{{{2
highlight SpellBad guifg=#795099 guibg=bg gui=NONE
highlight SpellCap guifg=#506399 guibg=bg gui=NONE
highlight SpellRare guifg=#509982 guibg=bg gui=NONE
highlight SpellLocal guifg=#998c50 guibg=bg gui=NONE

" pmenu "{{{2
highlight Pmenu guifg=#a4a9a4 guibg=#0f0a1f gui=NONE
highlight PmenuSel guifg=#d2d2d2 guibg=#00101f gui=NONE
highlight PmenuSbar guifg=fg guibg=#00001f gui=NONE
highlight PmenuThumb guifg=fg guibg=#1f1f4f gui=NONE

"tabline "{{{2
highlight TabLine guifg=#868686 guibg=bg gui=NONE
highlight TabLineSel guifg=#65c06d guibg=bg gui=NONE
highlight TabLineFill guifg=#769950 guibg=bg gui=NONE

"cursor "{{{2
highlight CursorColumn guifg=NONE guibg=#30303f gui=NONE
highlight ColorColumn guifg=NONE guibg=#30303f gui=NONE
highlight CursorLine guifg=NONE guibg=#0f0f2f gui=NONE
highlight Cursor guifg=#000000 guibg=#8f8faf gui=NONE
" Cursor color for IME status "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#5f002f gui=NONE
endif

"}}}2

" #- syntax highighting group "{{{1
highlight lCursor guifg=#000000 guibg=#6c83a6 gui=NONE
highlight MatchParen guifg=#000000 guibg=#3f5f5f gui=bold
highlight Comment guifg=#3f3fcf guibg=bg gui=NONE
highlight Constant guifg=#3faf8f guibg=bg gui=NONE
highlight Special guifg=#cfcfff guibg=bg gui=NONE
highlight Identifier guifg=#5f3fff guibg=bg gui=NONE
highlight Statement guifg=#bf5faf guibg=bg gui=NONE
highlight PreProc guifg=#3f5faf guibg=bg gui=NONE
highlight type guifg=#2fcfaf guibg=bg gui=NONE
highlight underlined guifg=#5fcfaf guibg=#101f3f gui=underline
highlight Ignore guifg=#0f5f2f guibg=bg gui=NONE
highlight Error guifg=#f34d70 guibg=bg gui=NONE
highlight Todo guifg=#2f2f5f guibg=#8f8f8f gui=bold
highlight string guifg=#ed4949 guibg=bg gui=NONE

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

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
