" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/

" #- First remove all existing highlighting. -# "{{{1
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
" name: gL
let g:colors_name = expand('<sfile>:t:r')



" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#1f1f1f guibg=#ffeffa gui=NONE
                \ ctermfg=232 ctermbg=225 cterm=NONE
highlight NonText guifg=#af3faf guibg=#ffefff gui=bold
                \ ctermfg=128 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#5f8fff guibg=#ffefff gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=bold
highlight Directory guifg=#0f6fff guibg=bg gui=bold
                \ ctermfg=27 ctermbg=bg cterm=bold


" Search: "{{{2
highlight IncSearch guifg=#5f0000 guibg=#ff2f5f gui=bold,underline
                \ ctermfg=52 ctermbg=125 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=58 ctermbg=220 cterm=bold,underline
highlight Search guifg=#005f2f guibg=#2faf8f gui=bold,underline
                \ ctermfg=22 ctermbg=71 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#0f3f5f guibg=#cfcfff gui=underline
                \ ctermfg=17 ctermbg=69 cterm=underline
highlight ModeMsg guifg=#0f5f3f guibg=#cfffcf gui=underline
                \ ctermfg=22 ctermbg=115 cterm=underline
highlight MsgArea guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#8f2f4f guibg=#ffcfcf gui=NONE
                \ ctermfg=88 ctermbg=213 cterm=NONE
highlight WarningMsg guifg=#cf2f4f guibg=#ffcfcf gui=NONE
                \ ctermfg=94 ctermbg=221 cterm=NONE
highlight Question guifg=#5f0f3f guibg=#ffcfcf gui=underline
                \ ctermfg=52 ctermbg=213 cterm=underline
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#cfcfcf guibg=#2f3f5f gui=NONE
                \ ctermfg=231 ctermbg=19 cterm=NONE


" LineNr: {{{2
highlight LineNr guifg=#af5f1f guibg=NONE gui=NONE
                \ ctermfg=130 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=250 ctermbg=bg cterm=NONE



" Statusline "{{{2
highlight StatusLine guifg=#5f5f5f guibg=#cfcfcf gui=NONE
                \ ctermfg=239 ctermbg=249 cterm=NONE
highlight StatusLineNC guifg=#6f6f6f guibg=#efdfcf gui=NONE
                \ ctermfg=239 ctermbg=181 cterm=NONE
highlight StatusLineTerm guifg=#000f2f guibg=#cfccff gui=NONE
                \ ctermfg=27 ctermbg=153 cterm=NONE
highlight StatusLineTermNc guifg=#002f2f guibg=#8fafcf gui=NONE
                \ ctermfg=18 ctermbg=111 cterm=NONE


" }}}2


highlight VertSplit guifg=#6f6f6f guibg=#efe0d0 gui=bold
                \ ctermfg=241 ctermbg=181 cterm=bold
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#af5f8f guibg=#efefff gui=bold,underline
                \ ctermfg=94 ctermbg=255 cterm=bold,underline



" Visual: "{{{2
highlight Visual guifg=#ffffff guibg=#1f2f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight VisualNOS guifg=#ffffff guibg=#3f4f8f gui=bold,underline
                \ ctermfg=230 ctermbg=27 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#5f5f5f guibg=#efdfef gui=NONE
                \ ctermfg=239 ctermbg=188 cterm=NONE
highlight FoldColumn guifg=#5f5faf guibg=#fff0fc gui=bold
                \ ctermfg=63 ctermbg=bg cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=fg guibg=#8fffcf gui=NONE
                \ ctermfg=16 ctermbg=42 cterm=NONE
highlight DiffChange guifg=fg guibg=#ffffcf gui=NONE
                \ ctermfg=16 ctermbg=228 cterm=NONE
highlight DiffDelete guifg=fg guibg=#ffafcf gui=NONE
                \ ctermfg=16 ctermbg=213 cterm=NONE
highlight DiffText guifg=#4f4f4f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
                \ ctermfg=30 ctermbg=bg cterm=NONE
highlight Added guifg=#0f8fcf guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Changed guifg=#cf8f0f guibg=bg gui=NONE
                \ ctermfg=172 ctermbg=bg cterm=NONE
highlight Removed guifg=#cf2f5f guibg=bg gui=NONE
                \ ctermfg=126 ctermbg=bg cterm=NONE
" }}}


highlight SignColumn guifg=#0f0f0f guibg=#ffdfef gui=NONE
                \ ctermfg=233 ctermbg=219 cterm=NONE
highlight Conceal guifg=#7f2f4f guibg=#ffafaf gui=NONE
                \ ctermfg=52 ctermbg=165 cterm=NONE
highlight SpecialKey guifg=#5fafff guibg=bg gui=NONE
                \ ctermfg=75 ctermbg=bg cterm=NONE



" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=16 ctermbg=189 cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=235 ctermbg=183 cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=15 ctermbg=19 cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=22 ctermbg=79 cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=NONE guibg=#afdfff gui=bold
      \ ctermfg=24 ctermbg=81 cterm=bold


" Toolbar: "{{{2
highlight ToolbarButton guifg=#5f5f8f guibg=#dfdfff gui=NONE
                \ ctermfg=246 ctermbg=189 cterm=NONE
highlight ToolbarLine guifg=fg guibg=#efefff gui=NONE
                \ ctermfg=246 ctermbg=255 cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=235 ctermbg=255 cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#afafaf gui=None
                \ ctermfg=236 ctermbg=247 cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#af3f7f guibg=bg gui=undercurl
                \ ctermfg=53 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#3f4faf guibg=bg gui=undercurl
                \ ctermfg=12 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#2faf3f guibg=bg gui=undercurl
                \ ctermfg=36 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#af8fff guibg=bg gui=undercurl
                \ ctermfg=29 ctermbg=bg cterm=undercurl


" Pmenu: "{{{2
highlight Pmenu guifg=#ffffff guibg=#0f0f1f gui=NONE
                \ ctermfg=251 ctermbg=232 cterm=NONE
highlight PmenuExtra guifg=#ffffff guibg=#2f2f2f gui=NONE
                \ ctermfg=251 ctermbg=232 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuKind guifg=#ffffff guibg=#1f1f1f gui=NONE
                \ ctermfg=251 ctermbg=232 cterm=NONE
highlight PmenuKindSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuMatch guifg=#ffffff guibg=#1f1f2f gui=NONE
                \ ctermfg=251 ctermbg=232 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
                \ ctermfg=251 ctermbg=232 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
                \ ctermfg=251 ctermbg=16 cterm=NONE
highlight PmenuSel guifg=#ffffff guibg=#1f2f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuSbar guifg=#ffffff guibg=#5f5f8f gui=NONE
                \ ctermfg=15 ctermbg=240 cterm=NONE
highlight PmenuThumb guifg=#ffffff guibg=#2f8fff gui=NONE
                \ ctermfg=15 ctermbg=81 cterm=NONE

" Tabline: "{{{2
highlight TabLine guifg=#3f3f3f guibg=#efdfdf gui=NONE
                \ ctermfg=238 ctermbg=183 cterm=NONE
highlight TabLineFill guifg=#0f3f8f guibg=#ffefff gui=NONE
                \ ctermfg=21 ctermbg=183 cterm=NONE
highlight TabLineSel guifg=#ffffff guibg=#1f2f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE


" Tabpanel: "{{{2
highlight TabPanel guifg=#0f0f0f guibg=#ffdfef gui=NONE
                \ ctermfg=238 ctermbg=183 cterm=NONE
highlight TabPanelFill guifg=#5f5f5f guibg=#ffefff gui=NONE
                \ ctermfg=239 ctermbg=183 cterm=NONE
highlight TabPanelSel guifg=#ffffff guibg=#1f2f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight TabPanelTitle guifg=#000000 guibg=#ffcfef gui=NONE
                \ ctermfg=16 ctermbg=183 cterm=NONE


" Cursor: "{{{2
highlight ColorColumn guifg=#0f0f0f guibg=#efcfff gui=NONE
                \ ctermfg=16 ctermbg=183 cterm=NONE
highlight CursorColumn guifg=#000000 guibg=#afcfff gui=NONE
                \ ctermfg=16 ctermbg=153 cterm=NONE
highlight lCursor guifg=#0f0f0f guibg=#7effff gui=NONE
                \ ctermfg=17 ctermbg=122 cterm=NONE
highlight Cursor guifg=#ffffff guibg=#5f2fff gui=NONE
                \ ctermfg=15 ctermbg=57 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE


" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af2f3f gui=NONE
                \ ctermfg=0 ctermbg=124 cterm=NONE
endif


" Cursorline "{{{2
highlight CursorLine guifg=NONE guibg=#dfefff gui=NONE
                \ ctermfg=NONE ctermbg=153 cterm=NONE
highlight CursorLineNr guifg=#8f2fff guibg=#ffdffa gui=bold
                \ ctermfg=88 ctermbg=219 cterm=bold
highlight CursorLineSign guifg=NONE guibg=#8faf8f gui=bold
                \ ctermfg=22 ctermbg=71 cterm=bold
highlight CursorLineFold guifg=NONE guibg=#cfcfff gui=bold
                \ ctermfg=235 ctermbg=153 cterm=bold


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
highlight MatchParen guifg=#ffcf3f guibg=#2f438f gui=bold,underline
                \ ctermfg=226 ctermbg=26 cterm=bold,underline
highlight comment guifg=#1f4faf guibg=bg gui=NONE
                \ ctermfg=25 ctermbg=bg cterm=NONE
highlight Constant guifg=#cf2f8f guibg=bg gui=NONE
                \ ctermfg=124 ctermbg=bg cterm=NONE
highlight Special guifg=#5f8fff guibg=bg gui=NONE
                \ ctermfg=75 ctermbg=bg cterm=NONE
highlight Identifier guifg=#0fafaf guibg=bg gui=NONE
                \ ctermfg=35 ctermbg=bg cterm=NONE
highlight Statement guifg=#cf4f8f guibg=bg gui=NONE
                \ ctermfg=161 ctermbg=bg cterm=NONE
highlight PreProc guifg=#6f3fff guibg=bg gui=NONE
                \ ctermfg=129 ctermbg=bg cterm=NONE
highlight type guifg=#5f8fcf guibg=bg gui=NONE
                \ ctermfg=31 ctermbg=bg cterm=NONE
highlight underlined guifg=#1faf3f guibg=bg gui=underline
                \ ctermfg=28 ctermbg=bg cterm=underline
highlight Ignore guifg=#cfafff guibg=bg gui=bold
                \ ctermfg=147 ctermbg=bg cterm=bold
highlight Error guifg=#7f1f4f guibg=#ffcfcf gui=NONE
                \ ctermfg=52 ctermbg=213 cterm=NONE
highlight Todo guifg=#af2f5f guibg=#ffcfef gui=bold,underline
                \ ctermfg=125 ctermbg=218 cterm=bold,underline
highlight string guifg=#af8faf guibg=bg gui=NONE
                \ ctermfg=142 ctermbg=bg cterm=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim



