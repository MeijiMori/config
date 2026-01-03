" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen {[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file

" #- Vim color file reset -# "{{{1
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif


" #- colorscheme name -# "{{{1
" name: oeNmP
let g:colors_name = expand('<sfile>:t:r')


" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#dfdfdf guibg=#0f1a3f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight NonText guifg=#3333ff guibg=bg gui=NONE
                \ ctermfg=21 ctermbg=bg cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=105 ctermbg=NONE cterm=bold
highlight Directory guifg=#3fafff guibg=bg gui=bold
                \ ctermfg=39 ctermbg=bg cterm=bold


" Search: "{{{2
highlight IncSearch guifg=#afafaf guibg=#0f3f3f gui=bold,underline
                \ ctermfg=23 ctermbg=115 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=136 ctermbg=220 cterm=bold,underline
highlight Search guifg=#afafaf guibg=#3f0f3f gui=bold,underline
                \ ctermfg=52 ctermbg=206 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#95d5d9 guibg=bg gui=underline
                \ ctermfg=117 ctermbg=bg cterm=underline
highlight ModeMsg guifg=#3f5fff guibg=bg gui=underline
                \ ctermfg=33 ctermbg=bg cterm=underline
highlight MsgArea guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#ff6f6f guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
highlight WarningMsg guifg=#ff4765 guibg=bg gui=underline
                \ ctermfg=199 ctermbg=bg cterm=underline
highlight Question guifg=#6ff39f guibg=bg gui=underline
                \ ctermfg=85 ctermbg=bg cterm=underline
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#cfcfcf guibg=#0f0f2f gui=underline
                \ ctermfg=15 ctermbg=19 cterm=underline


" LineNr: "{{{2
highlight LineNr guifg=#2f5fff guibg=NONE gui=NONE
                \ ctermfg=27 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=129 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=248 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#e0f0e0 guibg=#0f1f30 gui=NONE
                \ ctermfg=255 ctermbg=18 cterm=NONE
highlight StatusLineNC guifg=#5f5f3f guibg=#c4b2ab gui=NONE
                \ ctermfg=58 ctermbg=181 cterm=NONE
highlight StatusLineTerm guifg=#0f0f3f guibg=#5f8fcf gui=underline
                \ ctermfg=18 ctermbg=74 cterm=NONE
highlight StatusLineTermNC guifg=#1f1f8f guibg=#5f8fff gui=NONE
                \ ctermfg=17 ctermbg=75 cterm=NONE


"}}}2


highlight VertSplit guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=bold
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#afbf7f guibg=NONE gui=underline
                \ ctermfg=250 ctermbg=bg cterm=underline,bold


" Visual: "{{{2
highlight Visual guifg=#cfcfcf guibg=#1f2f4f gui=NONE
                \ ctermfg=15 ctermbg=20 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#3f5f8f gui=bold,underline
                \ ctermfg=fg ctermbg=25 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#9f9faf guibg=#0a102f gui=NONE
                \ ctermfg=252 ctermbg=18 cterm=NONE
highlight FoldColumn guifg=#2f1090 guibg=#0f102f gui=bold
                \ ctermfg=55 ctermbg=17 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=fg guibg=#2f3f5f gui=NONE
                \ ctermfg=254 ctermbg=26 cterm=NONE
highlight DiffChange guifg=fg guibg=#5f804f gui=NONE
                \ ctermfg=254 ctermbg=29 cterm=NONE
highlight DiffDelete guifg=fg guibg=#f5804f gui=bold
                \ ctermfg=254 ctermbg=202  cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg  cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
                \ ctermfg=30 ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
                \ ctermfg=220 ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
                \ ctermfg=160 ctermbg=bg cterm=NONE


"}}}2


highlight SignColumn guifg=fg guibg=#3f3f8f gui=NONE
                \ ctermfg=252 ctermbg=62 cterm=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
                \ ctermfg=52 ctermbg=199 cterm=NONE
highlight SpecialKey guifg=#5f7ecf guibg=bg gui=NONE
                \ ctermfg=68 ctermbg=bg cterm=NONE


" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=236 ctermbg=189 cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=236 ctermbg=189 cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=15 ctermbg=19 cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=23 ctermbg=73 cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#cfafff gui=bold
      \ ctermfg=52 ctermbg=219 cterm=bold


" Toolbar: "{{{2
highlight ToolbarButton guifg=#3f1f8f guibg=#afafff gui=NONE
          \ ctermfg=54 ctermbg=105 cterm=NONE
highlight ToolbarLine guifg=#5f0f0f guibg=#df3fcf gui=NONE
          \ ctermfg=52 ctermbg=199 cterm=NONE



" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
          \ ctermfg=235 ctermbg=189 cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=22 ctermbg=152 cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#af8fcf guibg=bg gui=undercurl
                \ ctermfg=13 ctermbg=bg  cterm=undercurl
highlight SpellCap guifg=#8f9fcf guibg=bg gui=undercurl
                \ ctermfg=27 ctermbg=bg  cterm=undercurl
highlight SpellRare guifg=#8fcfbf guibg=bg gui=undercurl
                \ ctermfg=73 ctermbg=bg  cterm=undercurl
highlight SpellLocal guifg=#cfbf8f guibg=bg gui=undercurl
                \ ctermfg=216 ctermbg=bg  cterm=undercurl

" Pmenu: "{{{2
highlight Pmenu guifg=#202020 guibg=#c0c0c0 gui=NONE
                \ ctermfg=238 ctermbg=253  cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=238 ctermbg=253 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuKind guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=238 ctermbg=253 cterm=NONE
highlight PmenuKindSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfefff gui=NONE
                \ ctermfg=238 ctermbg=253 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
                \ ctermfg=238 ctermbg=253 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
                \ ctermfg=238 ctermbg=253 cterm=NONE
highlight PmenuSel guifg=#cccccc guibg=#1f2f5f gui=NONE
                \ ctermfg=15 ctermbg=19  cterm=NONE
highlight PmenuSbar guifg=#7f7f7f guibg=#1f102f gui=NONE
                \ ctermfg=15 ctermbg=52  cterm=NONE
highlight PmenuThumb guifg=#000000 guibg=#2f5f4f gui=NONE
                \ ctermfg=15 ctermbg=23  cterm=NONE


" Tabline: "{{{2
highlight TabLine guifg=#8f8f8f guibg=#0f0f3f gui=NONE
                \ ctermfg=248 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#0f3f3f guibg=#0f0f3f gui=underline,bold
                \ ctermfg=23 ctermbg=17 cterm=bold,underline
highlight TabLineSel guifg=#cfcfcf guibg=#1f1f5f gui=NONE
                \ ctermfg=15 ctermbg=20 cterm=NONE


" Tabpanel: "{{{2
highlight TabPanel guifg=#8f8f8f guibg=#0f0f3f gui=NONE
                \ ctermfg=248 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#0f3f3f guibg=#0f0f3f gui=bold
                \ ctermfg=23 ctermbg=17 cterm=bold
highlight TabPanelSel guifg=#cfcfcf guibg=#1f1f5f gui=NONE
                \ ctermfg=15 ctermbg=20 cterm=NONE
highlight TabPanelTitle guifg=#000000 guibg=#efefff gui=NONE
                \ ctermfg=17 ctermbg=74 cterm=NONE


" Cursor: "{{{2
highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight CursorColumn guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=15 ctermbg=18 cterm=NONE
highlight lCursor guifg=#404040 guibg=#7ea3a6 gui=NONE
                \ ctermfg=23 ctermbg=109 cterm=NONE
highlight Cursor guifg=#000000 guibg=#9f9f9f gui=NONE
                \ ctermfg=232 ctermbg=240 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE



" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#7f2f4f gui=NONE
                \ ctermfg=16 ctermbg=52 cterm=NONE
endif


" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#1f254f gui=NONE
                \ ctermfg=NONE ctermbg=18 cterm=NONE
highlight CursorLineNr guifg=#2f2fff guibg=#0f002f gui=NONE
                \ ctermfg=19 ctermbg=16 cterm=bold
highlight CursorLineSign guifg=NONE guibg=#8faf8f gui=bold
                \ ctermfg=252 ctermbg=73 cterm=bold
highlight CursorLineFold guifg=NONE guibg=#cfcfff gui=bold
                \ ctermfg=250 ctermbg=189 cterm=bold


" Terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=fg guibg=bg gui=NONE
                  \ ctermfg=fg ctermbg=bg cterm=bold

  " Terminal color
  let g:terminal_ansi_colors = [
    \ "#0c0c0c", "#850f1f", "#13710e", "#819c00",
    \ "#00378a", "#881798", "#3a96dd", "#8f8f8f",
    \ "#767676", "#872836", "#16960c", "#6a7f84",
    \ "#3b789f", "#94005e", "#61d6d6", "#989898"
    \ ]
endif



" #- syntax highlighting group -# "{{{1
highlight MatchParen guifg=#0f0f2f guibg=#0f2fcf gui=bold,underline
                \ ctermfg=232 ctermbg=36 cterm=bold,underline
highlight comment guifg=#6fafff guibg=bg gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Constant guifg=#7dd97b guibg=bg gui=NONE
                \ ctermfg=43 ctermbg=bg cterm=NONE
highlight Special guifg=#deffed guibg=bg gui=NONE
                \ ctermfg=195 ctermbg=bg cterm=NONE
highlight Identifier guifg=#ccb0d7 guibg=bg gui=NONE
                \ ctermfg=5 ctermbg=bg cterm=NONE
highlight Statement guifg=#94de92 guibg=bg gui=NONE
                \ ctermfg=49 ctermbg=bg cterm=NONE
highlight PreProc guifg=#b871b7 guibg=bg gui=NONE
                \ ctermfg=134 ctermbg=bg cterm=NONE
highlight type guifg=#71c9af guibg=bg gui=NONE
                \ ctermfg=86 ctermbg=bg cterm=NONE
highlight underlined guifg=#9f7fff guibg=bg gui=underline
                \ ctermfg=105 ctermbg=bg cterm=underline
highlight Ignore guifg=#047f75 guibg=NONE gui=bold
                \ ctermfg=36 ctermbg=bg cterm=bold
highlight Error guifg=#ff4f7e guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
highlight Todo guifg=#6f7fff guibg=#1f0f3f gui=bold,underline
                \ ctermfg=69 ctermbg=bg cterm=bold,underline
highlight string guifg=#4f7faf guibg=bg
                \ ctermfg=25 ctermbg=bg cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


