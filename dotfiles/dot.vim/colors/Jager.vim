" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}"
" highlighting ZenkakuSpace /　/
" like a barcerk fuler

" #- Reset-# "{{{1
" First remove all existing highlighting.
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#000000 guibg=#fff0fa gui=NONE
          \ ctermfg=232 ctermbg=225 cterm=NONE
highlight SpecialKey guifg=#7f5f8f guibg=bg gui=NONE
          \ ctermfg=99 ctermbg=bg cterm=NONE
highlight NonText guifg=#3f7f5f guibg=bg gui=bold
          \ ctermfg=2 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#3f5fff guibg=NONE gui=bold
          \ ctermfg=26 ctermbg=bg cterm=bold


" Search: "{{{2
highlight IncSearch guifg=#5f1f3f guibg=#ff5faf gui=bold,underline
          \ ctermfg=89 ctermbg=183 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
          \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#0f1f5f guibg=#afcfcf gui=bold,underline
          \ ctermfg=21 ctermbg=75 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#2f8f5f guibg=#dfffdf gui=NONE
          \ ctermfg=36 ctermbg=121 cterm=underline
highlight ModeMsg guifg=#2f4f8f guibg=#dfdfff gui=NONE
          \ ctermfg=25 ctermbg=153 cterm=underline
highlight MsgArea guifg=fg guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#cf2f4f guibg=#ffdfdf gui=NONE
          \ ctermfg=9 ctermbg=219 cterm=NONE
highlight WarningMsg guifg=#cf2f4f guibg=#ffdfdf gui=NONE
          \ ctermfg=9 ctermbg=219 cterm=underline
highlight Question guifg=#1faf5f guibg=#dfffdf gui=NONE
          \ ctermfg=41 ctermbg=121 cterm=NONE
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#ffffff guibg=#2f3f8f gui=bold,underline
          \ ctermfg=254 ctermbg=17 cterm=bold,underline


" LineNr: "{{{2
highlight LineNr guifg=#9f4f7f guibg=NONE gui=NONE
          \ ctermfg=132 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE


" Statusline "{{{2
highlight StatusLine guifg=#efefef guibg=#1f2f3f gui=NONE
          \ ctermfg=254 ctermbg=234 cterm=NONE
highlight StatusLineNC guifg=#7f5f6f guibg=#cfafaf gui=NONE
          \ ctermfg=131 ctermbg=181 cterm=NONE
highlight StatusLineTerm guifg=#ffffff guibg=#1f2f5f gui=NONE
                \ ctermfg=250 ctermbg=234 cterm=NONE
highlight StatusLineTermNC guifg=#7b8b85 guibg=#0f1f5f gui=NONE
                \ ctermfg=243 ctermbg=234 cterm=NONE
" }}}2
highlight VertSplit guifg=#6f6f9f guibg=#dfcfff gui=bold
          \ ctermfg=69 ctermbg=183 cterm=bold
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
          \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
          \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#2f7f8f guibg=bg gui=NONE
          \ ctermfg=35 ctermbg=bg cterm=bold,underline
" Visual: "{{{2
highlight Visual guifg=#efefef guibg=#2f3f5f gui=NONE
          \ ctermfg=253 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#2f3f7f gui=underline,bold
          \ ctermfg=250 ctermbg=19 cterm=underline,bold


" Fold: "{{{2
highlight Folded guifg=#1f1f1f guibg=#efe5ef gui=NONE
          \ ctermfg=239 ctermbg=189 cterm=NONE
highlight FoldColumn guifg=#3f3f3f guibg=#fff5ff gui=bold
          \ ctermfg=238 ctermbg=225 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=fg guibg=#afffcf gui=NONE
          \ ctermfg=fg ctermbg=49 cterm=NONE
highlight DiffChange guifg=fg guibg=#ffffcf gui=NONE
          \ ctermfg=fg ctermbg=229 cterm=NONE
highlight DiffDelete guifg=fg guibg=#ffafcf gui=NONE
          \ ctermfg=fg ctermbg=219 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Changed guifg=#cf3f0f guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2


highlight SignColumn guifg=#0f0f0f guibg=#efdfff gui=NONE
          \ ctermfg=17 ctermbg=183 cterm=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
          \ ctermfg=fg ctermbg=0 cterm=NONE
highlight SpecialKey guifg=#8f5fff guibg=NONE gui=bold
          \ ctermfg=63 ctermbg=bg cterm=bold


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
highlight ToolbarButton guifg=#3f1f8f guibg=#afafff gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ToolbarLine guifg=#5f0f0f guibg=#df3fcf gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#593079 guibg=bg gui=undercurl
          \ ctermfg=99 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#304379 guibg=bg gui=undercurl
          \ ctermfg=27 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#307962 guibg=bg gui=undercurl
          \ ctermfg=29 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#796c30 guibg=bg gui=undercurl
          \ ctermfg=229 ctermbg=bg cterm=undercurl

" Pmenu "{{{2
highlight Pmenu guifg=fg guibg=#efdfff gui=NONE
          \ ctermfg=16 ctermbg=189 cterm=NONE
highlight PmenuKind guifg=#0f0f0f guibg=#cfcfff gui=NONE
          \ ctermfg=16 ctermbg=189 cterm=NONE
highlight PmenuKindSel guifg=#ffffff guibg=#003f8f gui=NONE
          \ ctermfg=15 ctermbg=17 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
          \ ctermfg=16 ctermbg=189 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
          \ ctermfg=16 ctermbg=17 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfefff gui=NONE
          \ ctermfg=16 ctermbg=189 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
          \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
          \ ctermfg=15 ctermbg=17 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
          \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#2f2f3f gui=NONE
          \ ctermfg=15 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=fg guibg=#cfafbf gui=NONE
          \ ctermfg=16 ctermbg=139 cterm=NONE
highlight PmenuThumb guifg=fg guibg=#dfcfef gui=NONE
          \ ctermfg=16 ctermbg=183 cterm=NONE

" Tabline: "{{{2
highlight TabLine guifg=#afafaf guibg=#0f1f2f gui=NONE
          \ ctermfg=248 ctermbg=233 cterm=NONE
highlight TabLineFill guifg=#ff8f2f guibg=#0f1f2f gui=bold
          \ ctermfg=208 ctermbg=16 cterm=bold
highlight TabLineSel guifg=#ffffff guibg=#0f3f8f gui=NONE
          \ ctermfg=253 ctermbg=17 cterm=NONE


" Tabpanel: "{{{2
highlight TabPanel guifg=#afafaf guibg=#0f1f2f gui=NONE
          \ ctermfg=248 ctermbg=233 cterm=NONE
highlight TabPanelFill guifg=#af2f5f guibg=#0f1f2f gui=NONE
          \ ctermfg=208 ctermbg=16 cterm=NONE
highlight TabPanelSel guifg=#ffffff guibg=#0f3f8f gui=NONE
          \ ctermfg=15 ctermbg=17 cterm=NONE
highlight TabPanelTitle guifg=#ffffff guibg=#0f0f0f gui=NONE
          \ ctermfg=252 ctermbg=232 cterm=NONE


" Cursor: "{{{2
highlight ColorColumn guifg=NONE guibg=#ff8f8f gui=NONE
          \ ctermfg=NONE ctermbg=9 cterm=NONE
highlight CursorColumn guifg=#000000 guibg=#ffcfef gui=NONE
          \ ctermfg=NONE ctermbg=224 cterm=NONE
highlight lCursor guifg=#0f0f0f guibg=#7fafff gui=NONE
          \ ctermfg=0 ctermbg=75 cterm=NONE
highlight Cursor guifg=#000000 guibg=#6faf8f gui=NONE
          \ ctermfg=fg ctermbg=79 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
          \ ctermfg=NONE ctermbg=250 cterm=NONE



" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af2f3f gui=NONE
          \ ctermfg=16 ctermbg=161 cterm=NONE
endif


" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#ffeff5 gui=NONE
          \ ctermfg=NONE ctermbg=183 cterm=NONE
highlight CursorLineNr guifg=#0f0f8f guibg=#8fafff gui=NONE
          \ ctermfg=17 ctermbg=75 cterm=NONE
highlight CursorLineFold guifg=NONE guibg=#cfcfff gui=bold
          \ ctermfg=16 ctermbg=189 cterm=bold
highlight CursorLineSign guifg=NONE guibg=#8faf8f gui=bold
          \ ctermfg=232 ctermbg=72 cterm=bold


" Terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=fg guibg=bg gui=NONE
  " Terminal color
  let g:terminal_ansi_colors = [
    \ "#0c0c0c", "#850f1f", "#13710e", "#819c00",
    \ "#00378a", "#881798", "#3a96dd", "#8f8f8f",
    \ "#767676", "#872836", "#16960c", "#6a7f84",
    \ "#3b789f", "#94005e", "#61d6d6", "#989898"
    \ ]
endif



" #- Syntax highlighting groups -# "{{{1
highlight MatchParen guifg=#000000 guibg=#8f8fff gui=bold,underline
          \ ctermfg=18 ctermbg=69 cterm=bold,underline
highlight comment guifg=#3f8fff guibg=bg gui=NONE
          \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Constant guifg=#1faf8f guibg=bg gui=NONE
          \ ctermfg=23 ctermbg=bg cterm=NONE
highlight Special guifg=#5f5f7f guibg=bg gui=NONE
          \ ctermfg=246 ctermbg=bg cterm=NONE
highlight Identifier guifg=#cf8f2f guibg=bg gui=NONE
          \ ctermfg=178 ctermbg=bg cterm=NONE
highlight Statement guifg=#6f3faf guibg=bg gui=NONE
          \ ctermfg=63 ctermbg=bg cterm=NONE
highlight PreProc guifg=#bf0f3f guibg=bg gui=NONE
          \ ctermfg=124 ctermbg=bg cterm=NONE
highlight type guifg=#0f5f3f guibg=bg gui=NONE
          \ ctermfg=23 ctermbg=bg cterm=NONE
highlight underlined guifg=#0f7f3f guibg=bg gui=underline
          \ ctermfg=29 ctermbg=bg cterm=underline
highlight Ignore guifg=#7f7f7f guibg=bg gui=NONE
          \ ctermfg=102 ctermbg=bg cterm=NONE
highlight Error guifg=#af1f3f guibg=#ffdfdf gui=NONE
          \ ctermfg=197 ctermbg=219 cterm=NONE
highlight Todo guifg=#8f8fff guibg=#dfdfdf gui=bold,underline
          \ ctermfg=63 ctermbg=189 cterm=bold,underline
highlight string guifg=#af1f3f guibg=bg gui=NONE
          \ ctermfg=125 ctermbg=bg cterm=NONE

" #- User -# "{{{1
highlight User1 guifg=#afafaf guibg=#2f2f2f gui=NONE
                \ ctermfg=251 ctermbg=236 cterm=NONE
highlight User2 guifg=#0f0f3f guibg=#0f3f8f gui=NONE
                \ ctermfg=17 ctermbg=27 cterm=NONE
highlight User3 guifg=#0f3f0f guibg=#0f8f3f gui=NONE
                \ ctermfg=28 ctermbg=35 cterm=NONE
highlight User4 guifg=#3f2f0f guibg=#8f3f0f gui=NONE
                \ ctermfg=105 ctermbg=234 cterm=NONE
highlight User5 guifg=#3f0f0f guibg=#8f0f3f gui=NONE
                \ ctermfg=88 ctermbg=125 cterm=NONE
highlight User6 guifg=#5f5f0f guibg=#8f8f0f gui=NONE
                \ ctermfg=94 ctermbg=229 cterm=NONE
highlight User7 guifg=#5f0f5f guibg=#8f3f8f gui=NONE
                \ ctermfg=88 ctermbg=201 cterm=NONE
highlight User8 guifg=#3f5f3f guibg=#8f8f5f gui=NONE
                \ ctermfg=130 ctermbg=222 cterm=NONE
highlight User9 guifg=#5f5f5f guibg=#afafcf gui=NONE
                \ ctermfg=244 ctermbg=189 cterm=NONE
" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
