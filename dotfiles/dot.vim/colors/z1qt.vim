" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Inspered K_Rider Eternal



" #- reset -# "{{{1
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
" name: z1qt
let g:colors_name = expand('<sfile>:t:r')



" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#000000 guibg=#f0f0ff gui=NONE
                \ ctermfg=0 ctermbg=231 cterm=NONE
highlight NonText guifg=#5f33ff guibg=bg gui=NONE
                \ ctermfg=105 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=63 ctermbg=NONE cterm=bold
highlight Directory guifg=#1f2f5f guibg=bg gui=bold
                \ ctermfg=18 ctermbg=bg cterm=bold


" Search: "{{{2
highlight IncSearch guifg=#000000 guibg=#ff5f65 gui=bold
                \ ctermfg=52 ctermbg=197 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=100 ctermbg=220 cterm=bold,underline
highlight Search guifg=#000000 guibg=#5f8fff gui=bold
                \ ctermfg=25 ctermbg=153 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#2f4f7f guibg=#cfcfff gui=NONE
                \ ctermfg=17 ctermbg=111 cterm=NONE
highlight ModeMsg guifg=#2faf8f guibg=#cfffcf gui=NONE
                \ ctermfg=35 ctermbg=121 cterm=NONE
highlight MsgArea guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#cf2f4f guibg=#ffcfcf gui=NONE
                \ ctermfg=52 ctermbg=211 cterm=NONE
highlight WarningMsg guifg=#cf2f4f guibg=#ffdfff gui=NONE
                \ ctermfg=136 ctermbg=222 cterm=NONE
highlight Question guifg=#2faf6f guibg=#cfffff gui=NONE
                \ ctermfg=22 ctermbg=158 cterm=NONE
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#ffffff guibg=#0f2f5f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE


" LineNr: "{{{2
highlight LineNr guifg=#3f7faf guibg=NONE gui=NONE
                \ ctermfg=27 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=57 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=250 ctermbg=bg cterm=NONE



" Statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#2f2f4f gui=NONE
                \ ctermfg=15 ctermbg=233 cterm=NONE
highlight StatusLineNC guifg=#6f6f6f guibg=#cfbfbf gui=NONE
                \ ctermfg=240 ctermbg=181 cterm=NONE
highlight StatusLineTerm guifg=#0f3f8f guibg=#afcfff gui=NONE
                \ ctermfg=17 ctermbg=153 cterm=NONE
highlight StatusLineTermNC guifg=#8f7f5f guibg=#c0afcf gui=NONE
                \ ctermfg=96 ctermbg=183 cterm=NONE


" }}}2



highlight VertSplit guifg=bg guibg=bg gui=bold
                \ ctermfg=bg ctermbg=bg cterm=bold
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#2f7f86 guibg=bg gui=underline
                \ ctermfg=29 ctermbg=bg cterm=underline



" Visual: "{{{2
highlight Visual guifg=#ffffff guibg=#1f2f5f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#3f4f7f gui=bold,underline
                \ ctermfg=255 ctermbg=27 cterm=bold,underline



" Fold: "{{{2
highlight Folded guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=233 ctermbg=189 cterm=NONE
highlight FoldColumn guifg=#0f1f5f guibg=#cfcfff gui=bold
                \ ctermfg=17 ctermbg=189 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=fg guibg=#bfffbf gui=NONE
                \ ctermfg=NONE ctermbg=121 cterm=NONE
highlight DiffChange guifg=fg guibg=#ffffbf gui=NONE
                \ ctermfg=NONE ctermbg=186 cterm=NONE
highlight DiffDelete guifg=fg guibg=#ffbfbf gui=bold
                \ ctermfg=NONE ctermbg=217 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
                \ ctermfg=72 ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
                \ ctermfg=178 ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
                \ ctermfg=124 ctermbg=bg cterm=NONE


" }}}2


highlight SignColumn guifg=fg guibg=#dfdfff gui=NONE
                \ ctermfg=234 ctermbg=255 cterm=NONE
highlight Conceal guifg=#7f2f4f guibg=bg gui=NONE
                \ ctermfg=248 ctermbg=255 cterm=NONE
highlight SpecialKey guifg=#6f2f6f guibg=bg gui=NONE
                \ ctermfg=92 ctermbg=bg cterm=NONE


" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=238 ctermbg=189 cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=238 ctermbg=189 cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=15 ctermbg=19 cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=23 ctermbg=79 cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#cfafff gui=bold
      \ ctermfg=53 ctermbg=183 cterm=bold


" Toolbar: "{{{2
highlight ToolbarButton guifg=#5f5f8f guibg=#cfefff gui=bold
                \ ctermfg=27 ctermbg=117 cterm=NONE
highlight ToolbarLine guifg=fg guibg=#efcfff gui=NONE
                \ ctermfg=197 ctermbg=225 cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=235 ctermbg=255 cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=24 ctermbg=73 cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#af3f5f guibg=bg gui=undercurl
                \ ctermfg=125 ctermbg=bg cterm=underline
highlight SpellCap guifg=#3f4f7f guibg=bg gui=undercurl
                \ ctermfg=26 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#3f7f6f guibg=bg gui=undercurl
                \ ctermfg=29 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#5faf3f guibg=bg gui=undercurl
                \ ctermfg=77 ctermbg=bg cterm=undercurl

" Pmenu: "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=234 ctermbg=189 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=234 ctermbg=189 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfefff gui=NONE
                \ ctermfg=234 ctermbg=189 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
                \ ctermfg=234 ctermbg=189 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
                \ ctermfg=234 ctermbg=189 cterm=NONE
highlight PmenuSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuSbar guifg=#cccccc guibg=#2f2f2f gui=NONE
                \ ctermfg=248 ctermbg=236 cterm=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#6f2f4f gui=NONE
                \ ctermfg=15 ctermbg=89 cterm=NONE


" Tabline: "{{{2
highlight TabLine guifg=#cf3f8f guibg=#0f1f3f gui=NONE
                \ ctermfg=162 ctermbg=232 cterm=NONE
highlight TabLineFill guifg=#3f5fff guibg=#0f1f3f gui=NONE
                \ ctermfg=27 ctermbg=233 cterm=NONE
highlight TabLineSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE


" Tabpanel: "{{{2
highlight TabPanel guifg=#cf3f8f guibg=#0f1f3f gui=NONE
                \ ctermfg=162 ctermbg=232 cterm=NONE
highlight TabPanelFill guifg=#3f5fff guibg=#0f1f3f gui=NONE
                \ ctermfg=27 ctermbg=233 cterm=NONE
highlight TabPanelSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight TabPanelTitle guifg=#000000 guibg=#efefff gui=NONE
                \ ctermfg=232 ctermbg=189 cterm=NONE


" Cursor: "{{{2
highlight ColorColumn guifg=#cfcfcf guibg=#1f2f6f gui=NONE
                \ ctermfg=0 ctermbg=203 cterm=NONE
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
                \ ctermfg=249 ctermbg=234 cterm=NONE
highlight lCursor guifg=#2f2f2f guibg=#7ea3a6 gui=NONE
                \ ctermfg=23 ctermbg=73 cterm=NONE
highlight Cursor guifg=#cfcfcf guibg=#1f2f6f gui=NONE
                \ ctermfg=15 ctermbg=21 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE



" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af4f5f gui=NONE
                \ ctermfg=15 ctermbg=88 cterm=NONE
endif




" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#dfefff gui=NONE
                \ ctermfg=NONE ctermbg=195 cterm=NONE
highlight CursorLineNr guifg=#9f4f7f guibg=#af8fff gui=NONE
                \ ctermfg=88 ctermbg=183 cterm=bold
highlight CursorLineSign guifg=NONE guibg=#8faf8f gui=bold
                \ ctermfg=235 ctermbg=79 cterm=bold
highlight CursorLineFold guifg=NONE guibg=#cfcfff gui=bold
                \ ctermfg=236 ctermbg=147 cterm=bold



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
highlight MatchParen guifg=#0f0f0f guibg=#2f2f8d gui=bold
                \ ctermfg=17 ctermbg=61 cterm=bold,underline
highlight comment guifg=#1f4faf guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Constant guifg=#1f5f3f guibg=bg gui=NONE
                \ ctermfg=23 ctermbg=bg cterm=NONE
highlight Special guifg=#2f2f5f guibg=bg gui=NONE
                \ ctermfg=18 ctermbg=bg cterm=NONE
highlight Identifier guifg=#9f2f3f guibg=bg gui=NONE
                \ ctermfg=124 ctermbg=bg cterm=NONE
highlight Statement guifg=#4f5faf guibg=bg gui=NONE
                \ ctermfg=26 ctermbg=bg cterm=NONE
highlight PreProc guifg=#9f2faf guibg=bg gui=NONE
                \ ctermfg=127 ctermbg=bg cterm=NONE
highlight Type guifg=#7f2f7f guibg=bg gui=NONE
                \ ctermfg=89 ctermbg=bg cterm=NONE
highlight underlined guifg=#3f5faf guibg=#cfcfff gui=bold,underline
                \ ctermfg=25 ctermbg=253 cterm=bold,underline
highlight Ignore guifg=#1f2f3f guibg=bg gui=bold
                \ ctermfg=237 ctermbg=bg cterm=bold
highlight Error guifg=#a04f7e guibg=#ffcfcf gui=NONE
                \ ctermfg=197 ctermbg=225 cterm=NONE
highlight Todo guifg=#af2f5f guibg=#cfcfff gui=bold,underline
                \ ctermfg=161 ctermbg=189 cterm=bold,underline
highlight String guifg=#8f4f2f guibg=bg gui=NONE
                \ ctermfg=130 ctermbg=bg cterm=NONE


" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


