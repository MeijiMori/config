" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen {[(*)]}
" highlighting ZenkakuSpace /　/

" #- First remove all existing highlighting. -# "{{{1
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

" #- This colorscheme name -# "{{{1
" name: xyacs
let g:colors_name = expand('<sfile>:t:r')

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#ffffff guibg=#0f0f0f gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
highlight NonText guifg=#3f7fff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=63 ctermbg=NONE cterm=bold
highlight Directory guifg=#5f8fcf guibg=bg gui=NONE
                \ ctermfg=74 ctermbg=bg cterm=bold


" Search: "{{{2
highlight IncSearch guifg=#000000 guibg=#8f9fff gui=NONE
                \ ctermfg=17 ctermbg=69 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=100 ctermbg=221 cterm=bold,underline
highlight Search guifg=#000000 guibg=#afcfff gui=NONE
                \ ctermfg=17 ctermbg=153 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#4f7faf guibg=bg gui=NONE
                \ ctermfg=68 ctermbg=bg cterm=NONE
highlight ModeMsg guifg=#2faf8f guibg=bg gui=NONE
                \ ctermfg=36 ctermbg=bg cterm=NONE
highlight MsgArea guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#cf2f4f guibg=NONE gui=NONE
                \ ctermfg=161 ctermbg=bg cterm=NONE
highlight WarningMsg guifg=#cf2f4f guibg=bg gui=NONE
                \ ctermfg=203 ctermbg=bg cterm=NONE
highlight Question guifg=#2fffcf guibg=bg gui=NONE
                \ ctermfg=121 ctermbg=bg cterm=NONE
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=251 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=251 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#ffffff guibg=#0f2f5f gui=NONE
                \ ctermfg=15 ctermbg=18 cterm=NONE


" LineNr: "{{{2
highlight LineNr guifg=#cfcfcf guibg=NONE gui=NONE
                \ ctermfg=251 ctermbg=bg cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=99 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=247 ctermbg=bg cterm=NONE



" Statusline: "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#1f1f2f gui=bold
                \ ctermfg=250 ctermbg=235 cterm=bold
highlight StatusLineNC guifg=#5f5f5f guibg=#0f0f1f gui=NONE
                \ ctermfg=240 ctermbg=233 cterm=NONE
highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
                \ ctermfg=248 ctermbg=233 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
                \ ctermfg=52 ctermbg=139 cterm=NONE


" }}}2



highlight VertSplit guifg=#6f6f6f guibg=#dfdfdf gui=NONE
                \ ctermfg=243 ctermbg=252 cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#5fcfaf guibg=bg gui=NONE
                \ ctermfg=35 ctermbg=bg cterm=NONE



" Visual: "{{{2
highlight Visual guifg=#ffffff guibg=#1f2f5f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight VisualNOS guifg=#ffffff guibg=#3f4f7f gui=bold,underline
                \ ctermfg=255 ctermbg=103 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#3f5faf guibg=#0f0f2f gui=NONE
                \ ctermfg=68 ctermbg=232 cterm=NONE
highlight FoldColumn guifg=#2f2f8f guibg=#0f0f2f gui=bold
                \ ctermfg=54 ctermbg=16 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=#7fafff guibg=bg gui=NONE
                \ ctermfg=17 ctermbg=111 cterm=NONE
highlight DiffChange guifg=#ff8faf guibg=bg gui=NONE
                \ ctermfg=136 ctermbg=228 cterm=NONE
highlight DiffDelete guifg=#af5faf guibg=bg gui=bold
                \ ctermfg=52 ctermbg=213 cterm=NONE
highlight DiffText guifg=#cfcfcf guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
                \ ctermfg=30 ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
                \ ctermfg=29 ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
                \ ctermfg=220 ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
                \ ctermfg=198 ctermbg=bg cterm=NONE


" }}}2



highlight SignColumn guifg=fg guibg=#0f3f5f gui=NONE
                \ ctermfg=15 ctermbg=30 cterm=NONE
highlight Conceal guifg=#cf4f8f guibg=bg gui=NONE
                \ ctermfg=52 ctermbg=125 cterm=NONE
highlight SpecialKey guifg=#af2f5f guibg=bg gui=NONE
                \ ctermfg=161 ctermbg=bg cterm=NONE


" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=232 ctermbg=189 cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=232 ctermbg=189 cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=15 ctermbg=19 cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=23 ctermbg=108 cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#cfafff gui=bold
      \ ctermfg=52 ctermbg=219 cterm=bold


" Toolbar: "{{{2
highlight ToolbarButton guifg=#5f5f8f guibg=#cfefff gui=bold
                \ ctermfg=27 ctermbg=111 cterm=NONE
highlight ToolbarLine guifg=fg guibg=#efcfff gui=NONE
                \ ctermfg=52 ctermbg=219 cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=232 ctermbg=189 cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=24 ctermbg=73 cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#af5fcf guibg=bg gui=undercurl
                \ ctermfg=134 ctermbg=bg cterm=underline
highlight SpellCap guifg=#6f7fff guibg=bg gui=undercurl
                \ ctermfg=69 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#6fcf9f guibg=bg gui=undercurl
                \ ctermfg=78 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#8fdf6f guibg=bg gui=undercurl
                \ ctermfg=114 ctermbg=bg cterm=undercurl

" Pmenu: "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#cfcfcf gui=NONE
                \ ctermfg=235 ctermbg=251 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=235 ctermbg=251 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuKind guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=235 ctermbg=251 cterm=NONE
highlight PmenuKindSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfefff gui=NONE
                \ ctermfg=235 ctermbg=251 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
                \ ctermfg=235 ctermbg=251 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
                \ ctermfg=235 ctermbg=251 cterm=NONE
highlight PmenuSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuSbar guifg=#cccccc guibg=#2f2f2f gui=NONE
                \ ctermfg=255 ctermbg=239 cterm=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#6f2f4f gui=NONE
                \ ctermfg=255 ctermbg=161 cterm=NONE


"Tabline: "{{{2
highlight TabLine guifg=#afafaf guibg=#4f4f4f gui=NONE
                \ ctermfg=247 ctermbg=239 cterm=NONE
highlight TabLineFill guifg=#5f5f5f guibg=#3f3f3f gui=NONE
                \ ctermfg=241 ctermbg=235 cterm=NONE
highlight TabLineSel guifg=#dfdfdf guibg=#7f7f7f gui=NONE
                \ ctermfg=15 ctermbg=242 cterm=NONE


"Tabpanel: "{{{2
highlight TabPanel guifg=#afafaf guibg=#4f4f4f gui=NONE
                \ ctermfg=247 ctermbg=239 cterm=NONE
highlight TabPanelFill guifg=#5f5f5f guibg=#3f3f3f gui=NONE
                \ ctermfg=241 ctermbg=235 cterm=NONE
highlight TabPanelSel guifg=#dfdfdf guibg=#7f7f7f gui=NONE
                \ ctermfg=15 ctermbg=242 cterm=NONE
highlight TabPanelTitle guifg=#5f5f5f guibg=#cfcfff gui=NONE
                \ ctermfg=243 ctermbg=189 cterm=NONE


" Cursor: "{{{2
highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=NONE ctermbg=26 cterm=NONE
highlight CursorColumn gui=NONE guifg=#000000 guibg=#2f2f2f
                \ ctermfg=0 ctermbg=8 cterm=NONE
highlight Cursor guifg=#000000 guibg=#cfcfcf gui=NONE
                \ ctermfg=0 ctermbg=250 cterm=NONE
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
                \ ctermfg=23 ctermbg=115 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE


" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM gui=NONE guifg=#000000 guibg=#af2f3f
                \ ctermfg=0 ctermbg=124 cterm=NONE
endif



" Cursorline: "{{{2
highlight CursorLine gui=NONE guifg=NONE guibg=#2f2f3f
                \ ctermfg=NONE ctermbg=234 cterm=NONE
highlight CursorLineNr guifg=#9f4f7f guibg=#af8fff gui=NONE
                \ ctermfg=88 ctermbg=183 cterm=bold
highlight CursorLineSign guifg=NONE guibg=#8faf8f gui=bold
                \ ctermfg=255 ctermbg=115 cterm=bold
highlight CursorLineFold guifg=NONE guibg=#cfcfff gui=bold
                \ ctermfg=111 ctermbg=189 cterm=bold



" Terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=fg guibg=bg gui=NONE
                  \ ctermfg=fg ctermbg=bg cterm=NONE

  " Terminal color
  let g:terminal_ansi_colors = [
        \ "#0c0c0c", "#c50f1f", "#13a10e", "#c19c00",
        \ "#0037da", "#881798", "#3a96dd", "#cccccc",
        \ "#767676", "#e74856", "#16c60c", "#eadf84",
        \ "#3b78ff", "#b4009e", "#61d6d6", "#e8e8e8"
        \ ]

endif



" #- syntax highlighting groups -# "{{{1
highlight MatchParen guifg=#3f3f3f guibg=#2f63ad gui=bold
                \ ctermfg=17 ctermbg=69 cterm=bold,underline
highlight comment guifg=#7f7f8f guibg=bg gui=NONE
                \ ctermfg=241 ctermbg=bg cterm=NONE
highlight Constant guifg=#5f8fff guibg=bg gui=NONE
                \ ctermfg=69 ctermbg=bg cterm=NONE
highlight Special guifg=#bfbfbf guibg=bg gui=NONE
                \ ctermfg=248 ctermbg=bg cterm=NONE
highlight Identifier guifg=#6fcfbf guibg=bg gui=NONE
                \ ctermfg=78 ctermbg=bg cterm=NONE
highlight Statement guifg=#6f5fff guibg=bg gui=NONE
                \ ctermfg=63 ctermbg=bg cterm=NONE
highlight PreProc guifg=#afffcf guibg=bg gui=NONE
                \ ctermfg=121 ctermbg=bg cterm=NONE
highlight Type guifg=#6fbfcf guibg=bg gui=NONE
                \ ctermfg=73 ctermbg=bg cterm=NONE
highlight underlined guifg=#3faf6f guibg=bg gui=underline
                \ ctermfg=79 ctermbg=bg cterm=underline
highlight Ignore guifg=#7f7f7f guibg=bg gui=NONE
                \ ctermfg=243 ctermbg=bg cterm=NONE
highlight Error guifg=#ff4f8f guibg=bg gui=NONE
                \ ctermfg=204 ctermbg=bg cterm=NONE
highlight Todo guifg=#af2f5f guibg=#1f1f1f gui=bold,underline
                \ ctermfg=124 ctermbg=bg cterm=bold,underline
highlight string guifg=#cf8faf guibg=bg gui=NONE
                \ ctermfg=175 ctermbg=bg cterm=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


