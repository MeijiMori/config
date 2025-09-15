" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file
" This colorscheme file is refered to my original colorscheme file that oeNmP.vim
" more darker and my music player's color that foobar2000

" #- Vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#16152d gui=NONE
                \ ctermfg=7 ctermbg=16 cterm=NONE
highlight NonText guifg=#3f3ff8 guibg=NONE gui=NONE
                \ ctermfg=27 ctermbg=NONE cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#2f5faf guibg=bg gui=bold
                \ ctermfg=33 ctermbg=bg cterm=bold
" Search: "{{{2
highlight IncSearch guifg=#5f0f1f guibg=#8f2f5f gui=underline
                \ ctermfg=22 ctermbg=42 cterm=underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#5f5fff guibg=#0f1f3f gui=underline
                \ ctermfg=17 ctermbg=33 cterm=underline


" Message: "{{{2
highlight MoreMsg guifg=#0f3f1f guibg=#5fbf8f gui=underline
                \ ctermfg=22 ctermbg=43 cterm=underline
highlight ModeMsg guifg=#0f1f3f guibg=#3f5faf gui=underline
                \ ctermfg=17 ctermbg=39 cterm=underline
highlight MsgArea guifg=#cfcfcf guibg=#0f0f2f gui=NONE
                \ ctermfg=242 ctermbg=252 cterm=NONE
highlight ErrorMsg guifg=#af2f6f guibg=bg gui=underline
                \ ctermfg=126 ctermbg=bg cterm=underline
highlight WarningMsg guifg=#ff4765 guibg=bg gui=underline
                \ ctermfg=165 ctermbg=bg cterm=underline
highlight Question guifg=#0f5f2f guibg=#8fcf8f gui=underline
                \ ctermfg=22 ctermbg=42 cterm=underline
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#c0afcf guibg=#0f1f2f gui=NONE
                \ ctermfg=250 ctermbg=17 cterm=NONE


" LineNr: "{{{2
highlight LineNr  guifg=#3faf7f guibg=NONE gui=NONE
                \ ctermfg=41 ctermbg=bg cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#0f102f gui=NONE
                \ ctermfg=248 ctermbg=232 cterm=NONE
highlight StatusLineNC guifg=#0f0f3f guibg=#2f5faf gui=NONE
                \ ctermfg=238 ctermbg=249 cterm=NONE
highlight StatusLineTerm guifg=#000f2f guibg=#cfccff gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight StatusLineTermNc guifg=#002f2f guibg=#8fafcf gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
"}}}2
highlight VertSplit guifg=bg guibg=#0f0f1f gui=NONE
                \ ctermfg=bg ctermbg=16 cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#ff5f2f guibg=NONE gui=underline
                \ ctermfg=166 ctermbg=NONE cterm=bold,underline
" Visual: "{{{2
highlight Visual guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                \ ctermfg=252 ctermbg=19 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f3f3f gui=underline
                \ ctermfg=253 ctermbg=26 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#cfcfcf guibg=#1f1f35 gui=NONE
                \ ctermfg=fg ctermbg=17 cterm=NONE
highlight FoldColumn guifg=#2f2f8f guibg=bg gui=bold
                \ ctermfg=27 ctermbg=bg cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=#000000 guibg=#5fffaf gui=NONE
                \ ctermfg=fg ctermbg=35 cterm=NONE
highlight DiffChange guifg=#0f0f0f guibg=#ffcfaf gui=NONE
                \ ctermfg=fg ctermbg=173 cterm=NONE
highlight DiffDelete guifg=#0f0f0f guibg=#df4f9f gui=bold
                \ ctermfg=fg ctermbg=198 cterm=NONE
highlight DiffText guifg=#cfcfcf guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
"}}}2
highlight SignColumn guifg=#ff2f5f guibg=#100f1f gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight SpecialKey guifg=#3f2faf guibg=bg gui=NONE
                \ ctermfg=57 ctermbg=bg cterm=NONE


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
highlight SpellBad guifg=#ff3f5f guibg=bg gui=undercurl
                \ ctermfg=199 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#1f2fff guibg=bg gui=undercurl
                \ ctermfg=39 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#3fff7f guibg=bg gui=undercurl
                \ ctermfg=49 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#efdf3f guibg=bg gui=undercurl
                \ ctermfg=11 ctermbg=bg cterm=undercurl


" Pmenu: "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#c0c0cf gui=NONE
                \ ctermfg=236 ctermbg=252 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                \ ctermfg=251 ctermbg=17 cterm=NONE
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
highlight PmenuSbar guifg=#cfcfcf guibg=#1a001f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuThumb guifg=#0f0f0f guibg=#afa21f gui=bold
                \ ctermfg=fg ctermbg=136 cterm=NONE

" Tabline: "{{{2
highlight TabLine guifg=#af8faf guibg=#0f0f1f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight TabLineSel guifg=#cfcfcf guibg=#21253f gui=NONE
                \ ctermfg=fg ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#2f5fff guibg=#0f0f1f gui=bold
                \ ctermfg=19 ctermbg=16 cterm=bold


" Tabpanel: "{{{2
highlight TabPanel guifg=#0f0f0f guibg=#efdfff gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight TabPanelSel guifg=#ffffff guibg=#0f2f8f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=underline
highlight TabPanelFill guifg=#2f0f8f guibg=#afcfef gui=NONE
                \ ctermfg=128 ctermbg=0 cterm=NONE
highlight TabPanelTitle guifg=#000000 guibg=#efefff gui=NONE
                \ ctermfg=232 ctermbg=244 cterm=NONE



" Cursor: "{{{2
highlight CursorColumn guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ColorColumn guifg=fg guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=0 cterm=NONE
highlight Cursor guifg=#000000 guibg=#0f7f5f gui=NONE
                \ ctermfg=NONE ctermbg=23 cterm=NONE
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
                \ ctermfg=12 ctermbg=0 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE


" Cursor color for IME status "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#7f2f4f gui=NONE
                \ ctermfg=NONE ctermbg=9 cterm=NONE
endif



" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#1f1f3f gui=NONE
                \ ctermfg=NONE ctermbg=20 cterm=NONE
highlight CursorLineNr  guifg=#3faf7f guibg=NONE gui=bold
                \ ctermfg=41 ctermbg=bg cterm=bold
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
    \ "#0c0c0c", "#850f1f", "#13710e", "#819c00",
    \ "#00378a", "#881798", "#3a96dd", "#8f8f8f",
    \ "#767676", "#872836", "#16960c", "#6a7f84",
    \ "#3b789f", "#94005e", "#61d6d6", "#989898"
    \ ]
endif




" #- syntax highlighting group -# "{{{1
highlight MatchParen guifg=#000000 guibg=#0f2f5f gui=bold,underline
                \ ctermfg=7 ctermbg=19 cterm=bold,underline
highlight comment guifg=#2f5f9f guibg=bg gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Constant guifg=#2faf7b guibg=bg gui=NONE
                \ ctermfg=41 ctermbg=NONE cterm=NONE
highlight Special guifg=#deffed guibg=bg gui=NONE
                \ ctermfg=6 ctermbg=bg cterm=NONE
highlight Identifier guifg=#302faf guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Statement guifg=#3faf5f guibg=bg gui=NONE
                \ ctermfg=48 ctermbg=bg cterm=NONE
highlight PreProc guifg=#af2fff guibg=bg gui=NONE
                \ ctermfg=207 ctermbg=bg cterm=NONE
highlight type guifg=#1faf8f guibg=bg gui=NONE
                \ ctermfg=35 ctermbg=bg cterm=NONE
highlight underlined guifg=#9f7fff guibg=bg gui=underline
                \ ctermfg=135 ctermbg=NONE cterm=underline
highlight Ignore guifg=#047f75 gui=NONE gui=bold
                \ ctermfg=29 ctermbg=bg cterm=bold
highlight Error guifg=#ff2faf guibg=bg gui=NONE
                \ ctermfg=197 ctermbg=bg cterm=NONE
highlight Todo guifg=#3f3f3f guibg=#bfbfbf gui=bold,underline
                \ ctermfg=244 ctermbg=252 cterm=bold,underline
highlight string guifg=#ffcf8f guibg=bg gui=NONE
                \ ctermfg=11 ctermbg=bg cterm=NONE

" #- hl-User -# "{{{1
highlight User1 guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                \ ctermfg=252 ctermbg=18 cterm=NONE
highlight User2 guifg=#cfcfcf guibg=#0f0f2f gui=NONE
                \ ctermfg=251 ctermbg=17 cterm=NONE
highlight User3 guifg=#cfcfcf guibg=#00001f gui=NONE
                \ ctermfg=252 ctermbg=16 cterm=NONE
highlight User4 guifg=#cfcfcf guibg=#0f0f2f gui=NONE
                \ ctermfg=252 ctermbg=0 cterm=NONE
highlight User5 guifg=#cfcfcf guibg=#1f0f5f gui=NONE
                \ ctermfg=252 ctermbg=62 cterm=NONE
highlight User6 guifg=#cfcfcf guibg=#0f3faf gui=NONE
                \ ctermfg=252 ctermbg=25 cterm=NONE
highlight User7 guifg=#cfcfcf guibg=#0f2f5f gui=NONE
                \ ctermfg=253 ctermbg=24 cterm=NONE
highlight User8 guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                \ ctermfg=250 ctermbg=17 cterm=NONE
highlight User9 guifg=#cfcfcf guibg=#1f1f3f gui=NONE
                \ ctermfg=252 ctermbg=20 cterm=NONE



" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
