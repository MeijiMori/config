" #- vim colorscheme file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[<(*)>]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file
" Refer to my xyzzy theme


" #- color scheme reset -# "{{{1
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif


" #- This colorscheme theme name -# "{{{1
let g:colors_name = "yzzyr"


" #- highligt groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#0a0f10 gui=NONE
highlight SpecialKey guifg=#8f5fff guibg=bg gui=NONE
highlight NonText guifg=#3f3fff guibg=bg gui=bold
highlight Directory guifg=#3f2fcf guibg=bg gui=bold
highlight ErrorMsg guifg=#5f2f0f guibg=#ffaf8f gui=underline
" search "{{{2
highlight IncSearch guifg=#2f1f4f guibg=#6f5faf gui=bold,underline
highlight Search guifg=#4f1f2f guibg=#af5f6f gui=bold,underline
" }}}2
highlight MoreMsg guifg=#000f2f guibg=#3f3fcf gui=underline
highlight ModeMsg guifg=#2f000f guibg=#cf3f3f gui=underline
highlight LineNr guifg=#3f8f6f guibg=NONE gui=NONE
highlight Question guifg=#0f3f0f guibg=#3faf3f gui=underline
" statusline "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#0f1a1f gui=NONE
highlight StatusLineNC guifg=#606080 guibg=#c8c8d8 gui=underline
" }}}2
highlight VertSplit guifg=#4f2f5f guibg=#1f1f1f gui=bold
highlight Title guifg=#b568a9 guibg=#0f0f2f gui=underline
" visual "{{{2
highlight Visual guifg=#dfdfdf guibg=#1f2f4f gui=NONE
highlight VisualNOS guifg=#2f2f2f guibg=#8f8fff gui=underline,bold
" }}}2
highlight WarningMsg guifg=#bf5fbf guibg=#efcfcf gui=underline
highlight WildMenu guifg=#cfcfcf guibg=#1f2f5f gui=underline
" fold "{{{2
highlight Folded guifg=#cfcfff guibg=#000f0f gui=NONE
highlight FoldColumn guifg=#3f3f5f guibg=#000f0f gui=bold


" diff "{{{2
highlight DiffAdd guifg=#1f3f1f guibg=#4f9f4f gui=NONE
highlight DiffChange guifg=#3f3f1f guibg=#9f9f4f gui=NONE
highlight DiffDelete guifg=#3f1f1f guibg=#9f4f4f gui=bold
highlight DiffText guifg=fg guibg=bg gui=NONE
" }}}2
highlight SignColumn gui=NONE guifg=#a65774  guibg=bg
" spell "{{{2
highlight SpellBad guifg=#795099 guibg=bg gui=NONE
highlight SpellCap guifg=#506399 guibg=bg gui=NONE
highlight SpellRare guifg=#509982 guibg=bg gui=NONE
highlight SpellLocal guifg=#998c50 guibg=bg gui=NONE


" pmenu "{{{2
highlight Pmenu guifg=#dedede guibg=#0f1f30 gui=NONE
highlight PmenuSel guifg=#eeeeee guibg=#2f3f7f gui=NONE
highlight PmenuSbar guifg=#afafff guibg=#afafaf gui=NONE
highlight PmenuThumb guifg=#3d3f3d guibg=#2f8f5f gui=NONE


" tabline "{{{2
highlight TabLine guifg=#3f3f8f guibg=#0a000f gui=NONE
highlight TabLineSel guifg=#cfcfcf guibg=#3f3f5f gui=NONE
highlight TabLineFill guifg=#3f5f6f guibg=#0a000f gui=underline,bold


" cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
highlight CursorLine guifg=NONE guibg=#1f0f1f gui=NONE
highlight CursorColumn guifg=NONE guibg=bg gui=NONE
highlight Cursor guifg=#cfcfcf guibg=#2f2f3f gui=NONE
" Cursor color for IME status "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#8f1f3f gui=NONE
endif
"}}}2


" #- Syntax highighting group -# "{{{1
highlight lCursor guifg=#000000 guibg=#fafbfb gui=NONE
highlight MatchParen guifg=#2f0f5f guibg=#8f63ad gui=bold,underline
highlight comment guifg=#2f5faf guibg=bg gui=NONE
highlight Constant guifg=#af2f5f guibg=bg gui=NONE
highlight Special guifg=#afafff guibg=bg gui=NONE
highlight Identifier guifg=#cf4f9f guibg=bg gui=NONE
highlight Statement guifg=#ff7f6f guibg=bg gui=NONE
highlight PreProc guifg=#5f5fff guibg=bg gui=NONE
highlight type guifg=#3fcf8f guibg=bg gui=NONE
highlight underlined guifg=#0f3f0f guibg=#2f7f4f gui=underline
highlight Ignore guifg=#2f2f2f guibg=bg gui=bold
highlight Error guifg=#ff0f3f guibg=bg gui=NONE
highlight Todo guifg=#5f6f8f guibg=#cfcfff gui=bold,underline
highlight string guifg=#cf3f3f guibg=bg gui=NONE


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


