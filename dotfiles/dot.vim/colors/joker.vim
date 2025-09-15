" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file

" #- Vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- Colorscheme name -# "{{{1
" name: joker
let g:colors_name = expand('<sfile>:t:r')


" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#1f001f gui=NONE
          \ ctermfg=255 ctermbg=232 cterm=NONE
highlight NonText guifg=#1f59ff guibg=#1f0f1f gui=NONE
          \ ctermfg=27 ctermbg=bg cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#2f5fe0 guibg=bg gui=bold
          \ ctermfg=27 ctermbg=bg cterm=bold



" Search: "{{{2
highlight IncSearch guifg=#cfcfcf guibg=#2f0f5f gui=bold
          \ ctermfg=229 ctermbg=11 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
          \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#cfcfcf guibg=#0f1f3f gui=bold
          \ ctermfg=85 ctermbg=36 cterm=bold,underline



" Message: {{{2
highlight MoreMsg guifg=#4faf8f guibg=NONE gui=NONE
          \ ctermfg=83 ctermbg=bg cterm=underline
highlight ModeMsg guifg=#4f3fdf guibg=NONE gui=NONE
          \ ctermfg=69 ctermbg=bg cterm=underline
highlight MsgArea guifg=#ffffff guibg=#2a1f2f gui=NONE
          \ ctermfg=242 ctermbg=252 cterm=NONE
highlight ErrorMsg guifg=#f84865 guibg=bg gui=NONE
          \ ctermfg=9 ctermbg=bg cterm=NONE
highlight WarningMsg guifg=#cf2f5f guibg=bg gui=NONE
          \ ctermfg=9 ctermbg=bg cterm=NONE
highlight Question guifg=#6acf95 guibg=NONE gui=NONE
          \ ctermfg=42 ctermbg=bg cterm=underline
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#0f1f3f guibg=#afafaf gui=NONE
          \ ctermfg=233 ctermbg=147 cterm=underline,bold


" LineNr: "{{{2
highlight LineNr guifg=#5f0f3f guibg=NONE gui=NONE
          \ ctermfg=53 ctermbg=bg cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#ffffff guibg=#101020 gui=NONE
          \ ctermfg=15 ctermbg=234 cterm=NONE
highlight StatusLineNC guifg=#565234 guibg=#c4b2ab gui=NONE
          \ ctermfg=95 ctermbg=180 cterm=NONE
highlight StatusLineTerm guifg=#000f2f guibg=#cfccff gui=NONE
          \ ctermfg=11 ctermbg=bg cterm=NONE
highlight StatusLineTermNc guifg=#002f2f guibg=#8fafcf gui=NONE
          \ ctermfg=11 ctermbg=bg cterm=NONE


"}}}2
highlight VertSplit guifg=#7f1f5f guibg=#0f0f0f gui=bold
          \ ctermfg=9 ctermbg=bg cterm=bold
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
          \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
          \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#72dc95 guibg=bg gui=NONE
          \ ctermfg=83 ctermbg=bg cterm=bold,underline


" Visual: "{{{2
highlight Visual guifg=#afafaf guibg=#1f0f3f gui=NONE
          \ ctermfg=7 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f0f3f gui=underline,bold
          \ ctermfg=253 ctermbg=27 cterm=underline,bold


" Fold: "{{{2
highlight Folded guifg=#afafaf guibg=#10001a gui=NONE
          \ ctermfg=255 ctermbg=16 cterm=NONE
highlight FoldColumn  guifg=#1faf8f guibg=#100f10 gui=bold
          \ ctermfg=35 ctermbg=233 cterm=bold


" Diff "{{{2
highlight DiffAdd guifg=#afdfff guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=35 cterm=NONE
highlight DiffChange guifg=#cf8fff guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=208 cterm=NONE
highlight DiffDelete guifg=#f62c74 guibg=bg gui=bold
          \ ctermfg=fg ctermbg=52 cterm=NONE
highlight DiffText guifg=#f9fbfe guibg=bg gui=NONE
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
highlight SignColumn guifg=#ffffb0 guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
          \ ctermfg=fg ctermbg=0 cterm=NONE
highlight SpecialKey guifg=#585fff guibg=bg gui=NONE
          \ ctermfg=63 ctermbg=bg cterm=NONE


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
highlight SpellBad  guifg=#af5fbf guibg=bg gui=underline
          \ ctermfg=92 ctermbg=bg cterm=underline
highlight SpellCap  guifg=#7f6fbf guibg=bg gui=underline
          \ ctermfg=57 ctermbg=bg cterm=underline
highlight SpellRare guifg=#7fcfaf guibg=bg gui=underline
          \ ctermfg=35 ctermbg=bg cterm=underline
highlight SpellLocal guifg=#bfaf5f guibg=bg gui=underline
          \ ctermfg=227 ctermbg=bg cterm=underline

" Pmenu: "{{{2
highlight Pmenu guifg=#0f0f3f guibg=#bfbfff gui=NONE
          \ ctermfg=234 ctermbg=253 cterm=NONE
highlight PmenuSel guifg=#bfbfbf guibg=#1f1f3f gui=NONE
          \ ctermfg=fg ctermbg=17 cterm=NONE
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
highlight PmenuSbar guifg=#cccccc guibg=#101020 gui=NONE
          \ ctermfg=fg ctermbg=235 cterm=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#1f2f5f gui=NONE
          \ ctermfg=fg ctermbg=232 cterm=NONE

" Tabline: "{{{2
highlight TabLine guifg=#555555 guibg=#bbbbbb gui=NONE
          \ ctermfg=241 ctermbg=250 cterm=NONE
highlight TabLineSel guifg=#afafaf guibg=#0f0f2f gui=NONE
          \ ctermfg=fg ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#5f5f5f guibg=#bfbfbf gui=NONE
          \ ctermfg=249 ctermbg=248  cterm=NONE
highlight TabPanelTitle guifg=#000000 guibg=#efefff gui=NONE
          \ ctermfg=232 ctermbg=244 cterm=NONE


" Tabpanel: "{{{2
highlight TabPanel guifg=#9d887c guibg=#150f1f gui=NONE
                \ ctermfg=138 ctermbg=234 cterm=NONE
highlight TabPanelSel guifg=#cfcfcf guibg=#0f1f2f gui=NONE
                \ ctermfg=252 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#aaaaaa guibg=#2f0f3f gui=NONE
                \ ctermfg=250 ctermbg=bg cterm=NONE


" Cursor: "{{{2
highlight CursorColumn guifg=fg guibg=bg gui=NONE
          \ ctermfg=248 ctermbg=153 cterm=NONE
highlight ColorColumn guifg=fg guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Cursor gui=NONE guifg=#000000 guibg=#afafaf
          \ ctermfg=NONE ctermbg=250 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
          \ ctermfg=NONE ctermbg=250 cterm=NONE



" Cursor color for IME status"{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#0f0f0f guibg=#8f1f3f gui=NONE
            \ ctermfg=16 ctermbg=197 cterm=NONE
endif


" Cursorline: {{{2
highlight CursorLine guifg=NONE guibg=#2f0f2f gui=NONE
          \ ctermfg=NONE ctermbg=53 cterm=NONE
highlight CursorLineNr guifg=#8f1f5f guibg=#af8fff gui=NONE
          \ ctermfg=57 ctermbg=0 cterm=NONE
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



" #- Syntax highlighting group -# "{{{1
highlight MatchParen guifg=#00000f guibg=#2f3f7f gui=bold
          \ ctermfg=18 ctermbg=26 cterm=bold
highlight comment guifg=#3f6fff guibg=bg gui=NONE
          \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Constant guifg=#af2fcf guibg=bg gui=NONE
          \ ctermfg=162 ctermbg=bg cterm=NONE
highlight Identifier guifg=#cf9f5f guibg=bg gui=NONE
          \ ctermfg=215 ctermbg=bg cterm=NONE
highlight Special guifg=#afffcf guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight Statement guifg=#2fcf8f guibg=bg gui=NONE
          \ ctermfg=48 ctermbg=bg cterm=NONE
highlight PreProc guifg=#cf5f8f guibg=bg gui=NONE
          \ ctermfg=161 ctermbg=bg cterm=NONE
highlight type guifg=#2faf8f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight underlined guifg=#568cff guibg=bg gui=underline
          \ ctermfg=27 ctermbg=bg cterm=underline
highlight Ignore guifg=#047f75 guibg=NONE gui=NONE
          \ ctermfg=2 ctermbg=bg cterm=NONE
highlight Error guifg=#f04f7e guibg=bg gui=NONE
          \ ctermfg=9 ctermbg=bg cterm=NONE
highlight Todo guifg=#8f1f5f guibg=#0f0f2f gui=bold
          \ ctermfg=161 ctermbg=233 cterm=bold,underline
highlight string guifg=#ffc8e6 guibg=bg gui=NONE
          \ ctermfg=183 ctermbg=bg cterm=NONE

" #- hl-User -# "{{{1
highlight User1 guifg=#3f3f3f guibg=#cfcfff gui=NONE
                \ ctermfg=251 ctermbg=236 cterm=NONE
highlight User2 guifg=#5f5f5f guibg=#afafff gui=NONE
                \ ctermfg=17 ctermbg=27 cterm=NONE
highlight User3 guifg=#afafff guibg=#2f2f3f gui=NONE
                \ ctermfg=28 ctermbg=35 cterm=NONE
highlight User4 guifg=#5f2f5f guibg=#cfafff gui=NONE
                \ ctermfg=105 ctermbg=234 cterm=NONE
highlight User5 guifg=#2f5f5f guibg=#afcfff gui=NONE
                \ ctermfg=88 ctermbg=125 cterm=NONE
highlight User6 guifg=#2f2f5f guibg=#5f5faf gui=NONE
                \ ctermfg=94 ctermbg=229 cterm=NONE
highlight User7 guifg=#5f2f2f guibg=#af5f5f gui=NONE
                \ ctermfg=88 ctermbg=201 cterm=NONE
highlight User8 guifg=#2f5f2f guibg=#5faf5f gui=NONE
                \ ctermfg=130 ctermbg=222 cterm=NONE
highlight User9 guifg=#5f5f2f guibg=#afaf5f gui=NONE
                \ ctermfg=244 ctermbg=189 cterm=NONE


" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
