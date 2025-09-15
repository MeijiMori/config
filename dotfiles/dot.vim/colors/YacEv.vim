" #- vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Made at 2011-04-05
" Guicolorscheme file
" Refer to Shougo's vim color (candy-ex)

" #- This color scheme uses a dark grey background. -# "{{{1
set background=dark
highlight clear
if version > 580
 highlight clear
 if exists("syntax_on")
 syntax reset
 endif
endif

" #- This colorscheme name -# "{{{1
" name: YacEv
let colors_name = expand('<sfile>:t:r')


" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#1f1f1f gui=NONE
                \ ctermfg=7 ctermbg=234 cterm=NONE
highlight NonText guifg=#1f60ff guibg=bg gui=bold
                \ ctermfg=27 ctermbg=NONE cterm=bold
highlight EndOfBuffers guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#2f8f7f guibg=bg gui=bold
                \ ctermfg=27 ctermbg=NONE cterm=bold


" Search: "{{{2
highlight IncSearch guifg=#1f5f2f guibg=#5faf5f gui=underline
                \ ctermfg=29 ctermbg=79 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#1f2f5f guibg=#2f3faf gui=underline
                \ ctermfg=17 ctermbg=27 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#2f8f5f guibg=bg gui=NONE
                \ ctermfg=29 ctermbg=bg cterm=underline
highlight ModeMsg guifg=#cfcfff guibg=bg gui=bold
                \ ctermfg=231 ctermbg=bg cterm=underline
highlight MsgArea guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#cf2f5f guibg=NONE gui=NONE
                \ ctermfg=197 ctermbg=NONE cterm=NONE
highlight WarningMsg guifg=#ff2f8f guibg=bg gui=NONE
                \ ctermfg=88 ctermbg=NONE cterm=underline
highlight Question guifg=#2fffaf guibg=NONE gui=NONE
                \ ctermfg=35 ctermbg=NONE cterm=underline
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#0f1f5f guibg=#afafaf gui=underline
                \ ctermfg=235 ctermbg=248 cterm=NONE


" LineNr: "{{{2
highlight LineNr guifg=#cf8fff guibg=NONE gui=NONE
                \ ctermfg=134 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#000000 guibg=#c8c8d8 gui=NONE
                \ ctermfg=234 ctermbg=252 cterm=NONE
highlight StatusLineNC guifg=#565234 guibg=#c4b2ab gui=NONE
                \ ctermfg=238 ctermbg=95 cterm=NONE
highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
                \ ctermfg=0 ctermbg=10 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
                \ ctermfg=96 ctermbg=183 cterm=NONE
" }}}2
highlight VertSplit guifg=#5f5f5f guibg=#c8c8d8 gui=NONE
                \ ctermfg=235 ctermbg=248 cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#cfcf7f guibg=bg gui=NONE
                \ ctermfg=221 ctermbg=NONE cterm=underline


" Visual: "{{{2
highlight Visual guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                \ ctermfg=7 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfaf8f guibg=#2f3f6f gui=bold
                \ ctermfg=95 ctermbg=25 cterm=bold


" Fold: "{{{2
highlight Folded guifg=#bfbfbf guibg=#1f203f gui=NONE
                \ ctermfg=7 ctermbg=17 cterm=NONE
highlight FoldColumn guifg=#bfbfbf guibg=#0f203f gui=bold
                \ ctermfg=7 ctermbg=17 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=#1f2f3f guibg=#5fafcf gui=NONE
                \ ctermfg=26 ctermbg=17 cterm=NONE
highlight DiffChange guifg=#1f3f2f guibg=#5fcfaf gui=NONE
                \ ctermfg=23 ctermbg=48 cterm=NONE
highlight DiffDelete guifg=#3f1f2f guibg=#cf5faf gui=NONE
                \ ctermfg=88 ctermbg=161 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2
highlight SignColumn guifg=#4faf9f guibg=bg gui=NONE
                \ ctermfg=82 ctermbg=bg cterm=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight SpecialKey guifg=#4f3fef guibg=bg gui=NONE
                \ ctermfg=63 ctermbg=NONE cterm=NONE


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
highlight SpellBad guifg=#cf2f7f guibg=bg gui=undercurl
                \ ctermfg=197 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#2fcf7f guibg=bg gui=undercurl
                \ ctermfg=35 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#7f2fcf guibg=bg gui=undercurl
                \ ctermfg=56 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#2f7fcf guibg=bg gui=undercurl
                \ ctermfg=27 ctermbg=bg cterm=undercurl


" Pmenu: "{{{2
highlight Pmenu guifg=#cfcfcf guibg=#0f0f1f gui=NONE
                \ ctermfg=249 ctermbg=233 cterm=NONE
highlight PmenuSel guifg=#ffffff guibg=#0f1f3f gui=NONE
                \ ctermfg=250 ctermbg=17 cterm=NONE
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
highlight PmenuSbar guifg=#000000 guibg=#cfcfcf gui=NONE
                \ ctermfg=bg ctermbg=251 cterm=NONE
highlight PmenuThumb guifg=#000000 guibg=#bfbf1f gui=NONE
                \ ctermfg=fg ctermbg=3 cterm=NONE


" Tabline: "{{{2
highlight TabLine guifg=#9b9b9f guibg=#202020 gui=underline
                \ ctermfg=248 ctermbg=234 cterm=underline
highlight TabLineSel guifg=#bfbfbf guibg=#1f2f4f gui=NONE
                \ ctermfg=7 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#415676 guibg=#202025 gui=underline
                \ ctermfg=25 ctermbg=16 cterm=NONE


" Tabpanel: "{{{2
highlight TabPanel guifg=#9b9b9f guibg=#202020 gui=NONE
                \ ctermfg=248 ctermbg=234 cterm=NONE
highlight TabPanelSel guifg=#bfbfbf guibg=#1f2f4f gui=NONE
                \ ctermfg=7 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#415676 guibg=#202025 gui=NONE
                \ ctermfg=25 ctermbg=16 cterm=NONE
highlight TabPanelTitle guifg=#000000 guibg=#efefff gui=NONE
                \ ctermfg=232 ctermbg=244 cterm=NONE


" Cursor: "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
                \ ctermfg=248 ctermbg=234 cterm=underline
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
                \ ctermfg=248 ctermbg=234 cterm=underline
highlight lCursor guifg=#2f5faf guibg=#cccccc gui=NONE
                \ ctermfg=82 ctermbg=bg cterm=NONE
highlight Cursor guifg=#000000 guibg=#008070 gui=NONE
                \ ctermfg=16 ctermbg=23 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE



" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#bb00aa gui=NONE
                \ ctermfg=248 ctermbg=234 cterm=underline
endif



" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#1f2f4f gui=NONE
                \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight CursorLineNr guifg=#9f4f7f guibg=#af8fff gui=NONE
                \ ctermfg=197 ctermbg=189 cterm=bold
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
        \ "#0c0c0c", "#c50f1f", "#13a10e", "#c19c00",
        \ "#0037da", "#881798", "#3a96dd", "#cccccc",
        \ "#767676", "#e74856", "#16c60c", "#eadf84",
        \ "#3b78ff", "#b4009e", "#61d6d6", "#e8e8e8"
        \ ]

endif


" #- syntax highlighting groups -# "{{{1
highlight MatchParen guifg=#00000f guibg=#2f4f7f gui=bold
                \ ctermfg=17 ctermbg=27 cterm=bold
highlight Comment guifg=#3f5fff guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Constant guifg=#2f8f9f guibg=NONE gui=NONE
                \ ctermfg=30 ctermbg=bg cterm=NONE
highlight Special guifg=#ffffdf guibg=NONE gui=NONE
                \ ctermfg=123 ctermbg=bg cterm=NONE
highlight Identifier guifg=#2faf8f guibg=NONE gui=NONE
                \ ctermfg=36 ctermbg=bg cterm=NONE
highlight Statement guifg=#2fcfaf guibg=NONE gui=NONE
                \ ctermfg=43 ctermbg=bg cterm=NONE
highlight PreProc guifg=#cf8fff guibg=bg gui=NONE
                \ ctermfg=177 ctermbg=bg cterm=NONE
highlight Type guifg=#6fafdf guibg=bg gui=NONE
                \ ctermfg=39 ctermbg=bg cterm=NONE
highlight Underlined guifg=#8f3f5f guibg=#afafff gui=bold,underline
                \ ctermfg=170 ctermbg=251 cterm=bold,underline
highlight Ignore guifg=#afafff guibg=bg gui=NONE
                \ ctermfg=245 ctermbg=bg cterm=NONE
highlight Error guifg=#ff2f4f guibg=bg gui=NONE
                \ ctermfg=88 ctermbg=bg cterm=NONE
highlight Todo guifg=#1f2faf guibg=#cfcfcf gui=bold
                \ ctermfg=88 ctermbg=250 cterm=NONE
highlight String guifg=#8fefff guibg=NONE gui=NONE
                \ ctermfg=87 ctermbg=NONE cterm=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
