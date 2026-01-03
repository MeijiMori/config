" #- vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/

" #- reset -# "{{{1
if version > 580
  set background=dark
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -# "{{{1
" name: UxIm
let g:colors_name = expand('<sfile>:t:r')

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#1f1f20 gui=NONE
                \ ctermfg=7 ctermbg=233 cterm=NONE
highlight NonText guifg=#4c58ce guibg=#101a2f gui=NONE
                \ ctermfg=25 ctermbg=bg cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#2b9aa4 guibg=bg gui=NONE
                \ ctermfg=35 ctermbg=bg cterm=bold


" Search: "{{{2
highlight IncSearch guifg=bg guibg=#caa1af gui=bold
                \ ctermfg=52 ctermbg=197 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=58 ctermbg=220 cterm=bold,underline
highlight Search guifg=#000000 guibg=#6f7fff gui=bold
                \ ctermfg=17 ctermbg=39 cterm=bold,underline


" Message: {{{2
highlight MoreMsg guifg=#66af51 guibg=bg gui=NONE
                \ ctermfg=2 ctermbg=bg cterm=NONE
highlight ModeMsg guifg=#fffeee guibg=bg gui=NONE
                \ ctermfg=253 ctermbg=bg cterm=NONE
highlight MsgArea guifg=#cfcfcf guibg=#0f0f2f gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#d42f79 guibg=bg gui=NONE
                \ ctermfg=197 ctermbg=bg cterm=NONE
highlight WarningMsg guifg=#79a2f6 guibg=bg gui=NONE
                \ ctermfg=69 ctermbg=bg cterm=NONE
highlight Question guifg=#7bdccb guibg=NONE gui=NONE
                \ ctermfg=87 ctermbg=bg cterm=NONE
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#57a496 guibg=#20203f gui=NONE
                \ ctermfg=50 ctermbg=235 cterm=NONE


" LineNr: "{{{2
highlight LineNr guifg=#75d99d guibg=NONE gui=NONE
                \ ctermfg=35 ctermbg=bg cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#0f0f1f gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
highlight StatusLineNC guifg=#565234 guibg=#c4b2ab gui=NONE
                \ ctermfg=58 ctermbg=145 cterm=NONE
highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
                \ ctermfg=255 ctermbg=234 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
                \ ctermfg=58 ctermbg=146 cterm=NONE
" }}}2


highlight VertSplit guifg=#1f1f2f guibg=#0f0f0f gui=NONE
                \ ctermfg=233 ctermbg=232 cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#4cdc75 guibg=bg gui=bold,underline
                \ ctermfg=41 ctermbg=bg cterm=bold,underline


" Visual: "{{{2
highlight Visual guifg=#cccccc guibg=#1f2a40 gui=NONE
                \ ctermfg=255 ctermbg=19 cterm=NONE
highlight VisualNOS guifg=#ffffff guibg=#2f3f8f gui=underline,bold
                \ ctermfg=255 ctermbg=27 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#35afa1 guibg=#10101f gui=NONE
                \ ctermfg=35 ctermbg=232 cterm=NONE
highlight FoldColumn guifg=#3bcfac guibg=#13121f gui=bold
                \ ctermfg=36 ctermbg=232 cterm=bold



" Diff: "{{{2
highlight DiffAdd guifg=#aacbde guibg=bg gui=bold
                \ ctermfg=22 ctermbg=155 cterm=NONE
highlight DiffChange guifg=#998dbf guibg=#20324f gui=NONE
                \ ctermfg=58 ctermbg=220 cterm=NONE
highlight DiffDelete guifg=#a62c74 guibg=bg gui=bold
                \ ctermfg=52 ctermbg=213 cterm=NONE
highlight DiffText guifg=#c9cbce guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
                \ ctermfg=71 ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
                \ ctermfg=220 ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
                \ ctermfg=197 ctermbg=bg cterm=NONE
" }}}2


highlight SignColumn guifg=#a65774 guibg=#0f151f gui=NONE
                \ ctermfg=15 ctermbg=234 cterm=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
                \ ctermfg=fg ctermbg=1 cterm=NONE
highlight SpecialKey guifg=#734cce guibg=bg gui=NONE
                \ ctermfg=12 ctermbg=bg cterm=NONE


" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=16 ctermbg=189 cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=16 ctermbg=189 cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=15 ctermbg=19 cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=16 ctermbg=73 cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#cfafff gui=bold
      \ ctermfg=16 ctermbg=219 cterm=bold


" Toolbar: "{{{2
highlight ToolbarButton guifg=#3f1f8f guibg=#afafff gui=NONE
          \ ctermfg=239 ctermbg=147 cterm=NONE
highlight ToolbarLine guifg=#5f0f0f guibg=#df3fcf gui=NONE
          \ ctermfg=52 ctermbg=177 cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=237 ctermbg=250 cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=17 ctermbg=75 cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#795099 guibg=bg gui=undercurl
                \ ctermfg=57 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#506399 guibg=bg gui=undercurl
                \ ctermfg=27 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#509982 guibg=bg gui=undercurl
                \ ctermfg=42 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#998c50 guibg=bg gui=undercurl
                \ ctermfg=222 ctermbg=bg cterm=undercurl


" Pmenu: "{{{2
highlight pmenu guifg=#cfcfcf guibg=#0f0f1f gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
highlight PmenuKind guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=15 ctermbg=232 cterm=NONE
highlight PmenuKindSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=15 ctermbg=232 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfefff gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
highlight PmenuSel guifg=#d2d2d2 guibg=#21365f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=#1f1f3f gui=NONE
                \ ctermfg=7 ctermbg=234 cterm=NONE
highlight PmenuThumb guifg=#0f0f0f guibg=#21365f gui=NONE
                \ ctermfg=16 ctermbg=17 cterm=NONE

" Tabline: "{{{2
highlight TabLine guifg=#858585 guibg=bg gui=underline
                \ ctermfg=246 ctermbg=234 cterm=underline
highlight TabLineFill guifg=#858585 guibg=bg gui=underline
                \ ctermfg=246 ctermbg=234 cterm=underline
highlight TabLineSel guifg=#cfcfcf guibg=#2f305f gui=underline
                \ ctermfg=255 ctermbg=20 cterm=underline


" Tabpanel: "{{{2
highlight TabPanel guifg=#858585 guibg=bg gui=NONE
                \ ctermfg=246 ctermbg=234 cterm=NONE
highlight TabPanelFill guifg=#858585 guibg=bg gui=NONE
                \ ctermfg=246 ctermbg=234 cterm=NONE
highlight TabPanelSel guifg=#cfcfcf guibg=#2f305f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabPanelTitle guifg=#000000 guibg=#efefff gui=NONE
                \ ctermfg=232 ctermbg=253 cterm=NONE


" Cursor: "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
                \ ctermfg=NONE ctermbg=189 cterm=NONE
highlight CursorColumn guifg=NONE guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=232 cterm=NONE
highlight lCursor guifg=#000000 guibg=#6c83a6 gui=NONE
                \ ctermfg=0 ctermbg=110 cterm=NONE
highlight Cursor guifg=#000000 guibg=#afafaf gui=NONE
                \ ctermfg=0 ctermbg=248 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE


" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#c483a6 gui=NONE
                \ ctermfg=0 ctermbg=197 cterm=NONE
endif


" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#1f2530 gui=NONE
                \ ctermfg=NONE ctermbg=234 cterm=NONE
highlight CursorLineNr guifg=#75d99d guibg=NONE gui=NONE
                \ ctermfg=195 ctermbg=25 cterm=bold
highlight CursorLineFold guifg=NONE guibg=#cfcfff gui=bold
                \ ctermfg=NONE ctermbg=253 cterm=bold
highlight CursorLineSign guifg=NONE guibg=#8faf8f gui=bold
                \ ctermfg=255 ctermbg=150 cterm=bold

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


" #- syntax highlighting group -#{{{1
highlight MatchParen guifg=#000000 guibg=#965a81 gui=NONE
                \ ctermfg=52 ctermbg=199 cterm=bold,underline
highlight comment guifg=#6588e1 guibg=bg gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Constant guifg=#7498ff guibg=bg gui=NONE
                \ ctermfg=105 ctermbg=bg cterm=NONE
highlight Special guifg=#deffed guibg=bg gui=NONE
                \ ctermfg=252 ctermbg=bg cterm=NONE
highlight Identifier guifg=#766fff guibg=bg gui=NONE
                \ ctermfg=12 ctermbg=bg cterm=NONE
highlight Statement guifg=#cf7ff6 guibg=bg gui=NONE
                \ ctermfg=177 ctermbg=bg cterm=NONE
highlight PreProc guifg=#fdacfc guibg=bg gui=NONE
                \ ctermfg=213 ctermbg=bg cterm=NONE
highlight type guifg=#7ab191 guibg=bg gui=NONE
                \ ctermfg=71 ctermbg=bg cterm=NONE
highlight underlined guifg=#8abbd5 guibg=#1f363c gui=underline
                \ ctermfg=51 ctermbg=238 cterm=underline
highlight Ignore guifg=#c35fa1 guibg=bg gui=NONE
                \ ctermfg=13 ctermbg=bg cterm=NONE
highlight Error guifg=#f34d70 guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
highlight Todo guifg=#fe5eef guibg=#2f203f gui=bold,underline
                \ ctermfg=13 ctermbg=232 cterm=bold,underline
highlight string guifg=#ed4949 guibg=bg gui=NONE
                \ ctermfg=196 ctermbg=bg cterm=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
