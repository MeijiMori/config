" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file


" #- Vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
if version >= 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -# "{{{1
" name: vzixm
let g:colors_name = expand('<sfile>:t:r')

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#fdfdfd guibg=#303030 gui=NONE
                \ ctermfg=7 ctermbg=234 cterm=NONE
highlight NonText guifg=#ffffff guibg=#383838 gui=NONE
                \ ctermfg=254 ctermbg=235 cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                 \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#5787a6 guibg=bg gui=bold
                \ ctermfg=30 ctermbg=bg cterm=bold


" Search: "{{{2
highlight IncSearch guifg=#000000 guibg=#6f8faf gui=NONE
                \ ctermfg=17 ctermbg=111 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=58 ctermbg=220 cterm=bold,underline
highlight Search guifg=#111111 guibg=#ff8faf gui=NONE
                \ ctermfg=52 ctermbg=200 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#99ff99 guibg=#30303f gui=NONE
                \ ctermfg=113 ctermbg=bg cterm=NONE
highlight ModeMsg guifg=#fffeee guibg=#30303f gui=NONE
                \ ctermfg=255 ctermbg=bg cterm=NONE
highlight MsgArea guifg=#cfcfcf guibg=#1f2f2f gui=NONE
                \ ctermfg=fg ctermbg=233 cterm=NONE
highlight ErrorMsg guibg=bg guifg=#ffaaff gui=NONE
                \ ctermfg=206 ctermbg=bg cterm=NONE
highlight WarningMsg guifg=#ef5faf guibg=bg gui=NONE
                \ ctermfg=165 ctermbg=bg cterm=NONE
highlight Question guifg=#53e6a9 guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#3f50cf guibg=#cfcfcf gui=NONE
                \ ctermfg=232 ctermbg=250 cterm=NONE


" LineNr: "{{{2
highlight LineNr guifg=#60656f guibg=NONE gui=NONE
                \ ctermfg=239 ctermbg=bg cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=246 ctermbg=bg cterm=NONE



" Statusline: "{{{2
highlight StatusLine guifg=#ffffff guibg=#32353b gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
highlight StatusLineNC guifg=#3f3f37 guibg=#52514c gui=NONE
                \ ctermfg=234 ctermbg=239 cterm=NONE
highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
                \ ctermfg=252 ctermbg=233 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
                \ ctermfg=96 ctermbg=183 cterm=NONE
"}}}2


highlight VertSplit guifg=#aaaaaa guibg=#2f2f30 gui=NONE
                \ ctermfg=240 ctermbg=bg cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#2fd4c6 guibg=bg gui=NONE
                \ ctermfg=36 ctermbg=bg cterm=NONE


" Visual: "{{{2
highlight Visual guifg=#cfcfcf guibg=#1f3f6f gui=NONE
                \ ctermfg=255 ctermbg=20 cterm=NONE
highlight VisualNOS guibg=#aaeeee guifg=#3d3d3d gui=underline,bold
                \ ctermfg=17 ctermbg=153 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#bfbfcf guibg=#2f2f30 gui=NONE
                \ ctermfg=248 ctermbg=233 cterm=NONE
highlight FoldColumn guifg=#4f6dc3 guibg=#2f2f30 gui=bold
                \ ctermfg=25 ctermbg=234 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=#aacbde guibg=bg gui=NONE
                \ ctermfg=17 ctermbg=117 cterm=NONE
highlight DiffChange guifg=#998dbf guibg=bg gui=NONE
                \ ctermfg=58 ctermbg=220 cterm=NONE
highlight DiffDelete guifg=#a62c74 guibg=bg gui=NONE
                \ ctermfg=52 ctermbg=197 cterm=NONE
highlight DiffText guifg=#c9cbce guibg=bg gui=bold
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
                \ ctermfg=82 ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
                \ ctermfg=45 ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
                \ ctermfg=184 ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
                \ ctermfg=197 ctermbg=bg cterm=NONE
" }}}2


highlight SignColumn guifg=fg guibg=#0f0f0f gui=NONE
                \ ctermfg=255 ctermbg=233 cterm=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight SpecialKey guifg=#759f9e guibg=NONE gui=NONE
                \ ctermfg=105 ctermbg=bg cterm=NONE



" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=16 ctermbg=189 cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=16 ctermbg=189 cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=15 ctermbg=20 cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=239 ctermbg=30 cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#cfafff gui=bold
      \ ctermfg=235 ctermbg=183 cterm=bold


" Toolbar: "{{{2
highlight ToolbarButton guifg=#5f5f8f guibg=#cfefff gui=bold
                \ ctermfg=236 ctermbg=153 cterm=NONE
highlight ToolbarLine guifg=fg guibg=#efcfff gui=NONE
                \ ctermfg=232 ctermbg=219 cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=237 ctermbg=253 cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=0 ctermbg=159 cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#af8fbf guibg=bg gui=undercurl
                \ ctermfg=139 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#8f9fbf guibg=bg gui=undercurl
                \ ctermfg=99 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#8fcfbf guibg=bg gui=undercurl
                \ ctermfg=84 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#cfbf8f guibg=bg gui=undercurl
                \ ctermfg=185 ctermbg=bg cterm=undercurl


" Pmenu: "{{{2
highlight Pmenu guifg=#5f5f5f guibg=#cfcfcf gui=NONE
                \ ctermfg=239 ctermbg=251 cterm=NONE
highlight PmenuSel guifg=#d2d2d2 guibg=#5f385f gui=NONE
                \ ctermfg=15 ctermbg=20 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=239 ctermbg=251 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=15 ctermbg=20 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfefff gui=NONE
                \ ctermfg=239 ctermbg=251 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
                \ ctermfg=39 ctermbg=251 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
                \ ctermfg=15 ctermbg=20 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
                \ ctermfg=239 ctermbg=251 cterm=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=#4d2f4d gui=NONE
                \ ctermfg=15 ctermbg=54 cterm=NONE
highlight PmenuThumb guifg=#3d3f3d guibg=#1f1f2f gui=NONE
                \ ctermfg=15 ctermbg=235 cterm=NONE

" Tabline: "{{{2
highlight TabLine guifg=#995050 guibg=bg gui=underline
                \ ctermfg=125 ctermbg=235 cterm=underline
highlight TabLineFill guifg=#769950 guibg=bg gui=underline
                \ ctermfg=77 ctermbg=235 cterm=underline
highlight TabLineSel guifg=#675090 guibg=bg gui=underline
                \ ctermfg=63 ctermbg=235 cterm=underline


" Tabpanel: "{{{2
highlight TabPanel guifg=#cfcfcf guibg=bg gui=NONE
                \ ctermfg=250 ctermbg=235 cterm=NONE
highlight TabPanelFill guifg=#cfcfcf guibg=bg gui=NONE
                \ ctermfg=250 ctermbg=235 cterm=NONE
highlight TabPanelSel guifg=#cfcfff guibg=#2f3f8f gui=NONE
                \ ctermfg=15 ctermbg=20 cterm=NONE
highlight TabPanelTitle guifg=#ffffff guibg=#1f1f2f gui=NONE
                \ ctermfg=252 ctermbg=237 cterm=NONE


" Cursor: "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
                \ ctermfg=NONE ctermbg=27 cterm=NONE
highlight CursorColumn guifg=#0088ff guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=239 cterm=NONE
highlight lCursor guibg=#7ea3a6 guifg=#a68d7e gui=NONE
                \ ctermfg=16 ctermbg=153 cterm=NONE
highlight Cursor guifg=#000000 guibg=#00ee99 gui=NONE
                \ ctermfg=16 ctermbg=40 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE


" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#ffb6c1 gui=NONE
                \ ctermfg=16 ctermbg=89 cterm=NONE
endif



" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#432230 gui=NONE
                \ ctermfg=NONE ctermbg=53 cterm=NONE
highlight CursorLineNr guifg=#60656f guibg=NONE gui=NONE
                \ ctermfg=245 ctermbg=NONE cterm=bold
highlight CursorLineFold guifg=NONE guibg=#cfcfff gui=bold
                \ ctermfg=15 ctermbg=253 cterm=bold
highlight CursorLineSign guifg=NONE guibg=#8faf8f gui=bold
                \ ctermfg=255 ctermbg=149 cterm=bold



" Terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=#cfcfcf guibg=#00000f gui=NONE
                  \ ctermfg=fg ctermbg=bg cterm=NONE
  " Terminal color
  let g:terminal_ansi_colors = [
        \ "#0c0c0c", "#c50f1f", "#13a10e", "#c19c00",
        \ "#0037da", "#881798", "#3a96dd", "#cccccc",
        \ "#767676", "#e74856", "#16c60c", "#eadf84",
        \ "#3b78ff", "#b4009e", "#61d6d6", "#e8e8e8"
        \ ]
endif
" }}}2
" #- Syntax highlighting group -# "{{{1
highlight MatchParen guifg=#2f2f4f guibg=#cf8faf gui=bold
                \ ctermfg=52 ctermbg=133 cterm=bold,underline
highlight comment guifg=#646464 guibg=NONE gui=NONE
                \ ctermfg=242 ctermbg=bg cterm=NONE
highlight Constant guifg=#aaeeaa guibg=bg gui=NONE
                \ ctermfg=73 ctermbg=bg cterm=NONE
highlight Special guifg=#deffed guibg=bg gui=NONE
                \ ctermfg=195 ctermbg=bg cterm=NONE
highlight Identifier guifg=#9cb79c guibg=bg gui=NONE
                \ ctermfg=110 ctermbg=bg cterm=NONE
highlight Statement guifg=#c4a76a guibg=bg gui=NONE
                \ ctermfg=136 ctermbg=bg cterm=NONE
highlight PreProc guifg=#ffadfe guibg=bg gui=NONE
                \ ctermfg=175 ctermbg=bg cterm=NONE
highlight type guifg=#81a09a guibg=bg gui=NONE
                \ ctermfg=110 ctermbg=bg cterm=NONE
highlight underlined guifg=#66af9c guibg=#303f3f gui=underline
                \ ctermfg=48 ctermbg=234 cterm=underline
highlight Ignore guifg=#8f8f8f guibg=bg gui=NONE
                \ ctermfg=239 ctermbg=bg cterm=NONE
highlight Error guifg=#a04f7e guibg=bg gui=bold
                \ ctermfg=168 ctermbg=bg cterm=bold
highlight Todo guifg=#4e5ca0 guibg=#23252f gui=bold
                \ ctermfg=12 ctermbg=232 cterm=bold,underline
highlight string guifg=#ffc8ff guibg=bg gui=NONE
                \ ctermfg=213 ctermbg=bg cterm=NONE


" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


