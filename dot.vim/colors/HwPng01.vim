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
highlight Normal gui=NONE guifg=#efefef guibg=#101025
highlight SpecialKey  gui=NONE guifg=#734cce guibg=bg
highlight NonText gui=NONE guifg=#8f5f8f guibg=bg
highlight Directory gui=NONE guifg=#3993d3 guibg=bg
highlight ErrorMsg gui=NONE guifg=#ff3f3f guibg=bg
" search "{{{
highlight IncSearch gui=bold gui=bold guifg=#cfcfcf guibg=#7f0f3f
highlight Search gui=bold guifg=#cfcfcf guibg=#0f1f5f
"}}}
highlight MoreMsg gui=NONE guifg=#af8fff guibg=bg
highlight ModeMsg gui=NONE guifg=#3f5fff guibg=bg
highlight LineNr term=underline gui=NONE guifg=#35ffaf guibg=NONE
highlight Question term=standout ctermfg=LightGreen gui=NONE guifg=#7bdccb
"statusline "{{{
highlight StatusLine ctermbg=black ctermfg=white gui=NONE guifg=#cfcfcf guibg=#000f1f
highlight StatusLineNC term=REVERSE cterm=REVERSE gui=NONE guifg=#4f4f4f guibg=#afafcf
"}}}
"highlight VertSplit term=REVERSE cterm=REVERSE gui=NONE guifg=#6666c2 guibg=bg
highlight VertSplit term=REVERSE cterm=REVERSE gui=NONE guifg=#3b54ec guibg=#0f0f0f
highlight Title term=bold ctermfg=LightMagenta gui=NONE guifg=#6666c2 guibg=bg
"visual "{{{
highlight Visual gui=NONE guifg=#cfcfcf guibg=#0f1f2f
highlight VisualNOS term=underline,bold gui=underline,bold guifg=#65c06d guibg=bg
"}}}
highlight WarningMsg gui=NONE guifg=#af2f3f guibg=bg
highlight WildMenu gui=NONE guifg=#0f2f3f guibg=#afafcf
"fold "{{{
highlight Folded term=standout gui=underline guifg=#20202f guibg=#afafcf
highlight FoldColumn term=standout ctermbg=LightGrey ctermfg=DarkBlue gui=bold guifg=#3b54ec guibg=bg
"}}}
"diff "{{{
highlight DiffAdd term=bold gui=NONE guifg=#0f0f0f guibg=#a47e7e
highlight DiffChange term=bold gui=NONE guifg=#0f0f0f guibg=#9f8fbf
highlight DiffDelete term=bold gui=bold guifg=#0f0f0f guibg=#af2f7f
highlight DiffText term=REVERSE cterm=bold ctermbg=Red gui=NONE guifg=#c9cbce guibg=bg
"}}}
highlight SignColumn term=NONE gui=NONE guifg=#a65774  guibg=bg
"spell "{{{
highlight SpellBad term=NONE gui=NONE guibg=bg guifg=#795099
highlight SpellCap term=NONE gui=NONE guibg=bg guifg=#506399
highlight SpellRare term=NONE gui=NONE guibg=bg guifg=#509982
highlight SpellLocal term=NONE gui=NONE guibg=bg guifg=#998c50
"}}}
" pmenu "{{{
highlight Pmenu gui=NONE guifg=#a4a9a4 guibg=#0f0a1f
" highlight PmenuSel gui=NONE guifg=#d2d2d2 guibg=#00101f
highlight PmenuSel gui=NONE guifg=#d2d2d2 guibg=#0f101f
highlight PmenuSbar gui=NONE guifg=fg guibg=#00001f
highlight PmenuThumb gui=NONE guifg=fg guibg=#1f1f4f
"}}}
"tabline "{{{
highlight TabLine term=NONE gui=NONE guifg=#868686 guibg=bg
highlight TabLineSel term=NONE gui=NONE guifg=#65c06d guibg=bg
highlight TabLineFill term=NONE gui=NONE guifg=#769950 guibg=bg
"}}}
"cursor "{{{
highlight CursorColumn ctermbg=magenta gui=NONE guifg=NONE guibg=#30303f
highlight ColorColumn ctermbg=magenta gui=NONE guifg=NONE guibg=#30303f
highlight CursorLine ctermbg=magenta gui=NONE guifg=NONE guibg=#0f0f2f
highlight Cursor gui=NONE guifg=#000000 guibg=#8f8faf
if has('multi_byte_ime') || has('xim')
  highlight CursorIM gui=NONE guifg=#000000 guibg=#5f002f
endif
"}}}

" #- syntax highighting group "{{{1
highlight lCursor gui=NONE guifg=#000000 guibg=#6c83a6
highlight MatchParen gui=bold guifg=#000000 guibg=#3f5f5f
highlight Comment term=bold gui=NONE guifg=#3f3fcf guibg=bg
highlight Constant term=underline gui=NONE guifg=#3faf8f guibg=bg
highlight Special term=bold gui=NONE guifg=#cfcfff guibg=bg
highlight Identifier gui=NONE guifg=#5f3fff guibg=bg
highlight Statement gui=NONE guifg=#bf5faf guibg=bg
highlight PreProc gui=NONE guifg=#3f5faf guibg=bg
highlight type gui=NONE guifg=#2fcfaf guibg=bg
highlight underlined gui=underline guifg=#5fcfaf guibg=#101f3f
highlight Ignore gui=NONE guifg=#0f5f2f guibg=bg
highlight Error gui=NONE guifg=#f34d70 guibg=bg
highlight Todo gui=bold guifg=#2f2f5f guibg=#8f8f8f
highlight string gui=NONE guifg=#ed4949 guibg=bg

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
