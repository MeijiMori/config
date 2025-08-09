" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date
" Guicolorscheme file
"

" #- Vim color file reset -#{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -#{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cccccc guibg=#303030 gui=NONE
                \ ctermfg=15 ctermbg=233 cterm=NONE
highlight SpecialKey guifg=#afffaf guibg=#3f3f3f gui=NONE
                \ ctermfg=15 ctermbg=233 cterm=NONE
highlight NonText guifg=#4ef9c8 guibg=#3f3f3f gui=NONE
                \ ctermfg=48 ctermbg=236 cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#5f7fff guibg=#303030 gui=bold
                \ ctermfg=33 ctermbg=bg cterm=bold


" search "{{{2
highlight IncSearch guifg=#303030 guibg=#bf9fef gui=bold
                \ ctermfg=53 ctermbg=98 cterm=bold,underline
highlight CurSearch guifg=#1f3f1f guibg=#3f8f8f gui=bold,underline
                \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#1f1f5f guibg=#4f88f1 gui=bold,underline
                \ ctermfg=17 ctermbg=81 cterm=bold,underline


"Messsage "{{{2
highlight ErrorMsg guifg=#5f0f0f guibg=#ffafcf gui=NONE
                \ ctermfg=160 ctermbg=0 cterm=underline
highlight MoreMsg guifg=#afc5ff guibg=#3a3b3c gui=underline
                \ ctermfg=77 ctermbg=234 cterm=underline
highlight ModeMsg guifg=#bfd9ff guibg=#3a3b3c gui=underline
                \ ctermfg=123 ctermbg=234 cterm=underline
highlight WarningMsg guifg=#8f8f2f guibg=#dfdfaf gui=underline
                \ ctermfg=9 ctermbg=233 cterm=underline
highlight Question guifg=#6ab3b5 guibg=#303030 gui=NONE
                \ ctermfg=43 ctermbg=234 cterm=underline
highlight MsgArea guifg=#cfcfcf guibg=bg gui=NONE
                \ ctermfg=123 ctermbg=234 cterm=underline
highlight WildMenu guifg=#dfdfdf guibg=#2f3f5f gui=NONE
                \ ctermfg=252 ctermbg=17 cterm=underline


" Linenr "{{{2
highlight LineNr guifg=#c3bcb4 guibg=#353535 gui=NONE
                \ ctermfg=252 ctermbg=233 cterm=NONE
highlight CursorLineNr guifg=#afafff guibg=#353535 gui=underline
                \ ctermfg=0 ctermbg=7 cterm=bold
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE


" statusline "{{{2
highlight StatusLine guifg=#cccccc guibg=#2f2f3f gui=NONE
                \ ctermfg=252 ctermbg=233 cterm=NONE
highlight StatusLineNC guifg=#565234 guibg=#cfafaf gui=NONE
                \ ctermfg=95 ctermbg=180 cterm=NONE
highlight StatusLineTerm guifg=#3f3f8f guibg=#8f8fff gui=NONE
                \ ctermfg=0 ctermbg=10 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
                \ ctermfg=96 ctermbg=183 cterm=NONE

"}}}2
highlight VertSplit guifg=#5f5faf guibg=#5f5faf gui=NONE
                \ ctermfg=27 ctermbg=234 cterm=NONE
highlight Title guifg=#8fcfff guibg=bg gui=bold,underline
                \ ctermfg=41 ctermbg=bg cterm=underline
" visual "{{{2
highlight Visual guifg=#ffeedd guibg=#2f4f8f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guibg=#aaeeee guifg=#3d3d3d gui=underline
                \ ctermfg=17 ctermbg=159 cterm=underline
"}}}2
" fold "{{{2
highlight Folded guifg=#0f0f3f guibg=#cfcfff gui=NONE
                \ ctermfg=27 ctermbg=233 cterm=NONE
highlight FoldColumn guifg=#0f8f0f guibg=#2f2f2f gui=bold
                \ ctermfg=10 ctermbg=233 cterm=bold


" diff "{{{2
highlight DiffAdd guifg=#0f3f1f guibg=#2fcf8f gui=NONE
                \ ctermfg=fg ctermbg=28 cterm=NONE
highlight DiffChange guifg=#3f2f1f guibg=#dfaf5f gui=NONE
                \ ctermfg=fg ctermbg=130 cterm=NONE
highlight DiffDelete guifg=#2f2f22 guibg=#cf2f8f gui=NONE
                \ ctermfg=fg ctermbg=52 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#5faf5f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Added guifg=#5fcf5f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Changed guifg=#afaf5f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Removed guifg=#ff5f8f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
"}}}2
highlight SignColumn guifg=fg guibg=#30303f gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Conceal guifg=fg guibg=#30308f gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE


" popup "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight PopupSelected guifg=#cfcfcf guibg=#0f1fff gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE


" menu "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" quickfix "{{{2
highlight QuickFixLine guifg=#1f3f2f guibg=#3fcfff gui=bold
                \ ctermfg=fg ctermbg=bg cterm=NONE


" toolbar "{{{2
highlight Tooltip guifg=#2f2f2f guibg=#3fafcf gui=bold,underline
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ToolbarButton guifg=#2f2f2f guibg=#3fafcf gui=bold,underline
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ToolbarLine guifg=#2f2f2f guibg=#cfcfff gui=bold,underline
                \ ctermfg=fg ctermbg=bg cterm=NONE


" spell "{{{2
highlight SpellBad guifg=#ffcfcf guibg=bg gui=undercurl
                \ ctermfg=124 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#5063f9 guibg=bg gui=undercurl
                \ ctermfg=27 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#99fcff guibg=bg gui=undercurl
                \ ctermfg=220 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#c0f982 guibg=bg gui=undercurl
                \ ctermfg=41 ctermbg=bg cterm=undercurl

" pmenu "{{{2
highlight Pmenu guifg=#aaaaaa guibg=#2f2f2f gui=NONE
                \ ctermfg=232 ctermbg=253 cterm=NONE
highlight PmenuSel guifg=#cccccc guibg=#415676 gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#f0f0f0 gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#00003f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuKind guifg=#0f0f0f guibg=#efefef gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuKindSel guifg=#ffffff guibg=#0f3f8f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#efefff gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight ComplMatchIns guifg=fg guibg=#efefff gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=#303030 gui=bold
                \ ctermfg=fg ctermbg=234 cterm=bold
highlight PmenuThumb guifg=#415676 guibg=#303030 gui=NONE
                \ ctermfg=fg ctermbg=233 cterm=bold

" tabline "{{{2
highlight TabLine guifg=#000000 guibg=#cfcfff gui=underline
                \ ctermfg=233 ctermbg=250 cterm=underline
highlight TabLineSel guifg=#ffffff guibg=#0f3faf gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#af0f0f guibg=#dfcfff gui=bold,underline
                \ ctermfg=233 ctermbg=250 cterm=underline


" tabpanel "{{{2
highlight TabPanel guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=233 ctermbg=250 cterm=NONE
highlight TabPanelSel guifg=#ffffff guibg=#1f3f9f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#0f0fff guibg=#dfcfff gui=bold
                \ ctermfg=233 ctermbg=250 cterm=NONE


" cursor "{{{2
highlight ColorColumn guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=NONE ctermbg=25 cterm=NONE
highlight CursorLine guifg=NONE guibg=#2f3f5f gui=NONE
                \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight CursorLineFold guifg=#cfcfff guibg=#8f8fff gui=bold
                \ ctermfg=10 ctermbg=233 cterm=bold
highlight CursorLineSign guifg=fg guibg=#3fafaf gui=bold
                \ ctermfg=10 ctermbg=233 cterm=bold
highlight CursorColumn guifg=#0f0f0f guibg=#8f8fff gui=NONE
                \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight lCursor guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=0 ctermbg=29 cterm=NONE
highlight Cursor guifg=#000000 guibg=#2fa58f gui=NONE
                \ ctermfg=0 ctermbg=29 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#ff56c1 gui=NONE
                \ ctermfg=0 ctermbg=125 cterm=NONE
endif



" terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=fg guibg=bg gui=NONE
                  \ ctermfg=fg ctermbg=bg cterm=NONE
  " Terminal color
  let g:terminal_ansi_colors = [
    \ "#cfcfcf", "#af0faf", "#13af0f", "#cfaf00",
    \ "#00afff", "#af3fcf", "#3f9fff", "#ffffff",
    \ "#afafaf", "#af2f3f", "#3fcf1f", "#afbfcf",
    \ "#3f7fcf", "#9f0f5f", "#6fdfdf", "#cfcfff"
    \ ]
endif


" #- syntax highlighting group -#{{{1
highlight MatchParen guifg=#0f0f0f guibg=#ffaf8f gui=bold,underline
                \ ctermfg=232 ctermbg=33 cterm=bold,underline
"highlight comment guifg=#0fafff guibg=bg gui=NONE
"                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight comment guifg=#0f7fff guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Constant guifg=#cf3f8f guibg=bg gui=bold
                \ ctermfg=131 ctermbg=bg cterm=bold
highlight string guifg=#afafff guibg=bg gui=NONE
                \ ctermfg=219 ctermbg=bg cterm=NONE
highlight Character guifg=#ff2f5f guibg=bg gui=NONE
                \ ctermfg=48 ctermbg=bg cterm=NONE
highlight Number guifg=#ff3f8f guibg=bg gui=NONE
                \ ctermfg=48 ctermbg=bg cterm=NONE
highlight Boolean   guifg=#5f5fff guibg=bg gui=NONE
                \ ctermfg=48 ctermbg=bg cterm=NONE
highlight Float     guifg=#8fffcf guibg=bg gui=NONE
                \ ctermfg=48 ctermbg=bg cterm=NONE
highlight Identifier guifg=#ff5f8f guibg=#303030 gui=bold
                \ ctermfg=33 ctermbg=bg cterm=bold
highlight Function  guifg=#0f8fff guibg=bg gui=bold
                \ ctermfg=201 ctermbg=bg cterm=bold
highlight Statement guifg=#85baff guibg=#303030 gui=bold
                \ ctermfg=33 ctermbg=bg cterm=bold
highlight Conditional guifg=#ff5f8f guibg=bg gui=bold
                \ ctermfg=49 ctermbg=bg cterm=bold
highlight Repeat guifg=#8f3fff guibg=bg gui=bold
                \ ctermfg=49 ctermbg=bg cterm=bold
highlight Label guifg=#ff2fff guibg=bg gui=bold
                \ ctermfg=49 ctermbg=bg cterm=bold
highlight Operator guifg=#cf4fcf guibg=bg gui=bold
                \ ctermfg=49 ctermbg=bg cterm=bold
highlight Keyword  guifg=#ff2f5f guibg=bg gui=bold
                \ ctermfg=49 ctermbg=bg cterm=bold
highlight Exception   guifg=#2faf3f guibg=bg gui=bold
                \ ctermfg=49 ctermbg=bg cterm=bold
highlight PreProc guifg=#8fdfcf guibg=#303030 gui=bold
                \ ctermfg=80 ctermbg=bg cterm=bold
highlight Include  guifg=#ff5f0f guibg=bg gui=bold
                \ ctermfg=201 ctermbg=bg cterm=bold
highlight Define   guifg=#3fcfff guibg=bg gui=bold
                \ ctermfg=201 ctermbg=bg cterm=bold
highlight Macro    guifg=#3fcfaf guibg=bg gui=bold
                \ ctermfg=201 ctermbg=bg cterm=bold
highlight PreCondit guifg=#1f8f3f guibg=bg gui=bold
                \ ctermfg=201 ctermbg=bg cterm=bold
highlight type guifg=#61cf8f guibg=#303030 gui=bold
                \ ctermfg=41 ctermbg=bg cterm=bold
highlight StorageClass guifg=#af5fff guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight Structure guifg=#af3fff guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight Typedef guifg=#0f7fff guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight Special guifg=#af8f0f guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight Specialchar guifg=#3f5fff guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight Tag guifg=#ff5f5f guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight Delimiter guifg=#af8fff guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight SpecialCommnet guifg=#0f7fbf guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight Debug guifg=#ffaf8f guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight underlined guifg=#6699cc guibg=bg gui=underline
                \ ctermfg=12 ctermbg=bg cterm=underline
highlight Ignore guifg=#a3ffa2 guibg=bg gui=bold
                \ ctermfg=155 ctermbg=bg cterm=bold
highlight Error guifg=#f84865 guibg=bg gui=NONE
                \ ctermfg=196 ctermbg=bg cterm=NONE
highlight Todo guifg=#50a0ff guibg=bg gui=bold,underline
                \ ctermfg=33 ctermbg=233 cterm=bold,underline

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim

