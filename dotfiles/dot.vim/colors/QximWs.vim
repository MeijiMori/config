" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file

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

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#fdfdfd guibg=#1f1f2f gui=NONE
                \ ctermfg=15 ctermbg=233 cterm=NONE
highlight NonText guifg=#4f7fff guibg=#10101f gui=bold
                \ ctermfg=31 ctermbg=232 cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=#0f0f2f gui=bold
                \ ctermfg=104 ctermbg=232 cterm=bold
highlight Directory guifg=#3aafff guibg=bg gui=bold
                \ ctermfg=32 ctermbg=bg cterm=bold


" Search: "{{{2
highlight IncSearch guifg=#8f0000 guibg=#ff1f8f gui=bold,underline
                \ ctermfg=52 ctermbg=161 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=94 ctermbg=220 cterm=bold,underline
highlight Search guifg=#00005f guibg=#5fafff gui=bold
                \ ctermfg=17 ctermbg=69 cterm=bold,underline


" Message: "{{{2
highlight ModeMsg guifg=#8f5f1f guibg=#ffcfaf gui=NONE
                \ ctermfg=58 ctermbg=222 cterm=NONE
highlight MoreMsg guifg=#5f0f3f guibg=#ff3f8f gui=NONE
                \ ctermfg=52 ctermbg=162 cterm=NONE
highlight MsgArea guifg=#cfcfcf guibg=#0f0f2f gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#8f0f3f guibg=#ff5f8f gui=NONE
                \ ctermfg=52 ctermbg=198 cterm=NONE
highlight WarningMsg guifg=#5f3f2f guibg=#dfaf2f gui=NONE
                \ ctermfg=58 ctermbg=178 cterm=NONE
highlight Question guifg=#2f8f5f guibg=#afffcf gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#ffffff guibg=#0f1f8f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE


" LineNr: "{{{2
highlight LineNr guifg=#5f2fff guibg=NONE gui=NONE
                \ ctermfg=56 ctermbg=bg cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=102 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#0f0f3f guibg=#af8fff gui=NONE
                \ ctermfg=16 ctermbg=141 cterm=NONE
highlight StatusLineNC guifg=#5f5f5f guibg=#c4b2ab gui=NONE
                \ ctermfg=58 ctermbg=138 cterm=NONE
highlight StatusLineTerm guifg=#0f8f0f guibg=#afffaf gui=NONE
                \ ctermfg=22 ctermbg=115 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=NONE
                \ ctermfg=58 ctermbg=145 cterm=NONE
"}}}2


highlight VertSplit guifg=#4049d9 guibg=#202020 gui=NONE
                \ ctermfg=25 ctermbg=233 cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#8fafff guibg=NONE gui=bold,underline
                \ ctermfg=111 ctermbg=bg cterm=bold,underline

" Visual: "{{{2
highlight Visual guifg=#ffffff guibg=#1c528f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight VisualNOS guibg=#aaeeee guifg=#3d3d3d gui=underline
                \ ctermfg=15 ctermbg=17 cterm=underline


" Fold: "{{{2
highlight Folded guifg=#cfcfcf guibg=#0f101f gui=NONE
                \ ctermfg=250 ctermbg=232 cterm=NONE
highlight FoldColumn guifg=#3fc4af guibg=#0f101f gui=bold
                \ ctermfg=30 ctermbg=16 cterm=bold


"Diff: "{{{2
highlight DiffAdd guifg=#0f5f3f guibg=#8fffaf gui=NONE
                \ ctermfg=22 ctermbg=78 cterm=NONE
highlight DiffChange guifg=#5f5f1f guibg=#ffffaf gui=NONE
                \ ctermfg=58 ctermbg=221 cterm=NONE
highlight DiffDelete guifg=#8f0f0f guibg=#ff9f9f gui=NONE
                \ ctermfg=52 ctermbg=205 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#8fffaf guibg=bg gui=NONE
                \ ctermfg=121 ctermbg=bg cterm=NONE
highlight Added guifg=#2f8fff guibg=bg gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Changed guifg=#ff9f2f guibg=bg gui=NONE
                \ ctermfg=184 ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
                \ ctermfg=162 ctermbg=bg cterm=NONE
"}}}2


highlight SignColumn guifg=fg guibg=#2f1f3f gui=NONE
                \ ctermfg=232 ctermbg=96 cterm=NONE term=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
                \ ctermfg=fg ctermbg=1 cterm=NONE
highlight SpecialKey guifg=#5842ff guibg=bg gui=NONE
                \ ctermfg=63 ctermbg=bg cterm=NONE


" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=16 ctermbg=189 cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=16 ctermbg=189 cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=15 ctermbg=20 cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#cfcfcf gui=None
      \ ctermfg=16 ctermbg=250 cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#cfdfdf gui=bold
      \ ctermfg=237 ctermbg=251 cterm=bold


" Toolbar: "{{{2
highlight ToolbarButton guifg=#5f5f8f guibg=#cfefff gui=bold
                \ ctermfg=16 ctermbg=117 cterm=NONE
highlight ToolbarLine guifg=#0f0f0f guibg=#8f8f8f gui=NONE
                \ ctermfg=16 ctermbg=248 cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=16 ctermbg=253 cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#cfcfcf guibg=#0f0f0f gui=None
                \ ctermfg=15 ctermbg=235 cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#f95099 guibg=bg gui=undercurl
                \ ctermfg=129 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#5063ff guibg=bg gui=undercurl
                \ ctermfg=33 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#f98c50  guibg=bg gui=undercurl
                \ ctermfg=172 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#50f982  guibg=bg gui=undercurl
                \ ctermfg=35 ctermbg=bg cterm=undercurl


" Pmenu: "{{{2
highlight Pmenu guifg=#cfcfcf guibg=#020f1f gui=NONE
                \ ctermfg=15 ctermbg=233 cterm=NONE
highlight PmenuKind guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=235 ctermbg=147 cterm=NONE
highlight PmenuKindSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=15 ctermbg=18 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=235 ctermbg=147 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfefff gui=NONE
                \ ctermfg=235 ctermbg=147 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
                \ ctermfg=235 ctermbg=147 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
                \ ctermfg=235 ctermbg=147 cterm=NONE
highlight PmenuSel guifg=#ccfcfa guibg=#0f3f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuSbar guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=16 ctermbg=250 cterm=NONE
highlight PmenuThumb guifg=#efefff guibg=#2f2f5f gui=NONE
                \ ctermfg=253 ctermbg=237 cterm=NONE

"Tabline: "{{{2
highlight TabLine guifg=#7b7b7b guibg=bg gui=underline
                \ ctermfg=245 ctermbg=233 cterm=underline
highlight TabLineFill guifg=#415676 guibg=bg gui=underline
                \ ctermfg=60 ctermbg=232 cterm=underline
highlight TabLineSel guifg=#ffffff guibg=#0f2f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE


"Tabpanel: "{{{2
highlight TabPanel guifg=#7b7b7b guibg=bg gui=NONE
                \ ctermfg=245 ctermbg=233 cterm=NONE
highlight TabPanelFill guifg=#415676 guibg=bg gui=NONE
                \ ctermfg=60 ctermbg=232 cterm=NONE
highlight TabPanelSel guifg=#ffffff guibg=#0f2f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight TabPanelTitle guifg=#ffffff guibg=#1f1f4f gui=bold
                \ ctermfg=253 ctermbg=235 cterm=bold


" Cursor: "{{{2
highlight ColorColumn guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=16 ctermbg=248 cterm=NONE
highlight CursorColumn guifg=NONE guibg=#1f3f8f gui=NONE
                \ ctermfg=16 ctermbg=17 cterm=NONE
highlight Cursor guifg=#ffffff guibg=#5f5f5f gui=NONE
                \ ctermfg=16 ctermbg=243 cterm=NONE
highlight lCursor guifg=#575757 guibg=#7fffaf gui=NONE
                \ ctermfg=16 ctermbg=78 cterm=NONE


"IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#bfbfbf guibg=#ffb6c1 gui=NONE
                \ ctermfg=232 ctermbg=196 cterm=NONE
endif


" Cursorline: "{{{2
highlight CursorLine  guifg=NONE guibg=#0f0f5f gui=NONE
                \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight CursorLineNr guifg=#0f0f0f guibg=#8f8fff gui=NONE
                \ ctermfg=16 ctermbg=105 cterm=NONE
highlight CursorLineSign guifg=NONE guibg=#3f8faf gui=bold
                \ ctermfg=252 ctermbg=75 cterm=bold
highlight CursorLineFold guifg=#0f0f3f guibg=#afafff gui=bold
                \ ctermfg=235 ctermbg=147 cterm=bold


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


" #- syntax highlighting group -# "{{{1
highlight MatchParen guifg=#0f0f8f guibg=#5f9fff gui=bold,underline
                \ ctermfg=232 ctermbg=33 cterm=bold,underline
highlight comment guifg=#509fff guibg=bg gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Constant guifg=#ffafaf guibg=bg gui=NONE
                \ ctermfg=216 ctermbg=bg cterm=NONE
highlight Special guifg=#cfafff guibg=bg gui=NONE
                \ ctermfg=183 ctermbg=bg cterm=NONE
highlight Identifier guifg=#8fff2f guibg=bg gui=NONE
                \ ctermfg=84 ctermbg=bg cterm=NONE
highlight Statement guifg=#ffcfaf guibg=bg gui=NONE
                \ ctermfg=223 ctermbg=bg cterm=NONE
highlight PreProc guifg=#ff5fbf guibg=bg gui=NONE
                \ ctermfg=211 ctermbg=bg cterm=NONE
highlight type guifg=#5fcf8f guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight underlined guifg=#6fcfcf guibg=NONE gui=underline,bold
                \ ctermfg=80 ctermbg=bg cterm=underline
highlight Ignore guifg=#fac08f guibg=NONE gui=bold
                \ ctermfg=216 ctermbg=bg cterm=bold
highlight Error guifg=#ff5f5f guibg=bg gui=NONE
                \ ctermfg=196 ctermbg=bg cterm=NONE
highlight Todo guifg=#2fafff guibg=bg gui=bold,underline
                \ ctermfg=25 ctermbg=147 cterm=bold,underline
highlight string guifg=#cfafaf guibg=bg gui=NONE
                \ ctermfg=213 ctermbg=bg cterm=NONE

" #-  END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
