" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date
" Guicolorscheme file

" #- Vim color file reset -# "{{{1
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- Colorscheme name -# "{{{1
" name PexiRm
let g:colors_name = expand('<sfile>:t:r')

" #- Hilighting group for various occasions -#"{{{1
highlight Normal guifg=#fdfdfd guibg=#1f1a1a gui=NONE
                \ ctermfg=15 ctermbg=234 cterm=NONE
highlight NonText guifg=#ffcfaf guibg=#1f1f2f gui=bold
                \ ctermfg=15 ctermbg=234 cterm=bold
highlight EndOfBuffer guifg=#8f7fff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=bold
highlight Directory guifg=#3fcfaf guibg=bg gui=bold
                \ ctermfg=69 ctermbg=bg cterm=bold


" Search: "{{{2
highlight IncSearch guifg=#5f0f0f guibg=#cf2f5f gui=bold,underline
                \ ctermfg=53 ctermbg=129 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#0f3f8f guibg=#2f8fff gui=bold,underline
                \ ctermfg=17 ctermbg=39 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#8fff7f guibg=#0f0f0f gui=NONE
                \ ctermfg=239 ctermbg=bg cterm=NONE
highlight ModeMsg guifg=#ffafaf guibg=#0f0f0f gui=NONE
                \ ctermfg=255 ctermbg=bg cterm=NONE
highlight MsgArea guifg=fg guibg=#0f0f0f gui=NONE
                \ ctermfg=242 ctermbg=252 cterm=NONE
highlight ErrorMsg guifg=#8f0f0f guibg=#ff8faf gui=NONE
                \ ctermfg=89 ctermbg=bg cterm=NONE
highlight WarningMsg guifg=#5f3f0f guibg=#ffaf2f gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
highlight Question guifg=#0f8f2f guibg=#afffcf gui=NONE
                \ ctermfg=36 ctermbg=bg cterm=NONE
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#ffffff guibg=#0f3f8f gui=NONE
                \ ctermfg=252 ctermbg=17 cterm=NONE


" LineNr: "{{{2
highlight LineNr guifg=#6b6b6b guibg=NONE gui=NONE
                \ ctermfg=240 ctermbg=bg cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#0f0f0f guibg=#dfdfef gui=NONE
                \ ctermfg=255 ctermbg=233 cterm=NONE
highlight StatusLineNC guifg=#6f6f6f guibg=#efefff gui=NONE
                \ ctermfg=236 ctermbg=240 cterm=NONE
highlight StatusLineTerm guifg=#afafaf guibg=#0f0f1f gui=NONE
                \ ctermfg=0 ctermbg=10 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
                \ ctermfg=96 ctermbg=183 cterm=NONE
" }}}2


highlight VertSplit guifg=#ef0f0f guibg=bg gui=bold
                \ ctermfg=246 ctermbg=234 cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#acacac guibg=bg gui=bold,underline
                \ ctermfg=250 ctermbg=bg cterm=bold,underline

" Visual: "{{{2
highlight Visual guifg=#ffffff guibg=#1f2f8f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#3d3d3d guibg=#aaeeee gui=underline,bold
                \ ctermfg=17 ctermbg=33 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#afafaf guibg=#1f1f2f gui=NONE
                \ ctermfg=250 ctermbg=4 cterm=NONE
highlight FoldColumn guifg=#8f6fff guibg=#1f000f gui=bold
                \ ctermfg=12 ctermbg=234 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=#0f1f8f guibg=#5fafff gui=NONE
                \ ctermfg=fg ctermbg=22 cterm=NONE
highlight DiffChange guifg=#8f2f1f guibg=#ffdf8f gui=NONE
                \ ctermfg=fg ctermbg=208 cterm=NONE
highlight DiffDelete guifg=#8f0f0f guibg=#ff8faf gui=NONE
                \ ctermfg=fg ctermbg=124 cterm=NONE
highlight DiffText guifg=#c9cbce guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#5fcf8f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Added guifg=#2fafff guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Changed guifg=#ff9f2f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2


highlight SignColumn guifg=fg guibg=#3f0f0f gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight SpecialKey guifg=#75ff9e guibg=bg gui=bold
                \ ctermfg=29 ctermbg=bg cterm=bold


" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#cfcfcf gui=None
      \ ctermfg=fg ctermbg=bg cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#8fafff gui=bold
      \ ctermfg=fg ctermbg=bg cterm=NONE


" Toolbar: "{{{2
highlight ToolbarButton guifg=#5f5f8f guibg=#efefff gui=bold
                \ ctermfg=180 ctermbg=bg cterm=NONE
highlight ToolbarLine guifg=fg guibg=#0f0f3f gui=NONE
                \ ctermfg=180 ctermbg=bg cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#ffffff guibg=#1f1f0f gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=fg guibg=bg gui=undercurl
                \ ctermfg=129 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=fg guibg=bg gui=undercurl
                \ ctermfg=27 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=fg guibg=bg gui=undercurl
                \ ctermfg=35 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=fg guibg=bg gui=undercurl
                \ ctermfg=220 ctermbg=bg cterm=undercurl

"Pmenu: "{{{2
highlight Pmenu guifg=#a0a0a0 guibg=#2f2f2f gui=NONE
                \ ctermfg=248 ctermbg=234 cterm=NONE
highlight PmenuSel guifg=#ffffff guibg=#223f8f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuKind guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuKindSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatch guifg=#ffffff guibg=#0f0f2f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=#4d2f4d gui=NONE
                \ ctermfg=fg ctermbg=89 cterm=NONE
highlight PmenuThumb guifg=#ffffff guibg=#0f0f2f gui=NONE
                \ ctermfg=fg ctermbg=232 cterm=NONE

" Tabline: "{{{2
highlight TabLine guifg=#0f0f0f guibg=#dfdfff gui=underline
                \ ctermfg=35 ctermbg=233 cterm=underline
highlight TabLineSel guifg=#ffffff guibg=#0f0f2f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#0f0f0f guibg=#dfdfff gui=bold,underline
                \ ctermfg=29 ctermbg=bg cterm=bold,underline


" Tabpanel: "{{{2
highlight TabPanel guifg=#6f6f6f guibg=#dfdfff gui=NONE
                \ ctermfg=35 ctermbg=233 cterm=NONE
highlight TabPanelSel guifg=#ffffff guibg=#1f204f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#7f9f5f guibg=#1f1f2f gui=NONE
                \ ctermfg=29 ctermbg=bg cterm=NONE
highlight TabPanelTitle guifg=#6f6f6f guibg=#efefff gui=bold
                \ ctermfg=232 ctermbg=244 cterm=bold


" Cursor: "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
                \ ctermfg=NONE ctermbg=27 cterm=NONE
highlight CursorColumn guifg=NONE guibg=#3f3f3f gui=NONE
                \ ctermfg=NONE ctermbg=27 cterm=NONE
highlight lCursor guifg=#0f0f0f guibg=#ffcfcf gui=NONE
                \ ctermfg=0 ctermbg=48 cterm=NONE
highlight Cursor guifg=#000000 guibg=#00ee99 gui=NONE
                \ ctermfg=0 ctermbg=48 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE


" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#ff0faf gui=NONE
                \ ctermfg=0 ctermbg=88 cterm=NONE
endif

" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#3f2f0f gui=NONE
                \ ctermfg=NONE ctermbg=232 cterm=NONE
highlight CursorLineNr guifg=#0f0f8f guibg=#afefff gui=NONE
                \ ctermfg=238 ctermbg=248 cterm=NONE
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
    \ "#0c0c0c", "#850f1f", "#13710e", "#819c00",
    \ "#00378a", "#881798", "#3a96dd", "#8f8f8f",
    \ "#767676", "#872836", "#16960c", "#6a7f84",
    \ "#3b789f", "#94005e", "#61d6d6", "#989898"
    \ ]
endif


" #- Syntax highlighting group -#"{{{1
highlight MatchParen guifg=#0f0f0f guibg=#5f93cd gui=bold,underline
                \ ctermfg=17 ctermbg=27 cterm=bold,underline
highlight comment guifg=#4b89ff guibg=bg gui=NONE
                \ ctermfg=24 ctermbg=bg cterm=NONE
highlight Constant guifg=#ffafaf guibg=bg gui=NONE
                \ ctermfg=77 ctermbg=bg cterm=NONE
highlight Special guifg=#deffff guibg=bg gui=NONE
                \ ctermfg=250 ctermbg=bg cterm=NONE
highlight Identifier guifg=#9fff9f guibg=bg gui=NONE
                \ ctermfg=120 ctermbg=bg cterm=NONE
highlight Statement guifg=#5c71ff guibg=NONE gui=NONE
                \ ctermfg=12 ctermbg=bg cterm=NONE
highlight PreProc guifg=#3f5fff guibg=bg gui=NONE
                \ ctermfg=134 ctermbg=bg cterm=NONE
highlight type guifg=#ff2faf guibg=NONE gui=NONE
                \ ctermfg=66 ctermbg=bg cterm=NONE
highlight underlined guifg=#afdfaf guibg=bg gui=underline
                \ ctermfg=47 ctermbg=235 cterm=underline
highlight Ignore guifg=#047f75 guibg=#353535 gui=bold
                \ ctermfg=23 ctermbg=bg cterm=bold
highlight Error guifg=#ff4f7e guibg=bg gui=NONE
                \ ctermfg=125 ctermbg=bg cterm=NONE
highlight Todo guifg=#8f5fff guibg=#0f0f0f gui=bold,underline
                \ ctermfg=57 ctermbg=237 cterm=bold,underline
highlight string guifg=#ffcf8f guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


