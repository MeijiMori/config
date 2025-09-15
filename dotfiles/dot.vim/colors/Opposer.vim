" #- Vim colorscheme file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" !date
" Guicolorscheme file
" background gray

" #- color file reset -# "{{{1
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- highlighting colorscheme -# "{{{1
highlight Normal guifg=#000000 guibg=#cfcfcf gui=NONE
                \ ctermfg=0 ctermbg=247 cterm=NONE
highlight NonText guifg=#1f3faf guibg=bg gui=bold
                \ ctermfg=18 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#1f7f2f guibg=bg gui=bold
                \ ctermfg=22 ctermbg=bg cterm=bold


" Search: "{{{2
highlight IncSearch guifg=#4f0f1f guibg=#af5f7f gui=bold,underline
                \ ctermfg=52 ctermbg=197 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#2f3f5f guibg=#a0aff6 gui=bold,underline
                \ ctermfg=17 ctermbg=27 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#0f4f2f guibg=#afcfaf gui=underline
                \ ctermfg=22 ctermbg=120 cterm=underline
highlight ModeMsg guifg=#0f2f4f guibg=#afafcf gui=underline
                \ ctermfg=17 ctermbg=26 cterm=underline
highlight MsgArea guifg=fg guibg=bg gui=NONE
                \ ctermfg=242 ctermbg=252 cterm=NONE
highlight ErrorMsg guifg=#af0f3f guibg=#cf8faf gui=underline
                \ ctermfg=52 ctermbg=206 cterm=underline
highlight WarningMsg guifg=#721237 guibg=#af5f7f gui=underline
                \ ctermfg=52 ctermbg=200 cterm=underline
highlight Question guifg=#0f4f4f guibg=#afcfcf gui=underline
                \ ctermfg=17 ctermbg=123 cterm=underline
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#0f3f5f guibg=#dfdfff gui=NONE
                \ ctermfg=234 ctermbg=252 cterm=underline


" LineNr: "{{{2
highlight LineNr gui=NONE guifg=#b85f40 guibg=NONE
                \ ctermfg=166 ctermbg=bg cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#ffffff guibg=#2f2f5f gui=NONE
                \ ctermfg=15 ctermbg=232 cterm=NONE
highlight StatusLineNC guifg=#0f0f0f guibg=#dfdfdf gui=NONE
                \ ctermfg=0 ctermbg=250 cterm=NONE
highlight StatusLineTerm guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=15 ctermbg=232 cterm=NONE
highlight StatusLineTermNC guifg=#afafaf guibg=#1f1f2f gui=NONE
                \ ctermfg=0 ctermbg=250 cterm=NONE
" }}}2


highlight VertSplit guifg=#999999 guibg=bg gui=NONE
                \ ctermfg=146 ctermbg=250 cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#5f6f5f guibg=bg gui=NONE
                \ ctermfg=245 ctermbg=bg cterm=NONE


" Visual: "{{{2
highlight Visual guifg=#ffffff guibg=#0f2f7f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#2a3e9f gui=underline,bold
                \ ctermfg=255 ctermbg=25 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#000000 guibg=#9f9f9f gui=NONE
                \ ctermfg=232 ctermbg=242 cterm=NONE
highlight FoldColumn guifg=#2f3f5f guibg=bg gui=bold
                \ ctermfg=232 ctermbg=bg cterm=bold

" Diff: "{{{2
highlight DiffAdd guifg=#4f5f6f guibg=#afbfff gui=bold
                \ ctermfg=fg ctermbg=35 cterm=bold
highlight DiffChange guifg=#615292 guibg=#bfafff gui=NONE
                \ ctermfg=fg ctermbg=214 cterm=NONE
highlight DiffDelete guifg=#a62c74 guibg=#df9fff gui=bold
                \ ctermfg=fg ctermbg=197 cterm=NONE
highlight DiffText guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#1f7f2f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Added guifg=#2f8f3f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Changed guifg=#cf5f1f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2


highlight SignColumn guifg=#0f0f0f guibg=#afafaf gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight SpecialKey guifg=#5f4fff guibg=bg gui=bold
                \ ctermfg=17 ctermbg=bg cterm=bold


" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#cfcfcf gui=None
      \ ctermfg=fg ctermbg=bg cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#dfdfff gui=bold
      \ ctermfg=88 ctermbg=38 cterm=NONE


" Toolbar: "{{{2
highlight ToolbarButton guifg=#3f1f8f guibg=#afafff gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ToolbarLine guifg=#5f0f0f guibg=#df3fcf gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#ffffff guibg=#afafaf gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#af2f8f guibg=bg gui=undercurl
                \ ctermfg=54 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#2f5fcf guibg=bg gui=undercurl
                \ ctermfg=21 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#cf8f2f guibg=bg gui=undercurl
                \ ctermfg=172 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#8f3faf guibg=bg gui=undercurl
                \ ctermfg=23 ctermbg=bg cterm=undercurl

" Pmenu: "{{{2
highlight Pmenu guifg=#333333 guibg=#efefff gui=NONE
                \ ctermfg=232 ctermbg=250 cterm=NONE
highlight PmenuSel guifg=#ffffff guibg=#1f2faf gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfef gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#1f3f8f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#dfefff gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#0f3faf gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuSbar guifg=#ffffff guibg=#0f1f6f gui=NONE
                \ ctermfg=fg ctermbg=236 cterm=NONE
highlight PmenuThumb guifg=#ffffff guibg=#ff3f7f gui=NONE
                \ ctermfg=fg ctermbg=25 cterm=NONE


" Tabline: "{{{2
highlight TabLine guifg=#0f0f3f guibg=#dfdfff gui=underline
                \ ctermfg=21 ctermbg=232 cterm=underline
highlight TabLineSel guifg=#cfcfcf guibg=#1f2f4f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#0f0fff guibg=#efdfff gui=underline
                \ ctermfg=21 ctermbg=16 cterm=underline


" Tabpanel: "{{{2
highlight TabPanel guifg=#0f0f0f guibg=#efefff gui=NONE
                \ ctermfg=21 ctermbg=232 cterm=NONE
highlight TabPanelSel guifg=#ffffff guibg=#1f2f8f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#2f2f5f guibg=#c4c4c4 gui=NONE
                \ ctermfg=21 ctermbg=16 cterm=NONE
highlight TabPanelTitle guifg=#000000 guibg=#efdfff gui=NONE
                \ ctermfg=232 ctermbg=244 cterm=NONE


" Cursor "{{{2
highlight CursorColumn guifg=#000000 guibg=#3a3b3c gui=NONE
                \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#3a3b3c gui=NONE
                \ ctermfg=NONE ctermbg=26 cterm=NONE
highlight lCursor guifg=#000000 guibg=#af3fff gui=NONE
                \ ctermfg=0 ctermbg=41 cterm=NONE
highlight Cursor guifg=#000000 guibg=#00af5f gui=NONE
                \ ctermfg=0 ctermbg=41 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE


"IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af3f3f gui=NONE
                \ ctermfg=0 ctermbg=124 cterm=NONE
endif


" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#cfcfff gui=NONE
                \ ctermfg=NONE ctermbg=26 cterm=NONE
highlight CursorLineNr guifg=NONE guibg=#afafff gui=NONE
                \ ctermfg=130 ctermbg=252 cterm=NONE
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



" #- sytntax highlighting -# "{{{1
highlight MatchParen guifg=#1f1f4f guibg=#4f73ad gui=bold,underline
                \ ctermfg=17 ctermbg=27 cterm=bold,underline
highlight comment guifg=#0c4396 guibg=bg gui=NONE
                \ ctermfg=21 ctermbg=bg cterm=NONE
highlight Constant guifg=#8f0f6f guibg=bg gui=NONE
                \ ctermfg=89 ctermbg=bg cterm=NONE
highlight Special guifg=#8f3fff guibg=bg gui=NONE
                \ ctermfg=239 ctermbg=bg cterm=NONE
highlight Identifier guifg=#0f7f0f guibg=bg gui=NONE
                \ ctermfg=22 ctermbg=bg cterm=NONE
highlight Statement guifg=#0f1faf guibg=bg gui=NONE
                \ ctermfg=17 ctermbg=bg cterm=NONE
highlight PreProc guifg=#af3f8f guibg=bg gui=NONE
                \ ctermfg=125 ctermbg=bg cterm=NONE
highlight type guifg=#1f6f4f guibg=bg gui=NONE
                \ ctermfg=22 ctermbg=bg cterm=NONE
highlight underlined guifg=#5f8f8f guibg=bg gui=bold,underline
                \ ctermfg=30 ctermbg=bg cterm=bold,underline
highlight Ignore guifg=#354b6c guibg=bg gui=NONE
                \ ctermfg=17 ctermbg=bg cterm=bold
highlight Error guifg=#af0f2f guibg=bg gui=NONE
                \ ctermfg=160 ctermbg=bg cterm=NONE
highlight Todo guifg=#8f5faf guibg=#cfcfff gui=bold,underline
                \ ctermfg=56 ctermbg=153 cterm=bold,underline
highlight string guifg=#2f3fff guibg=bg gui=NONE
                \ ctermfg=21 ctermbg=bg cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


