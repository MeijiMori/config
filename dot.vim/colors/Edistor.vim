" #- vim colorscheme file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[<(*)>]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file

" #- color scheme reset -# "{{{1
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme theme name -# "{{{1
let g:colors_name = "Edistor"

" #- highligt groups for various occasions -# "{{{1
highlight Normal guifg=#000080 guibg=#fbf5fb gui=NONE
highlight SpecialKey guifg=#0f8f8f guibg=bg gui=NONE
highlight NonText guifg=#6d29ea guibg=#ffffff gui=bold
highlight Directory guifg=#1e64ae guibg=bg gui=NONE
highlight ErrorMsg guifg=#ff4faf guibg=bg gui=NONE
" search "{{{2
highlight IncSearch guifg=#000000 guibg=#bf7cad gui=bold
highlight Search guifg=#000000 guibg=#3373b5 gui=bold
" }}}2
highlight MoreMsg guifg=#192347 guibg=#e8cfe1 gui=NONE
highlight ModeMsg guifg=#000000 guibg=#ffcccc gui=NONE
highlight LineNr guifg=#9e7105 guibg=bg gui=NONE
highlight Question guifg=#27508e guibg=bg gui=NONE
" statusline "{{{2
highlight StatusLine guifg=#fdfdfd guibg=#1f293c gui=NONE
highlight StatusLineNC guifg=#ffffff guibg=#3f3d3b gui=NONE
" }}}2
highlight VertSplit guifg=#44aaff guibg=#3a3b3c gui=NONE
highlight Title guifg=#b568a9 guibg=bg gui=underline
" visual "{{{2
highlight Visual guifg=#ffffff guibg=#0f3f6f gui=NONE
highlight VisualNOS guifg=#2f2f2f guibg=#8f8fff gui=underline,bold
" }}}2
"highlight WarningMsg guifg=#db7bda guibg=#fbe0ff gui=NONE
highlight WarningMsg guifg=#ff4faf guibg=bg gui=NONE
highlight WildMenu guifg=#1f2f5f guibg=#dfdfff gui=NONE
" fold "{{{2
highlight Folded guifg=#0b1958 guibg=#b3bce1 gui=NONE
highlight FoldColumn guifg=#3150a6 guibg=#ffedfa gui=bold

" diff "{{{2
highlight DiffAdd guifg=#000000 guibg=#cfcfff gui=NONE
highlight DiffChange guifg=#000000 guibg=#ffcffa gui=NONE
highlight DiffDelete guifg=Blue guibg=#afffcf gui=NONE
highlight DiffText guifg=#000000 guibg=#ffafcf gui=NONE
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
highlight PmenuSbar guifg=#aaaaaa guibg=#5f6f8f gui=NONE
highlight PmenuThumb guifg=#3d3f3d guibg=#000000 gui=NONE

" tabline "{{{2
highlight TabLine guifg=#9d887c guibg=#3a3b3c gui=NONE
highlight TabLineSel guifg=#f0f0f0 guibg=#2f3f6f gui=NONE
highlight TabLineFill guifg=#564234 guibg=#3a3b3c gui=underline

" cursor "{{{2
highlight ColorColumn guibg=#cfcfff gui=NONE guifg=NONE
highlight CursorLine guifg=NONE guibg=#d6efff gui=NONE
highlight CursorColumn guifg=NONE guibg=bg gui=NONE
highlight Cursor guifg=#000000 guibg=#2f5f9f gui=NONE
" Cursor color for IME status "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#8f1f3f gui=NONE
endif
"}}}2

" #- Syntax highighting group -# "{{{1
highlight lCursor guifg=#000000 guibg=#fafbfb gui=NONE
highlight MatchParen guifg=#0f0f0f guibg=#cfc30d gui=bold
highlight comment guifg=#289b32 guibg=bg gui=NONE
highlight Constant guifg=#ab1e1e guibg=bg gui=NONE
highlight Special guifg=#0c7348 guibg=bg gui=NONE
highlight Identifier guifg=#144ec3 guibg=bg gui=NONE
highlight Statement guifg=#ff0080 guibg=bg gui=NONE
highlight PreProc guifg=#ff66ff guibg=bg gui=NONE
highlight type guifg=#008040 guibg=bg gui=NONE
highlight underlined guifg=#0e8655 guibg=bg gui=underline
highlight Ignore guifg=#084f88 guibg=bg gui=NONE
highlight Error guifg=#964236 guibg=#fff0fe gui=NONE
highlight Todo guifg=#009a7a guibg=#bce5f5 gui=bold
highlight string guifg=#ff00ff guibg=bg gui=NONE
highlight function guifg=#3a45b1 guibg=bg gui=NONE

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
