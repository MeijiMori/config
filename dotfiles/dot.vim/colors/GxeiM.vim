" #- vim colorscheme file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file
" This colorscheme is improved default colorscheme and default sakura editor color

" #- vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif


" #- color scheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')


" #- highlighting groups for various occasions "{{{1
highlight Normal guifg=#0f0f0f guibg=#ffffef gui=NONE
                \ ctermfg=233 ctermbg=230 cterm=NONE
highlight NonText guifg=#2b3b76 guibg=#ffffff gui=NONE
                \ ctermfg=25 ctermbg=bg cterm=NONE
highlight EndOfBuffer guifg=#2b3ba6 guibg=#fffcff gui=NONE
                \ ctermfg=25 ctermbg=bg cterm=NONE
highlight Directory guifg=#2b609b guibg=bg gui=bold
                \ ctermfg=17 ctermbg=bg cterm=bold
" Search: "{{{2
highlight IncSearch guifg=#3f2f4f guibg=#af8fff gui=bold,underline
                \ ctermfg=17 ctermbg=93 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#2f2f5f guibg=#8fafff gui=bold,underline
                \ ctermfg=17 ctermbg=69 cterm=bold,underline

" Message: "{{{2
highlight ErrorMsg guifg=#af1f5f guibg=#e8dfcb gui=underline
                \ ctermfg=124 ctermbg=138 cterm=underline
highlight MoreMsg guifg=#66765a guibg=#e8dfcb gui=underline
                \ ctermfg=23 ctermbg=188 cterm=underline
highlight ModeMsg guifg=#4a4741 guibg=#e8dfcb gui=underline
                \ ctermfg=17 ctermbg=188 cterm=underline
highlight MsgArea guifg=#0f5f5f guibg=#fffff0 gui=NONE
                \ ctermfg=23 ctermbg=bg cterm=NONE
highlight WarningMsg guifg=#af2f5f guibg=#e8dfcb gui=underline
                \ ctermfg=160 ctermbg=245 cterm=underline
highlight Question guifg=#345749 guibg=bg gui=underline
                \ ctermfg=22 ctermbg=bg cterm=underline
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#001f5f guibg=#efefff gui=underline
                \ ctermfg=17 ctermbg=189 cterm=underline


" LineNr: {{{2
highlight LineNr guifg=#cfcfcf guifg=#b57720 gui=NONE
                \ ctermfg=208 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE



" Statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#10202f gui=NONE
                \ ctermfg=255 ctermbg=234 cterm=NONE
highlight StatusLineNC guifg=#7b8b85 guibg=#0f1f2f gui=NONE
                \ ctermfg=243 ctermbg=234 cterm=NONE
highlight StatusLineTerm guifg=#ffffff guibg=#1f2f5f gui=NONE
                \ ctermfg=250 ctermbg=16 cterm=NONE
highlight StatusLineTermNC guifg=#7b8b85 guibg=#0f1f5f gui=NONE
                \ ctermfg=245 ctermbg=16 cterm=NONE
"}}}2


highlight VertSplit guifg=fg guibg=#0f1f2f gui=NONE
                \ ctermfg=0 ctermbg=232 cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#177479 guibg=#cfffff gui=bold
                \ ctermfg=23 ctermbg=81 cterm=bold,underline


" Visual: "{{{2
highlight Visual guifg=#cfcfcf guibg=#2c325f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#2f3f5f gui=underline,bold
                \ ctermfg=15 ctermbg=17 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#001f5f guibg=#bfcfdf gui=NONE
                \ ctermfg=17 ctermbg=153 cterm=NONE
highlight FoldColumn guifg=#1c417c guibg=bg gui=bold
                \ ctermfg=17 ctermbg=230 cterm=bold


" Diff "{{{2
highlight DiffAdd guifg=fg guibg=#afffcf gui=NONE
                \ ctermfg=NONE ctermbg=42 cterm=NONE
highlight DiffChange guifg=fg guibg=#ffaf5f gui=NONE
                \ ctermfg=NONE ctermbg=208 cterm=NONE
highlight DiffDelete guifg=fg guibg=#cf4f9f gui=NONE
                \ ctermfg=NONE ctermbg=197 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2

highlight SignColumn guifg=#ffffff guibg=#ffefcf gui=NONE
                \ ctermfg=0 ctermbg=223 cterm=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight SpecialKey guifg=#1f915f guibg=bg gui=NONE
                \ ctermfg=28 ctermbg=bg cterm=NONE


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
highlight QuickFixLine guifg=#0f0f0f guibg=#ffefff gui=bold
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
highlight SpellBad guifg=#795099 guibg=bg gui=undercurl
                \ ctermfg=160 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#506399 guibg=bg gui=undercurl
                \ ctermfg=21 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#509982 guibg=bg gui=undercurl
                \ ctermfg=41 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#998c50 guibg=bg gui=undercurl
                \ ctermfg=3 ctermbg=bg cterm=undercurl

" Pmenu: "{{{2
highlight Pmenu guifg=#10102f guibg=#dbdbf3 gui=NONE
                \ ctermfg=0 ctermbg=189 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=0 ctermbg=189 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=15 ctermbg=26 cterm=NONE
highlight PmenuKind guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=0 ctermbg=189 cterm=NONE
highlight PmenuKindSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=15 ctermbg=26 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfefff gui=NONE
                \ ctermfg=0 ctermbg=189 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
                \ ctermfg=0 ctermbg=189 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
                \ ctermfg=15 ctermbg=26 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
                \ ctermfg=244 ctermbg=189 cterm=NONE
highlight PmenuSel guifg=#bfbfbf guibg=#0f2f5f gui=NONE
                \ ctermfg=15 ctermbg=27 cterm=NONE
highlight PmenuSbar guifg=#cccccc guibg=#3a3b3c gui=NONE
                \ ctermfg=231 ctermbg=240 cterm=NONE
highlight PmenuThumb guifg=#0f0f0f guibg=#21365f gui=NONE
                \ ctermfg=15 ctermbg=23 cterm=NONE

" Tabline: "{{{2
highlight TabLine guifg=#5f5f5f guibg=#cfcfdf gui=underline
                \ ctermfg=239 ctermbg=250 cterm=underline
highlight TabLineFill guifg=#5f2f3f guibg=#cfcfcf gui=underline
                \ ctermfg=138 ctermbg=252 cterm=underline
highlight TabLineSel guifg=#00001f guibg=#efefff gui=underline
                \ ctermfg=0 ctermbg=255 cterm=underline


" Tabpanel: "{{{2
highlight TabPanel guifg=#5f5f5f guibg=#cfcfdf gui=NONE
                \ ctermfg=239 ctermbg=250 cterm=underline
highlight TabPanelFill guifg=#5f2f3f guibg=#cfcfcf gui=NONE
                \ ctermfg=95 ctermbg=250 cterm=underline
highlight TabPanelSel guifg=#ffffff guibg=#3f8fff gui=NONE
                \ ctermfg=15 ctermbg=27 cterm=underline
highlight TabPanelTitle guifg=#000000 guibg=#cfcfff gui=NONE
                \ ctermfg=232 ctermbg=189 cterm=NONE


" Cursor: "{{{2
highlight ColorColumn guibg=#cfcfff gui=NONE guifg=NONE
                \ ctermfg=NONE ctermbg=189 cterm=NONE
highlight CursorColumn guifg=NONE guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=231 cterm=NONE
highlight lCursor guifg=#575757 guibg=#000000 gui=NONE
                \ ctermfg=15 ctermbg=232 cterm=NONE
highlight Cursor guifg=#000000 guibg=#2f8f8f gui=NONE
                \ ctermfg=15 ctermbg=23 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE


" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#7f0f2f gui=NONE
                \ ctermfg=0 ctermbg=88 cterm=NONE
endif


" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#ffdfff gui=NONE
                \ ctermfg=NONE ctermbg=225 cterm=NONE
highlight CursorLineFold guifg=NONE guibg=#cfdfff gui=bold
                \ ctermfg=16 ctermbg=153 cterm=bold
highlight CursorLineNr guifg=#0f3f5f guibg=#8fcfff gui=bold
                \ ctermfg=235 ctermbg=75 cterm=bold
highlight CursorLineSign guifg=NONE guibg=#afcfaf gui=bold
                \ ctermfg=16 ctermbg=73 cterm=bold


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



" #- syntax highlighting groups -# "{{{1
highlight MatchParen guifg=#4f2f5f guibg=#e2bffc gui=bold,underline
                \ ctermfg=52 ctermbg=135 cterm=bold,underline
highlight comment guifg=#1f3fbf guibg=NONE gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Constant guifg=#0f2fcf guibg=bg gui=NONE
                \ ctermfg=21 ctermbg=bg cterm=NONE
highlight Special guifg=#305fc7 guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Identifier guifg=#1faf0f guibg=bg gui=NONE
                \ ctermfg=71 ctermbg=bg cterm=NONE
highlight Statement guifg=#3f5fcf guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight PreProc guifg=#cf2f9f guibg=bg gui=NONE
                \ ctermfg=127 ctermbg=bg cterm=NONE
highlight type guifg=#0faf3f guibg=bg gui=NONE
                \ ctermfg=30 ctermbg=bg cterm=NONE
highlight underlined guifg=#399620 guibg=#f4f8c9 gui=underline
                \ ctermfg=29 ctermbg=230 cterm=underline
highlight Ignore guifg=#105f20 guibg=bg gui=bold
                \ ctermfg=22 ctermbg=bg cterm=bold
highlight Error guifg=#af2f5f guibg=bg gui=NONE
                \ ctermfg=88 ctermbg=bg cterm=NONE
highlight Todo guifg=#4e5ca0 guibg=#cfcfdf gui=bold,underline
                \ ctermfg=240 ctermbg=252 cterm=bold,underline
highlight string guifg=#7f1f2f guibg=bg gui=NONE
                \ ctermfg=124 ctermbg=bg cterm=NONE


" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


