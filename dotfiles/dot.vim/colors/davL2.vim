" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" White and Black


"}}}1
" #- reset -# "{{{1
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
" name davL2
let g:colors_name = expand('<sfile>:t:r')

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#000000 gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
highlight NonText guifg=#0f8fff guibg=bg gui=NONE
                \ ctermfg=26 ctermbg=bg cterm=NONE
highlight EndOfBuffer guifg=#2f8fff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight PreInsert guifg=#ff8f8f guibg=bg gui=NONE
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#1f5fff guibg=bg gui=bold
                \ ctermfg=23 ctermbg=bg cterm=bold



" Search: "{{{2
highlight IncSearch guifg=#3f0000 guibg=#cf2f8f gui=bold,underline
                \ ctermfg=88 ctermbg=163 cterm=bold,underline
highlight CurSearch guifg=#5f3f0f guibg=#ffcfaf gui=bold,underline
                \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#0f0f0f guibg=#5f8fff gui=bold,underline
                \ ctermfg=17 ctermbg=25 cterm=bold,underline



" Message: {{{2
highlight MoreMsg guifg=#2f4f7f guibg=#cfcfff gui=NONE
                \ ctermfg=19 ctermbg=153 cterm=NONE
highlight ModeMsg guifg=#2faf8f guibg=#cfffcf gui=NONE
                \ ctermfg=41 ctermbg=158 cterm=NONE
highlight MsgArea guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#3f0f0f guibg=#ff3f8f gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
highlight WarningMsg guifg=#5f5f1f guibg=#ffaf4f gui=NONE
                \ ctermfg=197 ctermbg=bg cterm=NONE
highlight Question guifg=#2faf6f guibg=#cfffff gui=NONE
                \ ctermfg=41 ctermbg=158 cterm=NONE
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#ffffff guibg=#0f2f8f gui=NONE
                \ ctermfg=252 ctermbg=21 cterm=NONE


" LineNr: "{{{2
highlight LineNr guifg=#3f7faf guibg=NONE gui=NONE
                \ ctermfg=111 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE



" Statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#2f2f4f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight StatusLineNC guifg=#5f3f2f guibg=#cfbfbf gui=NONE
                \ ctermfg=237 ctermbg=138 cterm=NONE
highlight StatusLineTerm guifg=#000f2f guibg=#cfccff gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight StatusLineTermNc guifg=#002f2f guibg=#8fafcf gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE


" }}}2


highlight VertSplit guifg=bg guibg=bg gui=bold
                \ ctermfg=0 ctermbg=0 cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#2fcf86 guibg=bg gui=bold,underline
                \ ctermfg=29 ctermbg=bg cterm=bold,underline



" Visual: "{{{2
highlight Visual guifg=#ffffff guibg=#1f2f8f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#3f4f7f gui=underline,bold
                \ ctermfg=145 ctermbg=69 cterm=underline,bold


" Fold: "{{{2
highlight Folded guifg=#cfcfcf guibg=#0f1f1f gui=NONE
                \ ctermfg=26 ctermbg=16 cterm=NONE
highlight FoldColumn guifg=#4f3fff guibg=#00000f gui=bold
                \ ctermfg=25 ctermbg=16 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=#0f0f0f guibg=#bfffbf gui=NONE
                \ ctermfg=fg ctermbg=29 cterm=NONE
highlight DiffChange guifg=#0f0f0f guibg=#ffffbf gui=NONE
                \ ctermfg=fg ctermbg=94 cterm=NONE
highlight DiffDelete guifg=#0f0f0f guibg=#ffbfbf gui=NONE
                \ ctermfg=fg ctermbg=124 cterm=NONE
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

highlight SignColumn guifg=#ffffff guibg=#2f0f8f gui=NONE
                \ ctermfg=125 ctermbg=bg cterm=NONE
highlight Conceal guifg=#0f0f0f guibg=#8fcfff gui=NONE
                \ ctermfg=125 ctermbg=bg cterm=NONE
highlight SpecialKey guifg=#6f2fff guibg=bg gui=NONE
                \ ctermfg=53 ctermbg=bg cterm=NONE



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
highlight QuickFixLine guifg=#0f0f0f guibg=#ff8f3f gui=bold
      \ ctermfg=fg ctermbg=bg cterm=NONE


" Toolbar: "{{{2
highlight ToolbarButton guifg=#3f1f8f guibg=#afafff gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ToolbarLine guifg=#5f0f0f guibg=#df3fcf gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE



" Tooltip: "{{{2
highlight Tooltip guifg=#ffffff guibg=#1f1f3f gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#af3f5f guibg=bg gui=undercurl
                \ ctermfg=133 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#3f4f7f guibg=bg gui=undercurl
                \ ctermfg=63 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#3f7f6f guibg=bg gui=undercurl
                \ ctermfg=42 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#5faf3f guibg=bg gui=undercurl
                \ ctermfg=41 ctermbg=bg cterm=undercurl


" Pmenu: "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#cfc0cf gui=NONE
                \ ctermfg=232 ctermbg=147 cterm=NONE
highlight PmenuSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
                \ ctermfg=252 ctermbg=17 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfc0cf gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuKind guifg=#0f0f0f guibg=#cfc0cf gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuKindSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfc0cf gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#afafff gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuSbar guifg=#cccccc guibg=#2f2f2f gui=NONE
                \ ctermfg=fg ctermbg=240 cterm=NONE
highlight PmenuThumb guifg=#ffffff guibg=#cf0f0f gui=NONE
                \ ctermfg=fg ctermbg=125 cterm=NONE


" Tabline: "{{{2
highlight TabLine guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                \ ctermfg=125 ctermbg=16 cterm=NONE
highlight TabLineSel guifg=#ffffff guibg=#1f2f8f gui=NONE
                \ ctermfg=15 ctermbg=18 cterm=NONE
highlight TabLineFill guifg=#3f5fff guibg=#0f1f3f gui=bold
                \ ctermfg=12 ctermbg=16 cterm=bold


" Tabpanel: "{{{2
highlight TabPanel guifg=#cfcfcf guibg=#0f0f1f gui=NONE
                \ ctermfg=125 ctermbg=16 cterm=NONE
highlight TabPanelSel guifg=#ffffff guibg=#1f2f8f gui=NONE
                \ ctermfg=15 ctermbg=18 cterm=NONE
highlight TabPanelFill guifg=#3f5fff guibg=#0f0f1f gui=NONE
                \ ctermfg=12 ctermbg=16 cterm=NONE
highlight TabPanelTitle guifg=#ffffff guibg=#0f3f8f gui=NONE
                \ ctermfg=232 ctermbg=244 cterm=NONE
highlight TabPanelCurMark guifg=#af3f3f guibg=#0f0f0f gui=NONE
                \ ctermfg=232 ctermbg=244 cterm=NONE


" Cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
                \ ctermfg=NONE ctermbg=27 cterm=NONE
highlight CursorColumn guifg=#000000 guibg=#8f8fff gui=NONE
                \ ctermfg=NONE ctermbg=233 cterm=NONE
highlight lCursor guifg=#2f2f2f guibg=#ffafff gui=NONE
                \ ctermfg=32 ctermbg=115 cterm=NONE
highlight Cursor guifg=#0f0f0f guibg=#cf3fff gui=NONE
                \ ctermfg=250 ctermbg=4 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE


" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM gui=NONE guifg=#000000 guibg=#af4f5f
                \ ctermfg=250 ctermbg=88 cterm=NONE
endif


" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#0f1f1f gui=NONE
                \ ctermfg=NONE ctermbg=0 cterm=NONE
highlight CursorLineNr guifg=#3fafff guibg=#0f1f3f gui=bold
                \ ctermfg=31 ctermbg=16 cterm=bold
highlight CursorLineFold guifg=#0f0f0f guibg=#cfcfff gui=bold
                \ ctermfg=93 ctermbg=16 cterm=bold
highlight CursorLineSign guifg=#0f0f0f guibg=#8faf8f gui=bold
                \ ctermfg=93 ctermbg=16 cterm=bold


" Terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=fg guibg=bg gui=NONE
                  \ ctermfg=fg ctermbg=bg cterm=NONE
  " Terminal color
  let g:terminal_ansi_colors = [
    \ "#0c0c0c", "#850f1f", "#13710e", "#819c00",
    \ "#00378a", "#881798", "#3f9fff", "#8f8f8f",
    \ "#767676", "#872836", "#16960c", "#6a7f84",
    \ "#3b789f", "#ff0f5f", "#6fffdf", "#989898"
    \ ]
endif



" #- Syntax highlighting groups -# "{{{1
highlight MatchParen guifg=#0f0f8f guibg=#5fafff gui=bold,underline
                \ ctermfg=16 ctermbg=57 cterm=bold,underline
highlight comment guifg=#5f8fff guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=NONE cterm=NONE
highlight Constant guifg=#1fcf5f guibg=bg gui=NONE
                \ ctermfg=29 ctermbg=NONE cterm=NONE
highlight Special guifg=#afcfff guibg=bg gui=NONE
                \ ctermfg=24 ctermbg=NONE cterm=NONE
highlight Identifier guifg=#ff2f8f guibg=bg gui=NONE
                \ ctermfg=168 ctermbg=NONE cterm=NONE
highlight Statement guifg=#2fafff guibg=bg gui=NONE
                \ ctermfg=105 ctermbg=NONE cterm=NONE
highlight PreProc guifg=#ffaf2f guibg=bg gui=NONE
                \ ctermfg=171 ctermbg=NONE cterm=NONE
highlight type guifg=#8f2fff guibg=bg gui=NONE
                \ ctermfg=165 ctermbg=NONE cterm=NONE
highlight underlined guifg=#3f5faf guibg=#cfcfff gui=underline,bold
                \ ctermfg=111 ctermbg=189 cterm=bold,underline
highlight Ignore guifg=#1f2f3f guibg=bg gui=bold
                \ ctermfg=23 ctermbg=bg cterm=bold
highlight Error guifg=#a04f7e guibg=bg gui=NONE
                \ ctermfg=5 ctermbg=bg cterm=NONE
highlight Todo guifg=#ffcf3f guibg=#1f1f2f gui=underline,bold
                \ ctermfg=5 ctermbg=147 cterm=bold,underline
highlight String guifg=#cfafff guibg=bg gui=NONE
                \ ctermfg=130 ctermbg=bg cterm=NONE


" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
