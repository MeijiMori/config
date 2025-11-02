" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file

" #- reset -# "{{{1
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -# "{{{1
" name: XmPrI
let g:colors_name = expand('<sfile>:t:r')


" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#fdfdfd guibg=#2f1f2f gui=NONE
          \ ctermfg=255 ctermbg=53 cterm=NONE
highlight NonText guifg=#aaffaa guibg=NONE gui=NONE
          \ ctermfg=47 ctermbg=bg cterm=NONE
highlight EndOfBuffers guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#5f6fff guibg=NONE gui=bold
          \ ctermfg=27 ctermbg=bg cterm=bold



" Search: "{{{2
highlight IncSearch guifg=#000000 guibg=#6fafff gui=NONE
          \ ctermfg=17 ctermbg=33 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
          \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#111111 guibg=#6f9fff gui=NONE
          \ ctermfg=17 ctermbg=87 cterm=bold,underline


" Message: {{{2
highlight MoreMsg guifg=#3f7fff guibg=NONE gui=NONE
          \ ctermfg=17 ctermbg=bg cterm=underline
highlight ModeMsg guifg=#3f6fff guibg=NONE gui=NONE
          \ ctermfg=12 ctermbg=bg cterm=underline
highlight MsgArea guifg=fg guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#ffafcf guibg=NONE gui=NONE
          \ ctermfg=13 ctermbg=bg cterm=underline
highlight WarningMsg guifg=#ff73bf guibg=NONE gui=NONE
          \ ctermfg=52 ctermbg=bg cterm=NONE
highlight Question guifg=#cccccc guibg=bg gui=NONE
          \ ctermfg=123 ctermbg=bg cterm=underline
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#aaaaaa guibg=#1f2f5f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=underline,bold


" LineNr: "{{{2
highlight LineNr guifg=#bfbfaf guibg=NONE gui=NONE
          \ ctermfg=147 ctermbg=bg cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#cccccc guibg=#1f001f gui=NONE
          \ ctermfg=15 ctermbg=234 cterm=NONE
highlight StatusLineNC guifg=#4f3f3f guibg=#b2a089 gui=NONE
          \ ctermfg=95 ctermbg=180 cterm=NONE
highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
          \ ctermfg=0 ctermbg=10 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
          \ ctermfg=96 ctermbg=183 cterm=NONE
" }}}2
highlight VertSplit guifg=#ef5f8f guibg=#1f0f1f gui=NONE
          \ ctermfg=9 ctermbg=233 cterm=bold
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
          \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
          \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#2fd4c6 guibg=bg gui=NONE
          \ ctermfg=47 ctermbg=bg cterm=bold,underline


" Visual: "{{{2
highlight Visual guifg=#cdd0d3 guibg=#17334f gui=NONE
          \ ctermfg=7 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#3d3d3d guibg=#aaeeee gui=underline,bold
          \ ctermfg=253 ctermbg=27 cterm=underline,bold


" Fold: "{{{2
highlight Folded guifg=#efefef guibg=#3f1f4f gui=NONE
          \ ctermfg=255 ctermbg=16 cterm=NONE
highlight FoldColumn guifg=#ffffff guibg=#2f1f2f gui=bold
          \ ctermfg=250 ctermbg=bg cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=#aacbde guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=35 cterm=NONE
highlight DiffChange guifg=#998dbf guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=208 cterm=NONE
highlight DiffDelete guifg=#a62c74 guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=52 cterm=NONE
highlight DiffText guifg=#c9cbce guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2


highlight SignColumn guifg=fg guibg=#af3f5f gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
          \ ctermfg=fg ctermbg=0 cterm=NONE
highlight SpecialKey guifg=#554ffe guibg=NONE gui=NONE
          \ ctermfg=25 ctermbg=bg cterm=NONE



" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=fg ctermbg=bg cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#cfafff gui=bold
      \ ctermfg=fg ctermbg=bg cterm=NONE


" Toolbar: "{{{2
highlight ToolbarButton guifg=#5f5f8f guibg=#cfefff gui=bold
                \ ctermfg=180 ctermbg=bg cterm=NONE
highlight ToolbarLine guifg=fg guibg=#efcfff gui=NONE
                \ ctermfg=180 ctermbg=bg cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#af5fbf guibg=NONE gui=undercurl
          \ ctermfg=52 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#7f8fbf guibg=NONE gui=undercurl
          \ ctermfg=33 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#7fe9af guibg=NONE gui=undercurl
          \ ctermfg=29 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#bfaf7f guibg=NONE gui=undercurl
          \ ctermfg=172 ctermbg=bg cterm=undercurl


" Pmenu: "{{{2
highlight pmenu guifg=#2f2f2f guibg=#afafaf gui=NONE
          \ ctermfg=234 ctermbg=251 cterm=NONE
highlight PmenuSel guifg=#d2d2d2 guibg=#4f2f4f gui=NONE
          \ ctermfg=fg ctermbg=17 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
          \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
          \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfefff gui=NONE
          \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
          \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
          \ ctermfg=fg ctermbg=16 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
          \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuSbar guifg=#ffffff guibg=#4d2f4d gui=NONE
          \ ctermfg=fg ctermbg=235 cterm=NONE
highlight PmenuThumb guifg=#111111 guibg=#999999 gui=NONE
          \ ctermfg=fg ctermbg=232 cterm=NONE


" Tabline: "{{{2
highlight TabLine guifg=#000000 guibg=#cccccc gui=NONE
          \ ctermfg=241 ctermbg=250 cterm=NONE
highlight TabLineSel guifg=#cccccc guibg=#1a3b6f gui=NONE
          \ ctermfg=fg ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#aaaaaa guibg=#dddddd gui=NONE
          \ ctermfg=245 ctermbg=253  cterm=NONE

" Tabpanel: "{{{2
highlight TabPanel guifg=#000000 guibg=#cccccc gui=NONE
          \ ctermfg=241 ctermbg=250 cterm=NONE
highlight TabPanelSel guifg=#cccccc guibg=#1a3b6f gui=NONE
          \ ctermfg=fg ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#aaaaaa guibg=#dddddd gui=NONE
          \ ctermfg=245 ctermbg=253  cterm=NONE
highlight TabPanelTitle guifg=#000000 guibg=#efefff gui=NONE
          \ ctermfg=232 ctermbg=244 cterm=NONE


" Cursor: "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
          \ ctermfg=248 ctermbg=153 cterm=NONE
highlight CursorColumn guifg=NONE guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight lCursor guifg=#000000 guibg=#7ea3a6 gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Cursor guifg=#000000 guibg=#1f8f9f gui=NONE
          \ ctermfg=NONE ctermbg=29 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
          \ ctermfg=NONE ctermbg=250 cterm=NONE



" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#ff425f gui=NONE
            \ ctermfg=16 ctermbg=197 cterm=NONE
endif

" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#2f2f5f gui=NONE
          \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight CursorLineNr guifg=#8f1f5f guibg=#efdfff gui=NONE
          \ ctermfg=57 ctermbg=16 cterm=bold
highlight CursorLineFold guifg=NONE guibg=#cfcfff gui=bold
          \ ctermfg=93 ctermbg=16 cterm=bold
highlight CursorLineSign guifg=NONE guibg=#8faf8f gui=bold
          \ ctermfg=93 ctermbg=16 cterm=bold


" Terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=fg guibg=bg gui=NONE
                  \ ctermfg=fg ctermbg=bg cterm=NONE
  " Terminal color
  let g:terminal_ansi_colors = [
        \ "#0c0c0c", "#c50f1f", "#13a10e", "#c19c00",
        \ "#0037da", "#881798", "#3a96dd", "#cccccc",
        \ "#767676", "#e74856", "#16c60c", "#eadf84",
        \ "#3b78ff", "#b4009e", "#61d6d6", "#e8e8e8"
        \ ]

endif



" #- syntax highlighting group -# "{{{1
highlight MatchParen guifg=#5f5f5f guibg=#7fafff gui=bold
          \ ctermfg=18 ctermbg=26 cterm=bold,underline
highlight comment guifg=#dfafff guibg=bg gui=NONE
          \ ctermfg=97 ctermbg=bg cterm=NONE
highlight Constant guifg=#aaeeaa guibg=bg gui=NONE
          \ ctermfg=162 ctermbg=bg cterm=NONE
highlight Special guifg=#deffed guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight Identifier guifg=#6fcfff guibg=bg gui=NONE
          \ ctermfg=215 ctermbg=bg cterm=NONE
highlight Statement guifg=#7fffef guibg=bg gui=NONE
          \ ctermfg=48 ctermbg=bg cterm=NONE
highlight PreProc guifg=#faadfe guibg=NONE gui=NONE
          \ ctermfg=161 ctermbg=bg cterm=NONE
highlight type guifg=#5fbfcf guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight underlined guifg=#669ffc guibg=NONE gui=underline
          \ ctermfg=27 ctermbg=bg cterm=underline
highlight Ignore guifg=#5f5f5f guibg=NONE gui=bold
          \ ctermfg=2 ctermbg=bg cterm=NONE
highlight Error guifg=#ff5faf guibg=bg gui=NONE
          \ ctermfg=9 ctermbg=bg cterm=NONE
highlight Todo guifg=#4e5ca0 guibg=#2f2f5f gui=bold
          \ ctermfg=161 ctermbg=233 cterm=bold,underline
highlight string guifg=#afffaf guibg=NONE gui=NONE
          \ ctermfg=183 ctermbg=bg cterm=NONE

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
