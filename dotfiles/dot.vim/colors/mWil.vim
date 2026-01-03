" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date

" #- First remove all existing highlighting. -# "{{{1
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
" name: mwil
let g:colors_name = expand('<sfile>:t:r')


" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#3f3f3f guibg=#ffffff gui=NONE
          \ ctermfg=232 ctermbg=231 cterm=NONE
highlight NonText guifg=#3f7fff guibg=bg gui=bold
          \ ctermfg=33 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f7fff guibg=#fafaff gui=bold
          \ ctermfg=63 ctermbg=NONE cterm=bold
highlight Directory guifg=#0f6fff guibg=bg gui=bold
          \ ctermfg=33 ctermbg=bg cterm=bold


" Search: "{{{2
highlight IncSearch guifg=#5f1f3f guibg=#ff5f8f gui=bold,underline
          \ ctermfg=52 ctermbg=205 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
          \ ctermfg=58 ctermbg=220 cterm=bold,underline
highlight Search guifg=#1f3f8f guibg=#afcfff gui=bold,underline
          \ ctermfg=17 ctermbg=75 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#0f2fff guibg=#fafaff gui=NONE
          \ ctermfg=21 ctermbg=bg cterm=NONE
highlight ModeMsg guifg=#0faf8f guibg=#fafaff gui=NONE
          \ ctermfg=35 ctermbg=bg cterm=NONE
highlight MsgArea guifg=fg guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#cf2f4f guibg=#ffcfcf gui=NONE
          \ ctermfg=124 ctermbg=218 cterm=NONE
highlight WarningMsg guifg=#8f5f0f guibg=#ffdf5f gui=NONE
          \ ctermfg=58 ctermbg=222 cterm=NONE
highlight Question guifg=#2f5f3f guibg=#afdfcf gui=NONE
          \ ctermfg=28 ctermbg=152 cterm=NONE
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#ffffff guibg=#0f2f5f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE


" LineNr: "{{{2
highlight LineNr guifg=#afaf8f guibg=NONE gui=NONE
          \ ctermfg=248 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#3f8fff guibg=NONE gui=NONE
          \ ctermfg=33 ctermbg=bg cterm=NONE


" Statusline "{{{2
highlight StatusLine guifg=#0f0f5f guibg=#afcfff gui=NONE
          \ ctermfg=17 ctermbg=153 cterm=NONE
highlight StatusLineNC guifg=#5f5f5f guibg=#c4b2ab gui=NONE
          \ ctermfg=58 ctermbg=138 cterm=NONE
highlight StatusLineTerm guifg=#0f5f3f guibg=#8fffcf gui=NONE
          \ ctermfg=22 ctermbg=78 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=NONE
          \ ctermfg=52 ctermbg=139 cterm=NONE


"}}}2


highlight VertSplit guifg=#afafff guibg=#afafff gui=NONE
          \ ctermfg=238 ctermbg=250 cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
          \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
          \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#2f7f86 guibg=bg gui=bold,underline
          \ ctermfg=29 ctermbg=bg cterm=bold,underline


" Visual: "{{{2
highlight Visual guifg=#ffffff guibg=#1f2f8f gui=NONE
          \ ctermfg=15 ctermbg=19 cterm=NONE
highlight VisualNOS guifg=#ffffff guibg=#3f4f7f gui=bold,underline
          \ ctermfg=15 ctermbg=25 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#3f3f3f guibg=#efdfff gui=NONE
          \ ctermfg=237 ctermbg=225 cterm=NONE
highlight FoldColumn guifg=#af3f8f guibg=#efdfff gui=bold
          \ ctermfg=88 ctermbg=225 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=#1f4f0f guibg=#afffaf gui=NONE
          \ ctermfg=22 ctermbg=85 cterm=NONE
highlight DiffChange guifg=#7f7f2f guibg=#ffffcf gui=NONE
          \ ctermfg=58 ctermbg=229 cterm=NONE
highlight DiffDelete guifg=#8f2f2f guibg=#ffafaf gui=NONE
          \ ctermfg=52 ctermbg=204 cterm=NONE
highlight DiffText guifg=NONE guibg=NONE gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight DiffTextAdd guifg=#2faf5f guibg=bg gui=NONE
          \ ctermfg=35 ctermbg=bg cterm=NONE
highlight Added guifg=#2f8fff guibg=bg gui=NONE
          \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Changed guifg=#af7f2f guibg=bg gui=NONE
          \ ctermfg=179 ctermbg=bg cterm=NONE
highlight Removed guifg=#cf2f5f guibg=bg gui=NONE
          \ ctermfg=161 ctermbg=bg cterm=NONE


" }}}2


highlight SignColumn guifg=fg guibg=#efefff gui=NONE
          \ ctermfg=17 ctermbg=189 cterm=NONE
highlight Conceal guifg=fg guibg=#efafaf gui=NONE
          \ ctermfg=58 ctermbg=174 cterm=NONE
highlight SpecialKey guifg=#3f2fff guibg=bg gui=bold
          \ ctermfg=57 ctermbg=bg cterm=bold


" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#efefff gui=NONE
      \ ctermfg=236 ctermbg=189 cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#efefff gui=NONE
      \ ctermfg=236 ctermbg=189 cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#1f3f8f gui=NONE
      \ ctermfg=15 ctermbg=19 cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#0f0f0f guibg=#efefef gui=None
      \ ctermfg=23 ctermbg=73 cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#dfdfff gui=bold
      \ ctermfg=17 ctermbg=153 cterm=bold


" Toolbar: "{{{2
highlight ToolbarButton guifg=#0f0f0f guibg=#efefff gui=NONE
                \ ctermfg=236 ctermbg=255 cterm=NONE
highlight ToolbarLine guifg=fg guibg=#afafff gui=NONE
                \ ctermfg=17 ctermbg=111 cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=235 ctermbg=253 cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#cf3f7f guibg=bg gui=undercurl
          \ ctermfg=129 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#3f4fff guibg=bg gui=undercurl
          \ ctermfg=21 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#5fcf3f guibg=bg gui=undercurl
          \ ctermfg=48 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#ffaf0f guibg=bg gui=undercurl
          \ ctermfg=30 ctermbg=bg cterm=undercurl

" Pmenu: "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#efefff gui=NONE
          \ ctermfg=235 ctermbg=255 cterm=NONE
highlight PmenuSel guifg=#dfdfdf guibg=#1f2f8f gui=NONE
          \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
          \ ctermfg=235 ctermbg=255 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
          \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfefff gui=NONE
          \ ctermfg=235 ctermbg=255 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
          \ ctermfg=235 ctermbg=255 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
          \ ctermfg=15 ctermbg=19 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
          \ ctermfg=235 ctermbg=255 cterm=NONE
highlight PmenuSbar guifg=#ffffff guibg=#2f2f2f gui=NONE
          \ ctermfg=15 ctermbg=236 cterm=NONE
highlight PmenuThumb guifg=#ffffff guibg=#ff2f4f gui=NONE
          \ ctermfg=15 ctermbg=124 cterm=NONE


" Tabline: "{{{2
highlight TabLine guifg=#3f3f3f guibg=#fffafa gui=NONE
          \ ctermfg=238 ctermbg=255 cterm=NONE
highlight TabLineFill guifg=#5fafff guibg=#efefff gui=bold
          \ ctermfg=75 ctermbg=189 cterm=bold
highlight TabLineSel guifg=#ffffff guibg=#1f2f8f gui=NONE
          \ ctermfg=15 ctermbg=19 cterm=NONE


" Tabpanel: "{{{2
highlight TabPanel guifg=#0f0f0f guibg=#efefef gui=NONE
          \ ctermfg=238 ctermbg=255 cterm=NONE
highlight TabPanelFill guifg=#5f5f5f guibg=#afafaf gui=NONE
          \ ctermfg=75 ctermbg=189 cterm=NONE
highlight TabPanelSel guifg=#ffffff guibg=#1f2f7f gui=NONE
          \ ctermfg=15 ctermbg=19 cterm=NONE
highlight TabPanelTitle guifg=#efefef guibg=#0f2f3f gui=NONE
          \ ctermfg=15 ctermbg=17 cterm=NONE


" Cursor: "{{{2
highlight ColorColumn guifg=NONE guibg=#efefff gui=NONE
          \ ctermfg=240 ctermbg=254 cterm=NONE
highlight CursorColumn guifg=#000000 guibg=#ffefff gui=NONE
          \ ctermfg=240 ctermbg=225 cterm=NONE
highlight lCursor guifg=#0f0f0f guibg=#5fafff gui=NONE
          \ ctermfg=16 ctermbg=33 cterm=NONE
highlight Cursor guifg=#000000 guibg=#1faf8f gui=NONE
          \ ctermfg=16 ctermbg=30 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
          \ ctermfg=NONE ctermbg=250 cterm=NONE


" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM gui=NONE guifg=#000000 guibg=#af4f5f
          \ ctermfg=15 ctermbg=52 cterm=NONE
endif


" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#dfefff gui=NONE
          \ ctermfg=NONE ctermbg=195 cterm=NONE
highlight CursorLineNr guifg=#afaf8f guibg=#ffefef gui=NONE
          \ ctermfg=250 ctermbg=224 cterm=NONE
highlight CursorLineSign guifg=NONE guibg=#8faf8f gui=bold
          \ ctermfg=235 ctermbg=65 cterm=bold
highlight CursorLineFold guifg=NONE guibg=#cfcfff gui=bold
          \ ctermfg=238 ctermbg=189 cterm=bold



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
highlight MatchParen guifg=#0f0f5f guibg=#3fafff gui=bold,underline
          \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight comment guifg=#1f8fff guibg=bg gui=NONE
          \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Constant guifg=#1faf5f guibg=bg gui=NONE
          \ ctermfg=35 ctermbg=bg cterm=NONE
highlight Special guifg=#1f3fff guibg=bg gui=NONE
          \ ctermfg=20 ctermbg=bg cterm=NONE
highlight Identifier guifg=#ff9f3f guibg=bg gui=NONE
          \ ctermfg=208 ctermbg=bg cterm=NONE
highlight Statement guifg=#1f5fff guibg=bg gui=NONE
          \ ctermfg=27 ctermbg=bg cterm=NONE
highlight PreProc guifg=#ff5f7f guibg=bg gui=NONE
          \ ctermfg=204 ctermbg=bg cterm=NONE
highlight type guifg=#af0fff guibg=bg gui=NONE
          \ ctermfg=92 ctermbg=bg cterm=NONE
highlight underlined guifg=#3faf6f guibg=bg gui=bold,underline
          \ ctermfg=35 ctermbg=bg cterm=bold,underline
highlight Ignore guifg=#7f7f7f guibg=bg gui=bold
          \ ctermfg=66 ctermbg=bg cterm=bold
highlight Error guifg=#a04f7e guibg=#ffefff gui=NONE
          \ ctermfg=5 ctermbg=225 cterm=NONE
highlight Todo guifg=#af2f5f guibg=#efefef gui=bold,underline
          \ ctermfg=124 ctermbg=254 cterm=bold,underline
highlight string guifg=#af4f8f guibg=bg gui=NONE
          \ ctermfg=173 ctermbg=bg cterm=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


