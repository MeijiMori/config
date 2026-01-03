" #- vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date
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
let g:colors_name = expand('<sfile>:t:r')

" #- highlighting groups for various occasions -#"{{{1
highlight Normal guifg=#cfcfcf guibg=#15151f gui=NONE
                \ ctermfg=15 ctermbg=232 cterm=NONE
highlight NonText guifg=#338fff guibg=bg gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=NONE
highlight EndOfBuffer guifg=#3f5fff guibg=bg gui=bold
                \ ctermfg=26 ctermbg=bg cterm=bold
highlight Directory guifg=#5fc0ff guibg=bg gui=bold
                \ ctermfg=39 ctermbg=bg cterm=bold


" Search: "{{{2
highlight IncSearch guifg=#3f0f5f guibg=#df8fff gui=bold,underline
                \ ctermfg=52 ctermbg=212 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=58 ctermbg=220 cterm=bold,underline
highlight Search guifg=#0f0f0f guibg=#5088e1 gui=bold,underline
                \ ctermfg=17 ctermbg=75 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#95d5d9 guibg=#20202f gui=NONE
                \ ctermfg=153 ctermbg=233 cterm=NONE
highlight ModeMsg guifg=#c0a0ff guibg=#20202f gui=NONE
                \ ctermfg=147 ctermbg=233 cterm=NONE
highlight MsgArea guifg=#cfcfcf guibg=#0f0f2f gui=NONE
                \ ctermfg=15 ctermbg=233 cterm=NONE
highlight ErrorMsg guifg=#5f1f1f guibg=#ffafcf gui=NONE
                \ ctermfg=52 ctermbg=219 cterm=NONE
highlight WarningMsg guifg=#7f3f0f guibg=#ffaf5f gui=NONE
                \ ctermfg=3 ctermbg=215 cterm=NONE
highlight Question guifg=#6ab395 guibg=bg gui=NONE
                \ ctermfg=73 ctermbg=233 cterm=NONE
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#cccccc guibg=#34348f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE


" LineNr: "{{{2
highlight LineNr guifg=#3f3fff guibg=NONE gui=NONE
                \ ctermfg=24 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=135 ctermbg=NONE cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=181 ctermbg=NONE cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#9d887c guibg=#20252f gui=NONE
                \ ctermfg=138 ctermbg=234 cterm=NONE
highlight StatusLineNC guifg=#50555f guibg=#202020 gui=NONE
                \ ctermfg=244 ctermbg=234 cterm=NONE
highlight StatusLineTerm guifg=#000f2f guibg=#cfccff gui=NONE
                \ ctermfg=17 ctermbg=189 cterm=NONE
highlight StatusLineTermNc guifg=#002f2f guibg=#8fafcf gui=NONE
                \ ctermfg=17 ctermbg=110 cterm=NONE
"}}}2


highlight VertSplit guifg=#4049d9 guibg=#0f0f0f gui=NONE
                \ ctermfg=25 ctermbg=233 cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#7fdf9f guibg=bg gui=NONE
                \ ctermfg=151 ctermbg=bg cterm=NONE


" Visual: "{{{2
highlight Visual guifg=#ffffff guibg=#1f3faf gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight VisualNOS guifg=#3d3d3d guibg=#aaeeee gui=bold,underline
                \ ctermfg=0 ctermbg=87 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#5f3f0f guibg=#dfbfcf gui=NONE
                \ ctermfg=58 ctermbg=139 cterm=NONE
highlight FoldColumn guifg=#3b54ec guibg=#0f0f1f gui=bold
                \ ctermfg=26 ctermbg=232 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=#0f0f4f guibg=#3f8fcf gui=NONE
                \ ctermfg=17 ctermbg=33 cterm=NONE
highlight DiffChange guifg=#5f5f1f guibg=#cfcf4f gui=NONE
                \ ctermfg=58 ctermbg=185 cterm=NONE
highlight DiffDelete guifg=#8f1f3f guibg=#ff2f7f gui=bold
                \ ctermfg=52 ctermbg=198 cterm=NONE
highlight DiffText guifg=#c9cbce guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
                \ ctermfg=72 ctermbg=bg cterm=NONE
highlight Added guifg=#2fcf8f guibg=bg gui=NONE
                \ ctermfg=79 ctermbg=bg cterm=NONE
highlight Changed guifg=#ffcf2f guibg=bg gui=NONE
                \ ctermfg=220 ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
                \ ctermfg=124 ctermbg=bg cterm=NONE
"}}}2

highlight SignColumn term=NONE guifg=#a65774 guibg=#0f0f4f gui=NONE
                \ ctermfg=135 ctermbg=16 cterm=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
                \ ctermfg=52 ctermbg=124 cterm=NONE
highlight SpecialKey guifg=#8fcfff guibg=bg gui=NONE
                \ ctermfg=75 ctermbg=bg cterm=NONE


" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=0 ctermbg=189 cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=16 ctermbg=189 cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=15 ctermbg=17 cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=16 ctermbg=23 cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#3fcfff gui=bold
      \ ctermfg=16 ctermbg=39 cterm=bold


" Toolbar: "{{{2
highlight ToolbarButton guifg=#0f1f3f guibg=#3f5fff gui=bold
                \ ctermfg=180 ctermbg=bg cterm=NONE
highlight ToolbarLine guifg=#0f0f8f guibg=#afafff gui=NONE
                \ ctermfg=180 ctermbg=bg cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#afcfff gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=0 ctermbg=74 cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#795099 guibg=bg gui=undercurl
                \ ctermfg=55 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#506399 guibg=bg gui=undercurl
                \ ctermfg=26 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#509982 guibg=bg gui=undercurl
                \ ctermfg=29 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#998c50 guibg=bg gui=undercurl
                \ ctermfg=100 ctermbg=bg cterm=undercurl

" Pmenu: "{{{2
highlight Pmenu guifg=#333333 guibg=#9f9faf gui=NONE
                \ ctermfg=16 ctermbg=247 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=16 ctermbg=189 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=15 ctermbg=18 cterm=NONE
highlight PmenuKind guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=16 ctermbg=189 cterm=NONE
highlight PmenuKindSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=15 ctermbg=18 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfefff gui=NONE
                \ ctermfg=16 ctermbg=189 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#ffefdf gui=NONE
                \ ctermfg=16 ctermbg=230 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
                \ ctermfg=15 ctermbg=18 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
                \ ctermfg=240 ctermbg=189 cterm=NONE
highlight PmenuSel guifg=#afafaf guibg=#1f1f2f gui=NONE
                \ ctermfg=15 ctermbg=18 cterm=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=#101010 gui=NONE
                \ ctermfg=248 ctermbg=237 cterm=NONE
highlight PmenuThumb guifg=#0f0f0f guibg=#213656 gui=NONE
                \ ctermfg=250 ctermbg=233 cterm=NONE

" Tabline: "{{{2
highlight TabLine guifg=#9d887c guibg=bg gui=NONE
                \ ctermfg=138 ctermbg=232 cterm=NONE
highlight TabLineFill guifg=#564234 guibg=bg gui=NONE
                \ ctermfg=95 ctermbg=232 cterm=NONE
highlight TabLineSel guifg=#f0f0f0 guibg=#0f0f3f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE


" Tabpanel: "{{{2
highlight TabPanel guifg=#9d887c guibg=bg gui=NONE
                \ ctermfg=138 ctermbg=232 cterm=NONE
highlight TabPanelFill guifg=#564234 guibg=#1f1f2f gui=NONE
                \ ctermfg=137 ctermbg=236 cterm=NONE
highlight TabPanelSel guifg=#f0f0f0 guibg=#0f0f3f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight TabPanelTitle guifg=#ffffff guibg=#00001f gui=NONE
                \ ctermfg=255 ctermbg=233 cterm=NONE


" Cursor "{{{2
highlight ColorColumn guifg=fg guibg=#5f5f8f gui=NONE
                \ ctermfg=250 ctermbg=240 cterm=NONE
highlight CursorColumn guifg=fg guibg=#3f3f3f gui=NONE
                \ ctermfg=249 ctermbg=251 cterm=NONE
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
                \ ctermfg=16 ctermbg=109 cterm=NONE
highlight Cursor guifg=#000000 guibg=#8f8f8f gui=NONE
                \ ctermfg=16 ctermbg=244 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE


"IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af2f3f gui=NONE
                \ ctermfg=fg ctermbg=88 cterm=NONE
endif


" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#1f2f3f gui=NONE
                \ ctermfg=NONE ctermbg=233 cterm=NONE
highlight CursorLineNr guifg=#ff8f5f guibg=#8f3f5f gui=NONE
                \ ctermfg=9 ctermbg=95 cterm=bold
highlight CursorLineFold guifg=#ff5faf guibg=#cfcfff gui=bold
                \ ctermfg=9 ctermbg=189 cterm=bold
highlight CursorLineSign guifg=NONE guibg=#8faf8f gui=bold
                \ ctermfg=242 ctermbg=108 cterm=bold


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



" #- syntax highlighting group -# "{{{1
highlight MatchParen guifg=#2f2f2f guibg=#cf93cd gui=bold,underline
                \ ctermfg=237 ctermbg=140 cterm=bold,underline
highlight comment guifg=#40afff guibg=bg gui=NONE
                \ ctermfg=32 ctermbg=bg cterm=NONE
highlight Constant guifg=#2fafff guibg=bg gui=NONE
                \ ctermfg=37 ctermbg=bg cterm=NONE
highlight Special guifg=#ccfcfc guibg=bg gui=NONE
                \ ctermfg=195 ctermbg=bg cterm=NONE
highlight Identifier guifg=#ff5faf guibg=bg gui=NONE
                \ ctermfg=205 ctermbg=bg cterm=NONE
highlight Statement guifg=#9f5fff guibg=bg gui=NONE
                \ ctermfg=93 ctermbg=bg cterm=NONE
highlight PreProc guifg=#ffcf8f guibg=bg gui=NONE
                \ ctermfg=221 ctermbg=bg cterm=NONE
highlight type guifg=#4fefaf guibg=bg gui=NONE
                \ ctermfg=79 ctermbg=bg cterm=NONE
highlight underlined guifg=#6699ff guibg=bg gui=underline
                \ ctermfg=33 ctermbg=234 cterm=underline
highlight Ignore guifg=#bfbfbf guibg=bg gui=bold
                \ ctermfg=249 ctermbg=bg cterm=bold
highlight Error guifg=#ff2050 guibg=bg gui=NONE
                \ ctermfg=88 ctermbg=bg cterm=NONE
highlight Todo guifg=#cfcfff guibg=#0f0f1f gui=bold,underline
                \ ctermfg=252 ctermbg=16 cterm=bold,underline
highlight string guifg=#f0d8e6 guibg=bg gui=NONE
                \ ctermfg=182 ctermbg=bg cterm=NONE


" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


