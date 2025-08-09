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
let g:colors_name = expand('<sfile>:t:r')

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#1f151a gui=NONE
      \ ctermfg=255 ctermbg=52 cterm=NONE
highlight NonText guifg=#ff000f guibg=bg gui=NONE
      \ ctermfg=21 ctermbg=bg cterm=NONE
highlight EndOfBuffer guifg=#ff3f3f guibg=bg gui=bold
      \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#8f3fff guibg=bg gui=bold
      \ ctermfg=21 ctermbg=bg cterm=bold


" Search: "{{{2
highlight IncSearch guifg=#5f0f2f guibg=#ff5f8f gui=bold
      \ ctermfg=89 ctermbg=128 cterm=bold,underline
highlight CurSearch guifg=#1f0f5f guibg=#5f8fff gui=bold,underline
      \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#8f2f8f guibg=#ef3fef gui=bold
      \ ctermfg=17 ctermbg=37 cterm=bold,underline


" Message: "{{{2
highlight ErrorMsg guifg=#5f1f1f guibg=#ff8fcf gui=NONE
      \ ctermfg=124 ctermbg=bg cterm=NONE
highlight MoreMsg guifg=#1f3f2f guibg=#cfffaf gui=NONE
      \ ctermfg=34 ctermbg=bg cterm=NONE
highlight ModeMsg guifg=#0f0f3f guibg=#cfcfff gui=underline
      \ ctermfg=21 ctermbg=bg cterm=NONE
highlight WarningMsg guifg=#5f5f1f guibg=#efdfaf gui=NONE
      \ ctermfg=1 ctermbg=bg cterm=NONE
highlight Question guifg=#0f5f1f guibg=#afffaf gui=NONE
      \ ctermfg=35 ctermbg=bg cterm=NONE
highlight MsgArea guifg=#cfcfcf guibg=#1f151f gui=NONE
      \ ctermfg=123 ctermbg=234 cterm=underline
highlight WildMenu guifg=#5f0f0f guibg=#ff0faf gui=bold,underline
      \ ctermfg=17 ctermbg=195 cterm=NONE


" Linenr: "{{{2
highlight LineNr guifg=#ff0f3f guibg=NONE gui=NONE
      \ ctermfg=160 ctermbg=bg cterm=NONE
highlight CursorLineNr guifg=#af0f3f guibg=#ff1f8f gui=NONE
      \ ctermfg=181 ctermbg=232 cterm=bold
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
      \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
      \ ctermfg=164 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#3f0f1f guibg=#cf2f5f gui=NONE
      \ ctermfg=231 ctermbg=233 cterm=NONE
highlight StatusLineNC guifg=#5f3f3f guibg=#bfafaf gui=NONE
      \ ctermfg=95 ctermbg=181 cterm=NONE
highlight StatusLineTerm guifg=#005f2f guibg=#8fcf8f gui=NONE
      \ ctermfg=11 ctermbg=bg cterm=NONE
highlight StatusLineTermNc guifg=#5f0f2f guibg=#cf8f8f gui=NONE
      \ ctermfg=11 ctermbg=bg cterm=NONE
"}}}2
highlight VertSplit guifg=#ff1f5f guibg=bg gui=bold
      \ ctermfg=90 ctermbg=bg cterm=bold
highlight Title guifg=#ef8f8f guibg=bg gui=bold,underline
      \ ctermfg=88 ctermbg=bg cterm=NONE
" Visual: "{{{2
highlight Visual guifg=#ffffff guibg=#1f3f7f gui=NONE
      \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f2f8f gui=underline,bold
      \ ctermfg=15 ctermbg=52 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#3f0f2f guibg=#cfafff gui=NONE
      \ ctermfg=250 ctermbg=233 cterm=NONE
highlight FoldColumn guifg=#a0a0a0 guibg=#1f101a gui=bold
      \ ctermfg=29 ctermbg=233 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=#2f5f1f guibg=#2fcfaf gui=bold
      \ ctermfg=NONE ctermbg=22 cterm=bold
highlight DiffChange guifg=#5f5f2f guibg=#dfdf2f gui=bold
      \ ctermfg=NONE ctermbg=130 cterm=NONE
highlight DiffDelete guifg=#5f0f2f guibg=#ff5f8f gui=bold
      \ ctermfg=NONE ctermbg=124 cterm=NONE
highlight DiffText guifg=#cfcfcf guibg=bg gui=NONE
      \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight DiffTextAdd guifg=#2fcf5f guibg=bg gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Added guifg=#5fcf5f guibg=bg gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Changed guifg=#afaf5f guibg=bg gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE

" }}}2
highlight SignColumn guifg=#cfcfcf guibg=#5f3f3f gui=NONE
      \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight Conceal guifg=fg guibg=#5f2faf gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight SpecialKey guifg=#af3fff guibg=#1f1f1f  gui=NONE
      \ ctermfg=21 ctermbg=bg cterm=NONE
" popup "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE


" menu "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=fg ctermbg=bg cterm=NONE


" quickfix "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#cfafff gui=bold
      \ ctermfg=fg ctermbg=bg cterm=NONE


" toolbar "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efcfff gui=bold,underline
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ToolbarButton guifg=#cfcfcf guibg=#0f0f0f gui=bold,underline
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ToolbarLine guifg=#0f0f0f guibg=#afafff gui=bold,underline
      \ ctermfg=fg ctermbg=bg cterm=NONE


" spell "{{{2
highlight SpellBad guifg=#7f2f8f guibg=bg gui=NONE
      \ ctermfg=125 ctermbg=NONE cterm=NONE
highlight SpellCap guifg=#2f3f5f guibg=bg gui=NONE
      \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight SpellRare guifg=#2f8f4f guibg=bg gui=NONE
      \ ctermfg=29 ctermbg=NONE cterm=NONE
highlight SpellLocal guifg=#8f7f2f guibg=bg gui=NONE
      \ ctermfg=154 ctermbg=NONE cterm=NONE

" pmenu "{{{2
highlight Pmenu guifg=#1f1f1f guibg=#bfbfff gui=NONE
      \ ctermfg=0 ctermbg=252 cterm=NONE
highlight PmenuSel guifg=#bfbfbf guibg=#1f0f30 gui=NONE
      \ ctermfg=15 ctermbg=17 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
      \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
      \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuKind guifg=#0f0f0f guibg=#dfcfff gui=NONE
      \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuKindSel guifg=#ffffff guibg=#0f3f8f gui=NONE
      \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfefff gui=NONE
      \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
      \ ctermfg=fg ctermbg=16 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
      \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuSbar guifg=#cccccc guibg=#ff1f8f gui=NONE
      \ ctermfg=fg ctermbg=234 cterm=NONE
highlight PmenuThumb guifg=fg guibg=#000f8f gui=NONE
      \ ctermfg=fg ctermbg=232 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#2f2f2f guibg=#bbbbbb gui=NONE
      \ ctermfg=232 ctermbg=253 cterm=NONE
highlight TabLineSel guifg=#ffffff guibg=#1f3f8f gui=NONE
      \ ctermfg=252 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#af3fff guibg=#bfbfbf gui=NONE
      \ ctermfg=236 ctermbg=253 cterm=NONE

" tabpanel "{{{2
highlight TabPanel guifg=#2f2f2f guibg=#dfcfff gui=NONE
      \ ctermfg=232 ctermbg=253 cterm=NONE
highlight TabPanelSel guifg=#ffffff guibg=#0f3faf gui=NONE
      \ ctermfg=252 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#3f3f3f guibg=#ffdfff gui=NONE
      \ ctermfg=236 ctermbg=253 cterm=NONE

" cursor "{{{2
highlight ColorColumn guifg=fg guibg=#afafff gui=NONE
      \ ctermfg=NONE ctermbg=53 cterm=NONE
highlight CursorLine guifg=NONE guibg=#3f0f0f gui=NONE
      \ ctermfg=NONE ctermbg=53 cterm=NONE
highlight CursorLineFold guifg=#cfcfff guibg=#8f8fff gui=bold
      \ ctermfg=10 ctermbg=233 cterm=bold
highlight CursorLineSign guifg=fg guibg=#3fafaf gui=bold
      \ ctermfg=10 ctermbg=233 cterm=bold
highlight CursorColumn guifg=NONE guibg=#3f0f0f gui=NONE
      \ ctermfg=NONE ctermbg=233 cterm=NONE
highlight lCursor guifg=#0f0f0f guibg=#ff8faf gui=NONE
      \ ctermfg=232 ctermbg=88 cterm=NONE
highlight Cursor guifg=#0f0f0f guibg=#ff3faf gui=NONE
      \ ctermfg=232 ctermbg=138 cterm=NONE
"IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#bfbfbf guibg=#5f0f2f gui=NONE
        \ ctermfg=232 ctermbg=88 cterm=NONE
endif



" terminal: "{{{2
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
      \ ctermfg=17 ctermbg=25 cterm=bold,underline
highlight comment guifg=#1f8fff guibg=bg gui=NONE
      \ ctermfg=27 ctermbg=bg cterm=NONE
highlight string guifg=#afafff guibg=bg gui=NONE
      \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Character guifg=#8fffff guibg=bg gui=NONE
      \ ctermfg=48 ctermbg=bg cterm=NONE
highlight Number guifg=#ff3faf guibg=bg gui=NONE
      \ ctermfg=48 ctermbg=bg cterm=NONE
highlight Boolean   guifg=#2f8fff guibg=bg gui=NONE
      \ ctermfg=48 ctermbg=bg cterm=NONE
highlight Float     guifg=#afcfff guibg=bg gui=NONE
      \ ctermfg=48 ctermbg=bg cterm=NONE
highlight Identifier guifg=#ffaf5f guibg=bg gui=NONE
      \ ctermfg=220 ctermbg=bg cterm=NONE
highlight Function  guifg=#0f8fff guibg=bg gui=bold
      \ ctermfg=201 ctermbg=bg cterm=bold
highlight Statement guifg=#2fdf7f guibg=bg gui=bold
      \ ctermfg=35 ctermbg=bg cterm=NONE
highlight Conditional guifg=#ff5f8f guibg=bg gui=bold
      \ ctermfg=49 ctermbg=bg cterm=bold
highlight Repeat guifg=#8f3fff guibg=bg gui=bold
      \ ctermfg=49 ctermbg=bg cterm=bold
highlight Label guifg=#ff2fff guibg=bg gui=bold
      \ ctermfg=49 ctermbg=bg cterm=bold
highlight Operator guifg=#cf4fcf guibg=bg gui=bold
      \ ctermfg=49 ctermbg=bg cterm=bold
highlight Keyword  guifg=#ef0f2f guibg=bg gui=bold
      \ ctermfg=49 ctermbg=bg cterm=bold
highlight Exception   guifg=#2faf3f guibg=bg gui=bold
      \ ctermfg=49 ctermbg=bg cterm=bold
highlight Constant guifg=#cf2fff guibg=bg gui=bold
      \ ctermfg=129 ctermbg=bg cterm=NONE
highlight PreProc guifg=#cf2fff guibg=bg gui=bold
      \ ctermfg=200 ctermbg=bg cterm=NONE
highlight Include  guifg=#ff5f0f guibg=bg gui=bold
      \ ctermfg=201 ctermbg=bg cterm=bold
highlight Define   guifg=#3fcfff guibg=bg gui=bold
      \ ctermfg=201 ctermbg=bg cterm=bold
highlight Macro    guifg=#3fcfaf guibg=bg gui=bold
      \ ctermfg=201 ctermbg=bg cterm=bold
highlight PreCondit guifg=#1fcf3f guibg=bg gui=bold
      \ ctermfg=201 ctermbg=bg cterm=bold
highlight type guifg=#3fcf9f guibg=bg gui=bold
      \ ctermfg=36 ctermbg=bg cterm=bold
highlight StorageClass guifg=#af5fff guibg=bg gui=bold
      \ ctermfg=42 ctermbg=bg cterm=bold
highlight Structure guifg=#af3fff guibg=bg gui=bold
      \ ctermfg=42 ctermbg=bg cterm=bold
highlight Typedef guifg=#0f7fff guibg=bg gui=bold
      \ ctermfg=42 ctermbg=bg cterm=bold
highlight Special guifg=#afdfff guibg=bg gui=NONE
      \ ctermfg=87 ctermbg=bg cterm=NONE
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
highlight underlined guifg=#2f5fff guibg=bg gui=underline
      \ ctermfg=27 ctermbg=bg cterm=underline
highlight Ignore guifg=#047f75 guibg=NONE gui=bold
      \ ctermfg=29 ctermbg=bg cterm=bold
highlight Error guifg=#ff2f2f guibg=bg gui=NONE
      \ ctermfg=161 ctermbg=bg cterm=NONE
highlight Todo guifg=#5f2fff guibg=#1f0f2f gui=bold
      \ ctermfg=33 ctermbg=235 cterm=bold

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
