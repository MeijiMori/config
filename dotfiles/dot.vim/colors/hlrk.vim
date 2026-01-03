" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/

" #- reset-# "{{{1
" First remove all existing highlighting.
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
" name: hlrk
let g:colors_name = expand('<sfile>:t:r')



" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#0a301f gui=NONE
          \ ctermfg=15 ctermbg=23 cterm=NONE
highlight NonText guifg=#8fcfff guibg=bg gui=bold
          \ ctermfg=51 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=69 ctermbg=NONE cterm=NONE
highlight Directory guifg=#3f8fff guibg=NONE gui=bold
          \ ctermfg=81 ctermbg=bg cterm=bold



" Search: "{{{2
highlight IncSearch guifg=#5f0f1f guibg=#cf5f5f gui=bold,underline
          \ ctermfg=52 ctermbg=204 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=58 ctermbg=220 cterm=bold,underline
highlight Search guifg=#1f1f3f guibg=#5f5fcf gui=bold,underline
          \ ctermfg=17 ctermbg=63 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#0f2f0f guibg=#5faf5f gui=underline
          \ ctermfg=22 ctermbg=41 cterm=underline
highlight ModeMsg guifg=#0f0f2f guibg=#5f5faf gui=underline
          \ ctermfg=17 ctermbg=12 cterm=underline
highlight MsgArea guifg=fg guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#3f0f0f guibg=#cf5f5f gui=NONE
          \ ctermfg=52 ctermbg=204 cterm=NONE
highlight WarningMsg guifg=#8f1f3f guibg=#cf5f5f gui=NONE
          \ ctermfg=52 ctermbg=9 cterm=NONE
highlight Question guifg=#002f0f guibg=#5fcf8f gui=underline
          \ ctermfg=0 ctermbg=85 cterm=underline
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#cfcfcf guibg=#00001f gui=underline
          \ ctermfg=255 ctermbg=233 cterm=underline


" LineNr: "{{{2
highlight LineNr guifg=#af8fff guibg=NONE gui=NONE
          \ ctermfg=141 ctermbg=bg cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=248 ctermbg=bg cterm=NONE



" Statusline "{{{2
highlight StatusLine guifg=#afafaf guibg=#001f2f gui=underline
          \ ctermfg=250 ctermbg=234 cterm=underline
highlight StatusLineNC guifg=#7f5f6f guibg=#ffcfcf gui=underline
          \ ctermfg=95 ctermbg=181 cterm=underline
highlight StatusLineTerm guifg=#000f2f guibg=#cfccff gui=NONE
          \ ctermfg=235 ctermbg=189 cterm=NONE
highlight StatusLineTermNc guifg=#002f2f guibg=#8fafcf gui=NONE
          \ ctermfg=21 ctermbg=153 cterm=NONE


" }}}2


highlight VertSplit guifg=#2f3f8f guibg=#0a2a1f gui=underline
          \ ctermfg=12 ctermbg=24 cterm=underline
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
          \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
          \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#ff5f2f guibg=bg gui=underline
          \ ctermfg=202 ctermbg=bg cterm=underline



" Visual: "{{{2
highlight Visual guifg=#efefef guibg=#1f3f3f gui=NONE
          \ ctermfg=15 ctermbg=29 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#2f3f7f gui=bold,underline
          \ ctermfg=15 ctermbg=12 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#afa0af guibg=#102f2f gui=NONE
          \ ctermfg=250 ctermbg=24 cterm=NONE
highlight FoldColumn guifg=#8f8fff guibg=#0f2f2f gui=bold
          \ ctermfg=141 ctermbg=23 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=fg guibg=#1f8f3f gui=NONE
          \ ctermfg=NONE ctermbg=30 cterm=NONE
highlight DiffChange guifg=fg guibg=#af3f1f gui=NONE
          \ ctermfg=NONE ctermbg=166 cterm=NONE
highlight DiffDelete guifg=fg guibg=#8f1f1f gui=NONE
          \ ctermfg=NONE ctermbg=124 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
          \ ctermfg=115 ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
          \ ctermfg=81 ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
          \ ctermfg=214 ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
          \ ctermfg=124 ctermbg=bg cterm=NONE
" }}}2


highlight SignColumn guifg=#ffffff guibg=#0f1f1f gui=NONE
          \ ctermfg=231 ctermbg=236 cterm=NONE
highlight Conceal guifg=#ff5f7f guibg=bg gui=NONE
          \ ctermfg=52 ctermbg=225 cterm=NONE
highlight SpecialKey guifg=#8f5fff guibg=bg gui=NONE
          \ ctermfg=165 ctermbg=bg cterm=NONE


" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=238 ctermbg=189 cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=238 ctermbg=189 cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=15 ctermbg=19 cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=235 ctermbg=31 cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#cfafff gui=bold
      \ ctermfg=22 ctermbg=73 cterm=bold


" Toolbar: "{{{2
highlight ToolbarButton guifg=#3f1f8f guibg=#afafff gui=NONE
          \ ctermfg=17 ctermbg=183 cterm=NONE
highlight ToolbarLine guifg=#5f0f0f guibg=#df3fcf gui=NONE
          \ ctermfg=52 ctermbg=206 cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
          \ ctermfg=236 ctermbg=254 cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
          \ ctermfg=17 ctermbg=81 cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#8f6faf guibg=bg gui=undercurl
          \ ctermfg=105 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#6f7faf guibg=bg gui=undercurl
          \ ctermfg=75 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#6faf9f guibg=bg gui=undercurl
          \ ctermfg=43 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#af9f6f guibg=bg gui=undercurl
          \ ctermfg=187 ctermbg=bg cterm=undercurl


" Pmenu: "{{{2
highlight Pmenu guifg=fg guibg=#0f201f gui=NONE
          \ ctermfg=253 ctermbg=235 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
          \ ctermfg=253 ctermbg=235 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
          \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfefff gui=NONE
          \ ctermfg=253 ctermbg=235 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
          \ ctermfg=253 ctermbg=235 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
          \ ctermfg=15 ctermbg=19 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
          \ ctermfg=253 ctermbg=235 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#1f1f3f gui=NONE
          \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuSbar guifg=fg guibg=#1f1f2f gui=NONE
          \ ctermfg=15 ctermbg=232 cterm=NONE
highlight PmenuThumb guifg=fg guibg=#0f0f1f gui=NONE
          \ ctermfg=15 ctermbg=78 cterm=NONE


" Tabline: "{{{2
highlight TabLine guifg=#afafaf guibg=#0f1f2f gui=NONE
          \ ctermfg=251 ctermbg=233 cterm=NONE
highlight TabLineFill guifg=#8fcfaf guibg=#0f1f2f gui=bold
          \ ctermfg=42 ctermbg=233 cterm=bold
highlight TabLineSel guifg=#cfcfcf guibg=#0f2f5f gui=NONE
          \ ctermfg=15 ctermbg=18 cterm=NONE


" Tabpanel: "{{{2
highlight TabPanel guifg=#afafaf guibg=#0f1f2f gui=NONE
          \ ctermfg=251 ctermbg=233 cterm=NONE
highlight TabPanelFill guifg=#8fcfaf guibg=#0f1f2f gui=bold
          \ ctermfg=42 ctermbg=233 cterm=bold
highlight TabPanelSel guifg=#cfcfcf guibg=#0f2f5f gui=NONE
          \ ctermfg=15 ctermbg=18 cterm=NONE
highlight TabPanelTitle guifg=#000000 guibg=#efefff gui=NONE
          \ ctermfg=238 ctermbg=252 cterm=NONE



" Cursor: "{{{2
highlight ColorColumn guifg=#000000 guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=27 cterm=NONE
highlight CursorColumn guifg=#000000 guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=107 cterm=NONE
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
          \ ctermfg=16 ctermbg=114 cterm=NONE
highlight Cursor guifg=fg guibg=#0f0f1f gui=NONE
          \ ctermfg=15 ctermbg=16 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
          \ ctermfg=NONE ctermbg=250 cterm=NONE

" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af1f3f gui=NONE
          \ ctermfg=15 ctermbg=52 cterm=NONE
endif

" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#2f3f2f gui=NONE
          \ ctermfg=NONE ctermbg=22 cterm=NONE
highlight CursorLineNr guifg=#af8fff guibg=#afff9f gui=NONE
          \ ctermfg=36 ctermbg=193 cterm=bold
highlight CursorLineSign guifg=NONE guibg=#8faf8f gui=bold
          \ ctermfg=255 ctermbg=30 cterm=bold
highlight CursorLineFold guifg=NONE guibg=#cfcfff gui=bold
          \ ctermfg=255 ctermbg=189 cterm=bold

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
highlight MatchParen guifg=#000000 guibg=#bfbfff gui=bold
          \ ctermfg=235 ctermbg=147 cterm=bold,underline
highlight comment guifg=#2fefaf guibg=bg gui=NONE
          \ ctermfg=79 ctermbg=bg cterm=NONE
highlight Constant guifg=#3faf5f guibg=bg gui=NONE
          \ ctermfg=35 ctermbg=bg cterm=NONE
highlight Special guifg=#cfbfff guibg=bg gui=NONE
          \ ctermfg=189 ctermbg=bg cterm=NONE
highlight Identifier guifg=#cf8fff guibg=bg gui=NONE
          \ ctermfg=213 ctermbg=bg cterm=NONE
highlight Statement guifg=#5f4fff guibg=bg gui=NONE
          \ ctermfg=63 ctermbg=bg cterm=NONE
highlight PreProc guifg=#5f8fcf guibg=bg gui=NONE
          \ ctermfg=74 ctermbg=bg cterm=NONE
highlight type guifg=#ff3f5f guibg=bg gui=NONE
          \ ctermfg=9 ctermbg=bg cterm=NONE
highlight underlined guifg=#0f7f3f guibg=bg gui=underline
          \ ctermfg=41 ctermbg=bg cterm=underline
highlight Ignore guifg=#1f5f3f guibg=bg gui=bold
          \ ctermfg=35 ctermbg=bg cterm=bold
highlight Error guifg=#8f0f0f guibg=#cf5f5f gui=NONE
          \ ctermfg=52 ctermbg=203 cterm=NONE
highlight Todo guifg=#8f8fff guibg=#cfcfff gui=bold,underline
          \ ctermfg=105 ctermbg=195 cterm=bold,underline
highlight string guifg=#ff2f5f guibg=bg gui=NONE
          \ ctermfg=197 ctermbg=bg cterm=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


