" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen {[(*)]}
" highlighting ZenkakuSpace /　/
" cui colorscheme file
" This colorscheme file is dark theme.

" #- Color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- Colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal ctermfg=7 ctermbg=0 cterm=NONE
      \ guifg=#ffffff guibg=#0f0f0f gui=NONE
highlight NonText ctermfg=2 ctermbg=0 cterm=NONE
      \ guifg=#3f5fff guibg=bg gui=NONE
highlight EndOfBuffer ctermfg=9 ctermbg=0 cterm=bold
      \ guifg=#3f5fff guibg=bg gui=NONE
highlight Directory ctermfg=13 ctermbg=0 cterm=bold
      \ guifg=#cf0fff guibg=bg gui=bold


" Search: "{{{2
highlight IncSearch ctermfg=2 ctermbg=11 cterm=bold,underline
      \ guifg=#2f8f5f guibg=#3fffff gui=bold,underline
highlight CurSearch ctermfg=2 ctermbg=11 cterm=bold,underline
      \ guifg=#2f8f5f guibg=#3fffff gui=bold,underline
highlight Search ctermfg=2 ctermbg=11 cterm=bold,underline
      \ guifg=#2f8f5f guibg=#3fffff gui=bold,underline


" Message: "{{{2
highlight MoreMsg ctermfg=2 ctermbg=0 cterm=NONE
      \ guifg=#3fcf5f guibg=bg gui=bold
highlight ModeMsg ctermfg=8 ctermbg=7 cterm=NONE
      \ guifg=#6f6f6f guibg=#dfdfdf gui=NONE
highlight MsgArea guifg=fg guibg=bg gui=NONE
      \ guifg=fg guibg=bg gui=NONE
highlight ErrorMsg ctermfg=4 ctermbg=bg cterm=underline
      \ guifg=#ff3f3f guibg=bg gui=underline
highlight WarningMsg ctermfg=6 ctermbg=bg cterm=bold,underline
      \ guifg=#ffaf3f guibg=bg gui=bold,underline
highlight Question ctermfg=3 ctermbg=0 cterm=NONE
      \ guifg=#3f9fcf guibg=bg gui=NONE
highlight WildMenu ctermfg=7 ctermbg=1 cterm=bold,underline
      \ guifg=#ffffff guibg=#0f3f8f gui=bold


" LineNr: "{{{2
highlight LineNr ctermfg=6 ctermbg=bg cterm=NONE
      \ guifg=#dfaf3f guibg=bg gui=bold
highlight LineNrAbove ctermfg=9 ctermbg=bg cterm=NONE
      \ guifg=#3f5fff guibg=bg gui=bold
highlight LineNrBelow ctermfg=2 ctermbg=bg cterm=NONE
      \ guifg=#3faf5f guibg=bg gui=bold


" Statusline: "{{{2
highlight StatusLine ctermfg=7 ctermbg=0 cterm=NONE
      \ guifg=#ffffff guibg=#0f0f0f gui=NONE
highlight StatusLineNC ctermfg=8 ctermbg=7 cterm=NONE
      \ guifg=#7f7f7f guibg=#dfdfdf gui=NONE
highlight StatusLineTerm ctermfg=16 ctermbg=9 cterm=NONE
      \ guifg=#0f0f0f guibg=#0f7fff gui=NONE
highlight StatusLineTermNC ctermfg=0 ctermbg=8 cterm=NONE
      \ guifg=#0f0f0f guibg=#7f7f7f gui=NONE
"}}}


highlight VertSplit ctermfg=3 ctermbg=3 cterm=NONE
      \ guifg=#2fcfff guibg=#0fafff gui=bold
highlight WinSeparator ctermfg=16 ctermbg=2 cterm=bold
      \ guifg=#0f0f0f guibg=#0faf3f gui=bold
highlight FloatBorder ctermfg=3 ctermbg=4 cterm=bold
      \ guifg=#3fcfff guibg=#af0f3f gui=bold
highlight Title ctermfg=11 ctermbg=0 cterm=bold,underline
      \ guifg=#3fefff guibg=bg gui=bold,underline


" Visual: "{{{2
highlight Visual ctermfg=15 ctermbg=1 cterm=NONE
      \ guifg=#ffffff guibg=#0f3f8f gui=NONE
highlight VisualNOS ctermfg=7 ctermbg=3 cterm=bold,underline
      \ guifg=#ffffff guibg=#3fafff gui=NONE


" Fold: "{{{2
highlight Folded ctermfg=7 ctermbg=0 cterm=NONE
      \ guifg=#afafaf guibg=#0f0f1f gui=NONE
highlight FoldColumn ctermfg=9 ctermbg=bg cterm=bold
      \ guifg=#3f5fff guibg=#0f0f1f gui=bold


" Diff: "{{{2
highlight DiffAdd ctermfg=fg ctermbg=2 cterm=NONE
      \ guifg=#0f5f2f guibg=#1fbf3f gui=NONE
highlight DiffChange ctermfg=fg ctermbg=6 cterm=NONE
      \ guifg=#3f3f0f guibg=#ffcf2f gui=NONE
highlight DiffDelete ctermfg=fg ctermbg=4 cterm=NONE
      \ guifg=#5f2f0f guibg=#ff3faf gui=NONE
highlight DiffText ctermfg=fg ctermbg=bg cterm=NONE
      \ guifg=fg guibg=bg gui=NONE
highlight DiffTextAdd ctermfg=10 ctermbg=bg cterm=NONE
      \ guifg=#3fcf3f guibg=bg gui=NONE
highlight Added ctermfg=3 ctermbg=bg cterm=NONE
      \ guifg=#3fcf3f guibg=bg gui=NONE
highlight Changed ctermfg=6 ctermbg=bg cterm=NONE
      \ guifg=#ffaf3f guibg=bg gui=NONE
highlight Removed ctermfg=4 ctermbg=bg cterm=NONE
      \ guifg=#ff3f4f guibg=bg gui=NONE
"}}}


highlight SignColumn ctermfg=fg ctermbg=8 cterm=NONE
      \ guifg=#cfcfcf guibg=#9f9f9f gui=NONE
highlight conceal ctermfg=fg ctermbg=bg cterm=NONE
      \ guifg=#ffffff guibg=#000000 gui=NONE
highlight SpecialKey ctermfg=13 ctermbg=bg cterm=NONE
      \ guifg=#cf2faf guibg=bg gui=NONE


" Popup: "{{{2
highlight MessageWindow  ctermfg=15 ctermbg=8 cterm=NONE
      \ guifg=#ffffff guibg=bg gui=NONE
highlight PopupNotification  ctermfg=fg ctermbg=bg cterm=NONE
      \ guifg=#ffffff guibg=#0f0f0f gui=NONE
highlight PopupSelected  ctermfg=fg ctermbg=1 cterm=NONE
      \ guifg=#ffffff guibg=#0f3f8f gui=NONE


" Menu: "{{{2
highlight Menu  ctermfg=fg ctermbg=bg cterm=NONE
      \ guifg=#efefef guibg=#1f1f1f gui=NONE


" Quickfix: "{{{2
highlight QuickFixLine  ctermfg=7 ctermbg=1 cterm=NONE
      \ guifg=#ffffff guibg=#0f3f8f gui=NONE


" Toolbar: "{{{2
highlight ToolbarButton  ctermfg=0 ctermbg=3 cterm=NONE
      \ guifg=#1f1f1f guibg=#3f9fff gui=NONE
highlight ToolbarLine  ctermfg=0 ctermbg=8 cterm=NONE
      \ guifg=#1f1f1f guibg=#8f8f8f gui=NONE


" Tooltip: "{{{2
highlight Tooltip ctermfg=fg ctermbg=bg cterm=NONE
      \ guifg=#efefef guibg=#3f3f3f gui=NONE


" Spell: "{{{2
highlight SpellBad ctermfg=12 ctermbg=bg cterm=undercurl
      \ guifg=#ff2f5f guibg=bg gui=undercurl
highlight SpellCap ctermfg=11 ctermbg=bg cterm=undercurl
      \ guifg=#3fafff guibg=bg gui=undercurl
highlight SpellLocal ctermfg=14 ctermbg=bg cterm=undercurl
      \ guifg=#ffffaf guibg=bg gui=undercurl
highlight SpellRare ctermfg=10 ctermbg=bg cterm=undercurl
      \ guifg=#3fcf8f guibg=bg gui=undercurl


" Pmenu: "{{{2
highlight Pmenu ctermfg=16 ctermbg=7 cterm=NONE
      \ guifg=#ffffff guibg=#1f1f1f gui=NONE
highlight PmenuSel ctermfg=15 ctermbg=1 cterm=NONE
      \ guifg=#ffffff guibg=#0f3f8f gui=NONE
highlight PmenuExtra  ctermfg=16  ctermbg=7 cterm=NONE
      \ guifg=#ffffff guibg=#1f1f1f gui=NONE
highlight PmenuExtraSel ctermfg=15 ctermbg=1 cterm=NONE
      \ guifg=#ffffff guibg=#0f3f8f gui=NONE
highlight PmenuKind  ctermfg=16   ctermbg=7 cterm=NONE
      \ guifg=#ffffff guibg=#1f1f1f gui=NONE
highlight PmenuKindSel  ctermfg=15 ctermbg=1 cterm=NONE
      \ guifg=#ffffff guibg=#0f3f8f gui=NONE
highlight PmenuMatch  ctermfg=16 ctermbg=7 cterm=NONE
      \ guifg=#ffffff guibg=#1f1f1f gui=NONE
highlight PmenuMatchSel ctermfg=15 ctermbg=1 cterm=NONE
      \ guifg=#ffffff guibg=#0f3f8f gui=NONE
highlight ComplMatchIns  ctermfg=15 ctermbg=16 cterm=NONE
      \ guifg=#ffffff guibg=#1f1f1f gui=NONE
highlight PmenuSbar ctermfg=fg ctermbg=8 cterm=NONE
      \ guifg=#cfcfcf guibg=#afafaf gui=NONE
highlight PmenuThumb ctermfg=fg ctermbg=10 cterm=NONE
      \ guifg=#ffffff guibg=#2fbf5f gui=NONE

" Tabline: "{{{2
highlight TabLine ctermfg=15 ctermbg=0 cterm=NONE
      \ guifg=#dfdfdf guibg=#1f1f1f gui=NONE
highlight TabLineSel ctermfg=15 ctermbg=1 cterm=NONE
      \ guifg=#ffffdf guibg=#0f3f8f gui=NONE
highlight TabLineFill ctermfg=9 ctermbg=16 cterm=NONE
      \ guifg=#3f8fff guibg=#1f1f1f gui=NONE


" Tabpanel: "{{{2
highlight TabPanel ctermfg=15 ctermbg=0 cterm=NONE
      \ guifg=#dfdfdf guibg=#1f1f1f gui=NONE
highlight TabPanelSel ctermfg=15 ctermbg=1 cterm=NONE
      \ guifg=#ffffdf guibg=#0f3f8f gui=NONE
highlight TabPanelFill ctermfg=2 ctermbg=7 cterm=NONE
      \ guifg=#3f8fff guibg=#1f1f1f gui=NONE
highlight TabPanelTitle  ctermfg=7 ctermbg=16 cterm=NONE
      \ guifg=#cfcfcf guibg=#0f0f0f gui=NONE


" Cursor: "{{{2
highlight ColorColumn ctermfg=7 ctermbg=16 cterm=NONE
      \ guifg=#ffffff guibg=#3f3f3f gui=NONE
highlight CursorColumn ctermfg=7 ctermbg=0 cterm=NONE
      \ guifg=#ffffff guibg=#3f3f3f gui=NONE
highlight lCursor ctermfg=0 ctermbg=3 cterm=NONE
      \ guifg=#0f0f0f guibg=#2fafff gui=NONE
highlight Cursor ctermfg=0 ctermbg=2 cterm=NONE
      \ guifg=#0f0f0f guibg=#2fbf5f gui=NONE
highlight CmdlineCursor ctermfg=0 ctermbg=3 cterm=NONE
      \ guifg=#0f0f0f guibg=#2fafff gui=NONE



if has('multi_byte_ime') || has('xim') "{{{3
  highlight CursorIM ctermfg=0 ctermbg=4 cterm=NONE
      \ guifg=#0f0f0f guibg=#bf0f3f gui=NONE
endif



" Cursorline: "{{{2
highlight CursorLine ctermfg=NONE ctermbg=1 cterm=NONE
      \ guifg=NONE guibg=#0f3faf gui=NONE
highlight CursorLineNr ctermfg=7 ctermbg=9 cterm=NONE
      \ guifg=NONE guibg=#2f8fff gui=NONE
highlight CursorLineFold ctermfg=1 ctermbg=2 cterm=NONE
      \ guifg=#0f0f8f guibg=#2faf5f gui=NONE
highlight CursorLineSign ctermfg=15 ctermbg=10 cterm=bold
      \ guifg=#ffffff guibg=#0faf5f gui=NONE


" Terminal: "{{{2
if has('terminal')
  highlight Terminal ctermfg=fg ctermbg=bg cterm=NONE
      \ guifg=fg guibg=bg gui=NONE

  " Terminal color
  " 0 : black
  " 1 : blue
  " 2 : green
  " 3 : skyblue
  " 4 : red
  " 5 : perple
  " 6 : yellow
  " 7 : gray
  " 8 : darkgray
  " 9 : pink
  " 10 : bluegreen
  " 11 : lightgreen
  " 12 : red
  " 13 : perple
  " 14 : lightyellow
  " 15 : white
  let g:terminal_ansi_colors = [
    \ "#000000", "#0f0f8f", "#3fcf8f", "#2fafff",
    \ "#bf0f3f", "#af3faf", "#cfbf2f", "#bfbfbf",
    \ "#7f7f7f", "#ff8fcf", "#3fcfaf", "#3fefaf",
    \ "#ff7faf", "#ef8fcf", "#ffefaf", "#0f0f0f"
    \ ]
endif



" #- Syntax highlighting group -# "{{{1
highlight MatchParen ctermfg=0 ctermbg=13 cterm=bold,underline
      \ guifg=#3f0f3f guibg=#af3faf gui=bold,underline
highlight Comment ctermfg=9 ctermbg=bg cterm=NONE
      \ guifg=#3f8fff guibg=bg gui=NONE
highlight Constant ctermfg=10 ctermbg=bg cterm=NONE
      \ guifg=#3fcf5f guibg=bg gui=NONE
highlight Special ctermfg=3 ctermbg=bg cterm=NONE
      \ guifg=#3f9fff guibg=bg gui=NONE
highlight Identifier ctermfg=12 ctermbg=bg cterm=NONE
      \ guifg=#ff3f6f guibg=bg gui=NONE
highlight Statement ctermfg=10 ctermbg=bg cterm=NONE
      \ guifg=#3fff8f guibg=bg gui=NONE
highlight PreProc ctermfg=13 ctermbg=bg cterm=NONE
      \ guifg=#ff3fcf guibg=bg gui=NONE
highlight Type ctermfg=2 ctermbg=bg cterm=NONE
      \ guifg=#3fbf7f guibg=bg gui=NONE
highlight Underlined ctermfg=3 ctermbg=bg cterm=bold,underline
      \ guifg=#2fafff guibg=bg gui=underline
highlight Ignore ctermfg=3 ctermbg=bg cterm=underline
      \ guifg=#3f8fff guibg=bg gui=NONE
highlight Error ctermfg=4 ctermbg=12 cterm=NONE
      \ guifg=#8f0f0f guibg=#ff3f8f gui=NONE
highlight Todo ctermfg=8 ctermbg=7 cterm=bold,underline
      \ guifg=#8f8f8f guibg=#bfbfbf gui=bold,underline
highlight String ctermfg=13 ctermbg=bg cterm=NONE
      \ guifg=#cf1fcf guibg=bg gui=NONE

" #- hl-User -# "{{{1
highlight User1 ctermfg=fg ctermbg=1 cterm=NONE
      \ guifg=#ffffff guibg=#0f4fff gui=NONE
highlight User2 ctermfg=fg ctermbg=2 cterm=NONE
      \ guifg=#ffffff guibg=#3fcfaf gui=NONE
highlight User3 ctermfg=fg ctermbg=3 cterm=NONE
      \ guifg=#ffffff guibg=#3fcfff gui=NONE
highlight User4 ctermfg=fg ctermbg=4 cterm=NONE
      \ guifg=#ffffff guibg=#ff0f5f gui=NONE
highlight User5 ctermfg=fg ctermbg=5 cterm=NONE
      \ guifg=#ffffff guibg=#af3faf gui=NONE
highlight User6 ctermfg=fg ctermbg=6 cterm=NONE
      \ guifg=#ffffff guibg=#cfbf2f gui=NONE
highlight User7 ctermfg=fg ctermbg=9 cterm=NONE
      \ guifg=#ffffff guibg=#3f7fff gui=NONE
highlight User8 ctermfg=fg ctermbg=13 cterm=NONE
      \ guifg=#ffffff guibg=#af3fcf gui=NONE
highlight User9 ctermfg=fg ctermbg=12 cterm=NONE
      \ guifg=#ffffff guibg=#ff4f8f gui=NONE



" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim



