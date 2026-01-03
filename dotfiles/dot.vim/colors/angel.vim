" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file
" Inspired Dragon that angel @ drag on dragoon

" #- Vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- Colorscheme name -# "{{{1
" name angle
let g:colors_name = expand('<sfile>:t:r')

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#1f151a gui=NONE
      \ ctermfg=255 ctermbg=233 cterm=NONE
highlight NonText guifg=#ff000f guibg=bg gui=NONE
      \ ctermfg=198 ctermbg=bg cterm=NONE
highlight EndOfBuffer guifg=#ff3f3f guibg=bg gui=bold
      \ ctermfg=198 ctermbg=NONE cterm=bold
highlight Directory guifg=#8f3fff guibg=bg gui=bold
      \ ctermfg=93 ctermbg=bg cterm=bold


" Search: "{{{2
highlight IncSearch guifg=#5f0f2f guibg=#ff5f8f gui=bold
      \ ctermfg=52 ctermbg=161 cterm=bold,underline
highlight CurSearch guifg=#1f0f5f guibg=#5f8fff gui=bold,underline
      \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#8f2f8f guibg=#ef3fef gui=bold
      \ ctermfg=52 ctermbg=201 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#1f3f2f guibg=#cfffaf gui=underline
      \ ctermfg=22 ctermbg=151 cterm=underline
highlight ModeMsg guifg=#0f0f3f guibg=#cfcfff gui=underline
      \ ctermfg=234 ctermbg=252 cterm=underline
highlight MsgArea guifg=fg guibg=bg gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#5f1f1f guibg=#ff8fcf gui=underline
      \ ctermfg=52 ctermbg=213 cterm=underline
highlight WarningMsg guifg=#5f5f1f guibg=#efdfaf gui=underline
      \ ctermfg=52 ctermbg=220 cterm=underline
highlight Question guifg=#0f5f1f guibg=#afffaf gui=underline
      \ ctermfg=23 ctermbg=77 cterm=underline
highlight WildMenu guifg=#5f0f0f guibg=#ff0faf gui=bold,underline
      \ ctermfg=52 ctermbg=196 cterm=bold,underline


" LineNr: "{{{2
highlight LineNr guifg=#ff0f3f guibg=NONE gui=NONE
      \ ctermfg=160 ctermbg=bg cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
      \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
      \ ctermfg=249 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#3f0f1f guibg=#cf2f5f gui=NONE
      \ ctermfg=233 ctermbg=125 cterm=NONE
highlight StatusLineNC guifg=#5f3f3f guibg=#bfafaf gui=NONE
      \ ctermfg=237 ctermbg=139 cterm=NONE
highlight StatusLineTerm guifg=#3f0f5f guibg=#7f2fff gui=NONE
      \ ctermfg=235 ctermbg=92 cterm=NONE
highlight StatusLineTermNc guifg=#5f0f2f guibg=#cf8f8f gui=NONE
      \ ctermfg=52 ctermbg=140 cterm=NONE


"}}}2


highlight VertSplit guifg=#ff1f5f guibg=bg gui=bold
      \ ctermfg=198 ctermbg=bg cterm=bold
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
      \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
      \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#ef8f8f guibg=bg gui=bold,underline
      \ ctermfg=169 ctermbg=bg cterm=bold,underline


" Visual: "{{{2
highlight Visual guifg=#ffffff guibg=#1f3f7f gui=NONE
      \ ctermfg=15 ctermbg=19 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f2f8f gui=underline,bold
      \ ctermfg=15 ctermbg=19 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#3f0f2f guibg=#cfafff gui=NONE
      \ ctermfg=52 ctermbg=139 cterm=NONE
highlight FoldColumn guifg=#a0a0a0 guibg=#1f101a gui=bold
      \ ctermfg=242 ctermbg=233 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=#2f5f1f guibg=#2fcfaf gui=NONE
      \ ctermfg=22 ctermbg=79 cterm=bold
highlight DiffChange guifg=#5f5f2f guibg=#dfdf2f gui=NONE
      \ ctermfg=58 ctermbg=220 cterm=NONE
highlight DiffDelete guifg=#5f0f2f guibg=#ff5f8f gui=NONE
      \ ctermfg=52 ctermbg=161 cterm=NONE
highlight DiffText guifg=#cfcfcf guibg=bg gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#2fcf5f guibg=bg gui=NONE
      \ ctermfg=121 ctermbg=bg cterm=NONE
highlight Added guifg=#5fcf5f guibg=bg gui=NONE
      \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Changed guifg=#afaf5f guibg=bg gui=NONE
      \ ctermfg=184 ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
      \ ctermfg=160 ctermbg=bg cterm=NONE


" }}}2


highlight SignColumn guifg=#cfcfcf guibg=#5f3f3f gui=NONE
      \ ctermfg=232 ctermbg=96 cterm=NONE
highlight Conceal guifg=fg guibg=#5f2faf gui=NONE
      \ ctermfg=15 ctermbg=89 cterm=NONE
highlight SpecialKey guifg=#af3fff guibg=#1f1f1f  gui=NONE
      \ ctermfg=129 ctermbg=bg cterm=NONE


" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=235 ctermbg=189 cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=235 ctermbg=189 cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=15 ctermbg=20 cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=17 ctermbg=74 cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#cfafff gui=bold
      \ ctermfg=52 ctermbg=183 cterm=bold


" Toolbar: "{{{2
highlight ToolbarButton guifg=#cfcfcf guibg=#0f0f0f gui=bold,underline
      \ ctermfg=250 ctermbg=16 cterm=bold,underline
highlight ToolbarLine guifg=#0f0f0f guibg=#afafff gui=bold,underline
      \ ctermfg=17 ctermbg=189 cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=16 ctermbg=250 cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#7f2f8f guibg=bg gui=NONE
      \ ctermfg=125 ctermbg=NONE cterm=NONE
highlight SpellCap guifg=#2f3f5f guibg=bg gui=NONE
      \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight SpellRare guifg=#2f8f4f guibg=bg gui=NONE
      \ ctermfg=29 ctermbg=NONE cterm=NONE
highlight SpellLocal guifg=#8f7f2f guibg=bg gui=NONE
      \ ctermfg=154 ctermbg=NONE cterm=NONE

" Pmenu: "{{{2
highlight Pmenu guifg=#1f1f1f guibg=#bfbfff gui=NONE
      \ ctermfg=235 ctermbg=250 cterm=NONE
highlight PmenuKind guifg=#0f0f0f guibg=#cfcfff gui=NONE
      \ ctermfg=235 ctermbg=250 cterm=NONE
highlight PmenuKindSel guifg=#ffffff guibg=#003f8f gui=NONE
      \ ctermfg=15 ctermbg=20 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
      \ ctermfg=235 ctermbg=250 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
      \ ctermfg=15 ctermbg=20 cterm=NONE
highlight PmenuKind guifg=#0f0f0f guibg=#dfcfff gui=NONE
      \ ctermfg=235 ctermbg=250 cterm=NONE
highlight PmenuKindSel guifg=#ffffff guibg=#0f3f8f gui=NONE
      \ ctermfg=15 ctermbg=20 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfefff gui=NONE
      \ ctermfg=235 ctermbg=250 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
      \ ctermfg=235 ctermbg=250 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
      \ ctermfg=235 ctermbg=250 cterm=NONE
highlight PmenuSel guifg=#bfbfbf guibg=#1f0f30 gui=NONE
      \ ctermfg=15 ctermbg=20 cterm=NONE
highlight PmenuSbar guifg=#cccccc guibg=#ff1f8f gui=NONE
      \ ctermfg=15 ctermbg=198 cterm=NONE
highlight PmenuThumb guifg=fg guibg=#000f8f gui=NONE
      \ ctermfg=250 ctermbg=19 cterm=NONE

" Tabline: "{{{2
highlight TabLine guifg=#2f2f2f guibg=#bbbbbb gui=NONE
      \ ctermfg=238 ctermbg=248 cterm=NONE
highlight TabLineFill guifg=#af3fff guibg=#bfbfbf gui=NONE
      \ ctermfg=198 ctermbg=248 cterm=bold
highlight TabLineSel guifg=#ffffff guibg=#1f3f8f gui=NONE
      \ ctermfg=15 ctermbg=19 cterm=NONE


" Tabpanel: "{{{2
highlight TabPanel guifg=#2f2f2f guibg=#dfcfff gui=NONE
      \ ctermfg=238 ctermbg=248 cterm=NONE
highlight TabPanelFill guifg=#3f3f3f guibg=#ffdfff gui=NONE
      \ ctermfg=198 ctermbg=248 cterm=NONE
highlight TabPanelSel guifg=#ffffff guibg=#0f3faf gui=NONE
      \ ctermfg=245 ctermbg=20 cterm=NONE
highlight TabPanelTitle guifg=#000000 guibg=#efefff gui=NONE
      \ ctermfg=232 ctermbg=244 cterm=NONE



" Cursor: "{{{2
highlight ColorColumn guifg=fg guibg=#afafff gui=NONE
      \ ctermfg=255 ctermbg=189 cterm=NONE
highlight CursorColumn guifg=NONE guibg=#3f0f0f gui=NONE
      \ ctermfg=NONE ctermbg=52 cterm=NONE
highlight lCursor guifg=#0f0f0f guibg=#ff8faf gui=NONE
      \ ctermfg=52 ctermbg=211 cterm=NONE
highlight Cursor guifg=#0f0f0f guibg=#ff3faf gui=NONE
      \ ctermfg=52 ctermbg=163 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
      \ ctermfg=NONE ctermbg=250 cterm=NONE


"IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#bfbfbf guibg=#5f0f2f gui=NONE
        \ ctermfg=232 ctermbg=88 cterm=NONE
endif



" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#3f0f0f gui=NONE
      \ ctermfg=NONE ctermbg=53 cterm=NONE
highlight CursorLineNr guifg=#af0f3f guibg=#ff1f8f gui=NONE
      \ ctermfg=52 ctermbg=198 cterm=NONE
highlight CursorLineFold guifg=#cfcfff guibg=#8f8fff gui=bold
      \ ctermfg=255 ctermbg=105 cterm=bold
highlight CursorLineSign guifg=fg guibg=#3fafaf gui=bold
      \ ctermfg=252 ctermbg=30 cterm=bold



" Terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=fg guibg=bg gui=NONE
        \ ctermfg=fg ctermbg=bg cterm=NONE

  " Terminal color
  let g:terminal_ansi_colors = [
        \ "#0c0c0c", "#850f1f", "#13710e", "#819c00",
        \ "#00378a", "#881798", "#3a96dd", "#8f8f8f",
        \ "#767676", "#872836", "#16960c", "#6a7f84",
        \ "#3b789f", "#94005e", "#61d6d6", "#989898"
        \ ]
endif



" #- Syntax highlighting group -# "{{{1
highlight MatchParen guifg=#0f0f0f guibg=#afff8f gui=bold,underline
      \ ctermfg=22 ctermbg=150 cterm=bold,underline
highlight comment guifg=#1f8fff guibg=bg gui=NONE
      \ ctermfg=33 ctermbg=bg cterm=NONE
highlight string guifg=#afafff guibg=bg gui=NONE
      \ ctermfg=189 ctermbg=bg cterm=NONE
highlight Character guifg=#8fffff guibg=bg gui=NONE
      \ ctermfg=122 ctermbg=bg cterm=NONE
highlight Number guifg=#ff3faf guibg=bg gui=NONE
      \ ctermfg=197 ctermbg=bg cterm=NONE
highlight Boolean   guifg=#2f8fff guibg=bg gui=NONE
      \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Float     guifg=#afcfff guibg=bg gui=NONE
      \ ctermfg=153 ctermbg=bg cterm=NONE
highlight Identifier guifg=#ffaf5f guibg=bg gui=NONE
      \ ctermfg=172 ctermbg=bg cterm=NONE
highlight Function  guifg=#0f8fff guibg=bg gui=bold
      \ ctermfg=33 ctermbg=bg cterm=bold
highlight Statement guifg=#2fdf7f guibg=bg gui=bold
      \ ctermfg=77 ctermbg=bg cterm=NONE
highlight Conditional guifg=#ff5f8f guibg=bg gui=bold
      \ ctermfg=198 ctermbg=bg cterm=bold
highlight Repeat guifg=#8f3fff guibg=bg gui=bold
      \ ctermfg=92 ctermbg=bg cterm=bold
highlight Label guifg=#ff2fff guibg=bg gui=bold
      \ ctermfg=199 ctermbg=bg cterm=bold
highlight Operator guifg=#cf4fcf guibg=bg gui=bold
      \ ctermfg=129 ctermbg=bg cterm=bold
highlight Keyword  guifg=#ef0f2f guibg=bg gui=bold
      \ ctermfg=197 ctermbg=bg cterm=bold
highlight Exception  guifg=#2faf3f guibg=bg gui=bold
      \ ctermfg=35 ctermbg=bg cterm=bold
highlight Constant guifg=#cf2fff guibg=bg gui=bold
      \ ctermfg=129 ctermbg=bg cterm=NONE
highlight PreProc guifg=#cf2fff guibg=bg gui=bold
      \ ctermfg=200 ctermbg=bg cterm=NONE
highlight Include guifg=#ff5f0f guibg=bg gui=bold
      \ ctermfg=205 ctermbg=bg cterm=bold
highlight Define guifg=#3fcfff guibg=bg gui=bold
      \ ctermfg=39 ctermbg=bg cterm=bold
highlight Macro guifg=#3fcfaf guibg=bg gui=bold
      \ ctermfg=34 ctermbg=bg cterm=bold
highlight PreCondit guifg=#1fcf3f guibg=bg gui=bold
      \ ctermfg=35 ctermbg=bg cterm=bold
highlight type guifg=#3fcf9f guibg=bg gui=bold
      \ ctermfg=36 ctermbg=bg cterm=bold
highlight StorageClass guifg=#af5fff guibg=bg gui=bold
      \ ctermfg=99 ctermbg=bg cterm=bold
highlight Structure guifg=#af3fff guibg=bg gui=bold
      \ ctermfg=57 ctermbg=bg cterm=bold
highlight Typedef guifg=#0f7fff guibg=bg gui=bold
      \ ctermfg=39 ctermbg=bg cterm=bold
highlight Special guifg=#afdfff guibg=bg gui=NONE
      \ ctermfg=153 ctermbg=bg cterm=NONE
highlight Specialchar guifg=#3f5fff guibg=bg gui=bold
      \ ctermfg=69 ctermbg=bg cterm=bold
highlight Tag guifg=#ff5f5f guibg=bg gui=bold
      \ ctermfg=198 ctermbg=bg cterm=bold
highlight Delimiter guifg=#af8fff guibg=bg gui=bold
      \ ctermfg=105 ctermbg=bg cterm=bold
highlight SpecialCommnet guifg=#0f7fbf guibg=bg gui=bold
      \ ctermfg=153 ctermbg=bg cterm=bold
highlight Debug guifg=#ffaf8f guibg=bg gui=bold
      \ ctermfg=215 ctermbg=bg cterm=bold
highlight underlined guifg=#2f5fff guibg=bg gui=underline
      \ ctermfg=33 ctermbg=bg cterm=underline
highlight Ignore guifg=#047f75 guibg=NONE gui=bold
      \ ctermfg=24 ctermbg=bg cterm=bold
highlight Error guifg=#ff2f2f guibg=bg gui=NONE
      \ ctermfg=161 ctermbg=bg cterm=NONE
highlight Todo guifg=#5f2fff guibg=#1f0f2f gui=bold
      \ ctermfg=57 ctermbg=235 cterm=bold

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


