" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file
"

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

" #- highlighting groups for various occasions -#{{{1
highlight Normal guifg=#fdfdfd guibg=#202020 gui=NONE
                \ ctermfg=15 ctermbg=234 cterm=NONE
highlight NonText guifg=#4f5fff guibg=#303030 gui=NONE
                \ ctermfg=33 ctermbg=235 cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#3a85d2 guibg=NONE gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=bold


" Search: "{{{2
highlight IncSearch guifg=#000000 guibg=#afcfaf gui=bold
                \ ctermfg=52 ctermbg=162 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=58 ctermbg=220 cterm=bold,underline
highlight Search guifg=#000000 guibg=#cfaf96 gui=bold
                \ ctermfg=17 ctermbg=111 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#8583d9 guibg=bg gui=NONE
                \ ctermfg=63 ctermbg=bg cterm=NONE
highlight ModeMsg guifg=#ffffff guibg=bg gui=NONE
                \ ctermfg=251 ctermbg=bg cterm=NONE
highlight MsgArea guifg=#cfcfcf guibg=#0f0f2f gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#f84865 guibg=bg gui=NONE
                \ ctermfg=196 ctermbg=bg cterm=NONE
highlight WarningMsg guifg=#fc4765 guibg=bg gui=NONE
                \ ctermfg=197 ctermbg=bg cterm=NONE
highlight Question guifg=#6fcf9f guibg=bg gui=NONE
                \ ctermfg=41 ctermbg=bg cterm=NONE
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#2f5f85 guibg=#cfcfcf gui=NONE
                \ ctermfg=234 ctermbg=253 cterm=NONE



" LineNr: "{{{2
highlight LineNr guifg=#c3bcb4 guibg=#303030 gui=NONE
                \ ctermfg=145 ctermbg=235 cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#20202f gui=NONE
                \ ctermfg=250 ctermbg=233 cterm=NONE
highlight StatusLineNC guifg=#564234 guibg=#b2a089 gui=NONE
                \ ctermfg=95 ctermbg=180 cterm=NONE
highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
                \ ctermfg=248 ctermbg=233 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
                \ ctermfg=96 ctermbg=183 cterm=NONE


" }}}2


highlight VertSplit guifg=#aaaaaa guibg=bg gui=NONE
                \ ctermfg=249 ctermbg=235 cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#388683 guibg=NONE gui=NONE
                \ ctermfg=35 ctermbg=235 cterm=NONE


" Visual: "{{{2
highlight Visual guifg=#cfcfcf guibg=#1f2f7f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guibg=#aaeeee guifg=#3d3d3d gui=underline,bold
                \ ctermfg=25 ctermbg=123 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#0f0f0f guibg=#8f8fef gui=NONE
                \ ctermfg=16 ctermbg=147 cterm=NONE
highlight FoldColumn guifg=#c0c0ff guibg=#0f101f gui=bold
                \ ctermfg=147 ctermbg=233 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=#aacbde guibg=bg gui=NONE
                \ ctermfg=22 ctermbg=115 cterm=NONE
highlight DiffChange guifg=#998dbf guibg=bg gui=NONE
                \ ctermfg=58 ctermbg=221 cterm=NONE
highlight DiffDelete guifg=#a62c74 guibg=bg gui=NONE
                \ ctermfg=52 ctermbg=206 cterm=NONE
highlight DiffText guifg=#c9cbce guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
                \ ctermfg=79 ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
                \ ctermfg=220 ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
                \ ctermfg=162 ctermbg=bg cterm=NONE
" }}}2


highlight SignColumn guifg=#a65774 guibg=bg gui=NONE
                \ ctermfg=252 ctermbg=234 cterm=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight SpecialKey guifg=#5842ff guibg=bg gui=NONE
                \ ctermfg=93 ctermbg=bg cterm=NONE


" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=16 ctermbg=253 cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=16 ctermbg=253 cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=15 ctermbg=19 cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=fg ctermbg=bg cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#cfafff gui=bold
      \ ctermfg=16 ctermbg=225 cterm=bold


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
                \ ctermfg=17 ctermbg=75 cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#795099 guibg=bg gui=undercurl
                \ ctermfg=93 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#506399 guibg=bg gui=undercurl
                \ ctermfg=27 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#509982 guibg=bg gui=undercurl
                \ ctermfg=42 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#998c50 guibg=bg gui=undercurl
                \ ctermfg=178 ctermbg=bg cterm=undercurl


" Pmenu: "{{{2
highlight Pmenu guifg=#333333 guibg=#cccccc gui=NONE
                \ ctermfg=235 ctermbg=144 cterm=NONE
highlight PmenuSel guifg=#d2d2d2 guibg=#1f2f5f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuKind guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=235 ctermbg=144 cterm=NONE
highlight PmenuKindSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=235 ctermbg=144 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfefff gui=NONE
                \ ctermfg=235 ctermbg=144 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
                \ ctermfg=235 ctermbg=144 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
                \ ctermfg=235 ctermbg=144 cterm=NONE
highlight PmenuSbar guifg=#6b4775 guibg=#0f0f0f gui=NONE
                \ ctermfg=57 ctermbg=232 cterm=NONE
highlight PmenuThumb guifg=#000000 guibg=#7f4aaf gui=NONE
                \ ctermfg=15 ctermbg=92 cterm=NONE


" Tabline: "{{{2
highlight TabLine guifg=#9d887c guibg=bg gui=underline
                \ ctermfg=138 ctermbg=234 cterm=underline
highlight TabLineFill guifg=#aaaaaa guibg=bg gui=underline
                \ ctermfg=250 ctermbg=bg cterm=underline
highlight TabLineSel guifg=#cfcfcf guibg=#0f1f2f gui=underline
                \ ctermfg=252 ctermbg=19 cterm=underline


" Tabpanel: "{{{2
highlight TabPanel guifg=#9d887c guibg=bg gui=NONE
                \ ctermfg=138 ctermbg=234 cterm=NONE
highlight TabPanelFill guifg=#aaaaaa guibg=bg gui=NONE
                \ ctermfg=250 ctermbg=bg cterm=NONE
highlight TabPanelSel guifg=#cfcfcf guibg=#0f1f2f gui=NONE
                \ ctermfg=252 ctermbg=19 cterm=NONE
highlight TabPaneltitle guifg=#000000 guibg=#afcfff gui=NONE
                \ ctermfg=17 ctermbg=159 cterm=NONE


" Cursor: "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
                \ ctermfg=NONE ctermbg=189 cterm=NONE
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
                \ ctermfg=NONE ctermbg=238 cterm=NONE
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
                \ ctermfg=0 ctermbg=152 cterm=NONE
highlight Cursor guifg=#000000 guibg=#bfbfbf gui=NONE
                \ ctermfg=0 ctermbg=252 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE


" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af2f3f gui=NONE
                \ ctermfg=0 ctermbg=197 cterm=NONE
endif

" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#0f2f3f gui=NONE
                \ ctermfg=NONE ctermbg=233 cterm=NONE
highlight CursorLineNr guifg=#0f3f8f guibg=#8fafff gui=NONE
                \ ctermfg=17 ctermbg=75 cterm=NONE
highlight CursorLineFold guifg=NONE guibg=#cfcfff gui=bold
                \ ctermfg=249 ctermbg=189 cterm=bold
highlight CursorLineSign guifg=NONE guibg=#3faf8f gui=bold
                \ ctermfg=253 ctermbg=36 cterm=bold


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



" #- Syntax highlighting groups -# "{{{1
highlight MatchParen guifg=#0f0f1f guibg=#5f93cd gui=bold
                \ ctermfg=17 ctermbg=39 cterm=bold,underline
highlight comment guifg=#5490f5 guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Constant guifg=#7dd97b guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight Special guifg=#deffed guibg=bg gui=NONE
                \ ctermfg=153 ctermbg=bg cterm=NONE
highlight Identifier guifg=#90cffa guibg=bg gui=NONE
                \ ctermfg=75 ctermbg=bg cterm=NONE
highlight Statement guifg=#ae7bd9 guibg=bg gui=NONE
                \ ctermfg=98 ctermbg=bg cterm=NONE
highlight PreProc guifg=#b871b7 guibg=bg gui=NONE
                \ ctermfg=134 ctermbg=bg cterm=NONE
highlight type guifg=#71c9af guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight underlined guifg=#66ffcc guibg=bg gui=underline
                \ ctermfg=48 ctermbg=bg cterm=underline
highlight Ignore guifg=#047f75 guibg=bg gui=NONE
                \ ctermfg=23 ctermbg=bg cterm=bold
highlight Error guifg=#f04f7e guibg=bg gui=NONE
                \ ctermfg=197 ctermbg=bg cterm=bold
highlight Todo guifg=#3268ca guibg=#1f1f2f gui=bold
                \ ctermfg=33 ctermbg=bg cterm=bold,underline
highlight string guifg=#a6caa6 guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
