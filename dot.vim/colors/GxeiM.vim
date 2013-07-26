" #- vim colorscheme file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file
" This colorscheme is improved default colorscheme and default sakura editor color

" #- vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif


" #- color scheme name -# "{{{1
let g:colors_name = "GxeiM"


" #- highlighting groups for various occasions "{{{1
highlight Normal guifg=#0f0f0f guibg=#ffffef gui=NONE
highlight SpecialKey guifg=#1f915f guibg=bg gui=NONE
highlight NonText guifg=#2b3b76 guibg=#ffffff gui=NONE
highlight Directory guifg=#2b609b guibg=bg gui=bold
highlight ErrorMsg guifg=#af1f5f guibg=#e8dfcb gui=underline
" search "{{{2
highlight IncSearch guifg=#3f2f4f guibg=#af8fff gui=bold,underline
highlight Search guifg=#2f2f5f guibg=#8fafff gui=bold,underline
"}}}2
highlight MoreMsg guifg=#66765a guibg=#e8dfcb gui=underline
highlight ModeMsg guifg=#4a4741 guibg=#e8dfcb gui=underline
highlight LineNr ctermfg=white guifg=#b57720 gui=NONE
highlight Question guifg=#345749 guibg=bg gui=underline
" statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#10202f gui=NONE
highlight StatusLineNC guifg=#7b8b85 guibg=#0f1f2f gui=NONE
"}}}2
highlight Title guifg=#177479 guibg=#cfffff gui=bold
highlight VertSplit guifg=fg guibg=#0f1f2f gui=NONE
" visual "{{{2
highlight Visual guifg=#cfcfcf guibg=#2c325f gui=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#2f3f5f gui=underline,bold
"}}}2
highlight WarningMsg guifg=#af2f5f guibg=#e8dfcb gui=underline
highlight WildMenu guifg=#001f5f guibg=#efefff gui=underline
" fold "{{{2
highlight Folded guifg=#001f5f guibg=#bfcfdf gui=NONE
highlight FoldColumn guifg=#1c417c guibg=bg gui=bold

" diff "{{{2
highlight DiffAdd guifg=fg guibg=#afffcf gui=NONE
highlight DiffChange guifg=fg guibg=#ffaf5f gui=NONE
highlight DiffDelete guifg=fg guibg=#cf4f9f gui=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
"}}}2
highlight SignColumn guifg=#a65774 guibg=bg gui=NONE
" spell "{{{2
highlight SpellBad guifg=#795099 guibg=bg gui=NONE
highlight SpellCap guifg=#506399 guibg=bg gui=NONE
highlight SpellRare guifg=#509982 guibg=bg gui=NONE
highlight SpellLocal guifg=#998c50 guibg=bg gui=NONE

" pmenu "{{{2
highlight Pmenu guifg=#10102f guibg=#dbdbf3 gui=NONE
highlight PmenuSel guifg=#bfbfbf guibg=#0f2f5f gui=NONE
highlight PmenuSbar guifg=#cccccc guibg=#3a3b3c gui=NONE
highlight PmenuThumb guifg=#0f0f0f guibg=#21365f gui=NONE

" tabline "{{{2
highlight TabLine guifg=#5f5f5f guibg=#cfcfdf gui=underline
highlight TabLineSel guifg=#00001f guibg=#efefff gui=underline
highlight TabLineFill guifg=#5f2f3f guibg=#cfcfcf gui=underline

" cursor "{{{2
highlight ColorColumn guibg=#cfcfff gui=NONE guifg=NONE
highlight CursorLine guifg=NONE guibg=#f9daf6 gui=NONE
highlight CursorColumn guifg=NONE guibg=bg gui=NONE
highlight Cursor guifg=#000000 guibg=#2f8f8f gui=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#7f0f2f gui=NONE
endif

"}}}2


" #- syntax highlighting groups -# "{{{1
highlight lCursor guifg=#575757 guibg=#000000 gui=NONE
highlight MatchParen guifg=#4f2f5f guibg=#e2bffc gui=bold,underline
highlight comment guifg=#1f3f8f guibg=NONE gui=NONE
highlight Constant guifg=#0f2f7f guibg=bg gui=NONE
highlight Special guifg=#003857 guibg=bg gui=NONE
highlight Identifier guifg=#1f5f0f guibg=bg gui=NONE
highlight Statement guifg=#0f2f7f guibg=bg gui=NONE
highlight PreProc guifg=#7c207b guibg=bg gui=NONE
highlight type guifg=#0f3f1f guibg=bg gui=NONE
highlight underlined guifg=#399620 guibg=#f4f8c9 gui=underline
highlight Ignore guifg=#105f20 guibg=bg gui=bold
highlight Error guifg=#af2f5f guibg=bg gui=NONE
highlight Todo guifg=#4e5ca0 guibg=#cfcfdf gui=bold,underline
highlight string guifg=#7f1f2f guibg=bg gui=NONE


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


