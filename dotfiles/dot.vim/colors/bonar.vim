" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen {[(*)]}
" highlighting ZenkakuSpace /　/
" Gui colorscheme file
" This colorscheme file is light theme. So refer to bonar's HP.

" #- Color file reset -# "{{{1
" First remove all existing highlighting.
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- Colorscheme name -# "{{{1
" name: bonar
let g:colors_name = expand('<sfile>:t:r')


" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#0f0f0f guibg=#fdf5da gui=NONE
      \ ctermfg=0 ctermbg=230 cterm=NONE
highlight NonText guifg=#3f3fcf guibg=#efefcf gui=NONE
      \ ctermfg=239 ctermbg=253 cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
      \ ctermfg=105 ctermbg=bg cterm=bold
highlight Directory guifg=#0f3f7f guibg=bg gui=NONE
      \ ctermfg=27 ctermbg=bg cterm=bold


" Search: "{{{2
highlight IncSearch guifg=#0f0f0f guibg=#5faf8f gui=bold
      \ ctermfg=22 ctermbg=70 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
      \ ctermfg=58 ctermbg=220 cterm=bold,underline
highlight Search guifg=#000000 guibg=#4f6fff gui=bold
      \ ctermfg=17 ctermbg=27 cterm=bold,underline



" Message: {{{2
highlight MoreMsg guifg=#3f5f2f guibg=#cff0df gui=NONE
      \ ctermfg=17 ctermbg=194 cterm=NONE
highlight ModeMsg guifg=#3f2f5f guibg=#cfdff0 gui=NONE
      \ ctermfg=17 ctermbg=153 cterm=NONE
highlight MsgArea guifg=fg guibg=bg gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#f84865 guibg=#ffcfcf gui=NONE
      \ ctermfg=160 ctermbg=218 cterm=NONE
highlight WarningMsg guifg=#8f0f3f guibg=#ffcfcf gui=NONE
      \ ctermfg=58 ctermbg=220 cterm=NONE
highlight Question guifg=#8f3f5f guibg=#ffcfcf gui=NONE
      \ ctermfg=124 ctermbg=219 cterm=NONE
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
      \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
      \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#cfcfcf guibg=#1f2f5f gui=NONE
      \ ctermfg=250 ctermbg=18 cterm=NONE


" LineNr: "{{{2
highlight LineNr guifg=#5f4f40 guibg=NONE gui=NONE
      \ ctermfg=137 ctermbg=bg cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=249 ctermbg=bg cterm=NONE


" Statusline "{{{2
highlight StatusLine guifg=#000000 guibg=#efefff gui=NONE
      \ ctermfg=236 ctermbg=189 cterm=NONE
highlight StatusLineNC guifg=#3f3f2f guibg=#c4b2ab gui=NONE
      \ ctermfg=239 ctermbg=181 cterm=NONE
highlight StatusLineTerm guifg=#000f2f guibg=#cfccff gui=NONE
      \ ctermfg=240 ctermbg=189 cterm=NONE
highlight StatusLineTermNc guifg=#002f2f guibg=#8fafcf gui=NONE
      \ ctermfg=17 ctermbg=152 cterm=NONE


"}}}2


highlight VertSplit guifg=#afafaf guibg=#cfcfcf gui=bold
      \ ctermfg=244 ctermbg=251 cterm=bold
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
      \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
      \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#ad1422 guibg=bg gui=bold
      \ ctermfg=125 ctermbg=bg cterm=bold


" Visual: "{{{2
highlight Visual guifg=#bfbfbf guibg=#2f2f5f gui=NONE
      \ ctermfg=15 ctermbg=20 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f2f4f gui=underline,bold
      \ ctermfg=15 ctermbg=21 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#2f2f2f guibg=#dfdfdf gui=NONE
      \ ctermfg=236 ctermbg=253 cterm=NONE
highlight FoldColumn guifg=#1f3f5f guibg=#dfdfdf gui=bold
      \ ctermfg=235 ctermbg=254 cterm=bold


" Diff "{{{2
highlight DiffAdd guifg=#0f0f0f guibg=#8fafcf gui=NONE
      \ ctermfg=17 ctermbg=153 cterm=NONE
highlight DiffChange guifg=#0f0f0f guibg=#af8fcf gui=NONE
      \ ctermfg=53 ctermbg=183 cterm=NONE
highlight DiffDelete guifg=#0f0f0f guibg=#cf8faf gui=bold
      \ ctermfg=52 ctermbg=169 cterm=NONE
highlight DiffText guifg=#3f3f3f guibg=bg gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
      \ ctermfg=35 ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
      \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
      \ ctermfg=136 ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
      \ ctermfg=124 ctermbg=bg cterm=NONE


" }}}2


highlight SignColumn guifg=fg guibg=#ffefcf gui=NONE
      \ ctermfg=58 ctermbg=228 cterm=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
      \ ctermfg=fg ctermbg=221 cterm=NONE
highlight SpecialKey guifg=#5f5fcf guibg=bg gui=NONE
      \ ctermfg=69 ctermbg=230 cterm=NONE



" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=16 ctermbg=189 cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=16 ctermbg=189 cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=15 ctermbg=20 cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=23 ctermbg=77 cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#cfafff gui=bold
      \ ctermfg=100 ctermbg=186 cterm=bold


" Toolbar: "{{{2
highlight ToolbarButton guifg=#5f5f8f guibg=#cfefff gui=bold
                \ ctermfg=17 ctermbg=111 cterm=NONE
highlight ToolbarLine guifg=fg guibg=#efcfff gui=NONE
                \ ctermfg=52 ctermbg=183 cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=235 ctermbg=189 cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=17 ctermbg=70 cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#8f0faf guibg=bg gui=undercurl
      \ ctermfg=129 ctermbg=NONE cterm=undercurl
highlight SpellCap guifg=#3f0faf guibg=bg gui=undercurl
      \ ctermfg=27 ctermbg=NONE cterm=undercurl
highlight SpellRare guifg=#3f8f5f guibg=bg gui=undercurl
      \ ctermfg=35 ctermbg=NONE cterm=undercurl
highlight SpellLocal guifg=#4f3f0f guibg=bg gui=undercurl
      \ ctermfg=172 ctermbg=NONE cterm=undercurl


" Pmenu: "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#cfcfcf gui=NONE
      \ ctermfg=234 ctermbg=252 cterm=NONE
highlight PmenuSel guifg=#ededed guibg=#2f3f5f gui=NONE
      \ ctermfg=15 ctermbg=20 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
      \ ctermfg=234 ctermbg=252 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
      \ ctermfg=15 ctermbg=20 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfefff gui=NONE
      \ ctermfg=234 ctermbg=252 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
      \ ctermfg=234 ctermbg=252 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
      \ ctermfg=15 ctermbg=20 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
      \ ctermfg=234 ctermbg=189 cterm=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=#0f0f0f gui=NONE
      \ ctermfg=249 ctermbg=232 cterm=NONE
highlight PmenuThumb guifg=#0f0f0f guibg=#01365f gui=NONE
      \ ctermfg=235 ctermbg=25 cterm=NONE


" Tabline: "{{{2
highlight TabLine guifg=#3f3f3f guibg=#cfc0af gui=underline
      \ ctermfg=239 ctermbg=144 cterm=underline
highlight TabLineFill guifg=#415676 guibg=#dfd0bf gui=underline
      \ ctermfg=235 ctermbg=187 cterm=underline
highlight TabLineSel guifg=#0f0f0f guibg=#cfc0bf gui=underline
      \ ctermfg=233 ctermbg=188 cterm=underline


" Tabpanel: "{{{2
highlight TabPanel guifg=#3f3f3f guibg=#cfc0af gui=NONE
      \ ctermfg=239 ctermbg=144 cterm=NONE
highlight TabPanelFill guifg=#415676 guibg=#dfd0bf gui=NONE
      \ ctermfg=235 ctermbg=187 cterm=NONE
highlight TabPanelSel guifg=#0f0f0f guibg=#cfc0bf gui=NONE
      \ ctermfg=233 ctermbg=188 cterm=NONE
highlight TabPanelTitle guifg=#000000 guibg=#efefff gui=NONE
      \ ctermfg=232 ctermbg=253 cterm=NONE


" Cursor: "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
      \ ctermfg=NONE ctermbg=189 cterm=NONE
highlight CursorColumn guifg=fg guibg=bg gui=NONE
      \ ctermfg=NONE ctermbg=230 cterm=NONE
highlight lCursor guifg=#2f2f2f guibg=#7ea3a6 gui=NONE
      \ ctermfg=16 ctermbg=110 cterm=NONE
highlight Cursor guifg=#cfcfcf guibg=#3f3f3f gui=NONE
      \ ctermfg=255 ctermbg=237 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
      \ ctermfg=NONE ctermbg=250 cterm=NONE



" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM gui=NONE guifg=#0f0f0f guibg=#af3f5f
      \ ctermfg=255 ctermbg=197 cterm=NONE
endif


" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#cfcfdf gui=NONE
      \ ctermfg=NONE ctermbg=189 cterm=NONE
highlight CursorLineNr guifg=#5f4f40 guibg=#cfefff gui=NONE
      \ ctermfg=17 ctermbg=153 cterm=NONE
highlight CursorLineFold guifg=NONE guibg=#cfcfff gui=bold
      \ ctermfg=237 ctermbg=189 cterm=bold
highlight CursorLineSign guifg=NONE guibg=#8faf8f gui=bold
      \ ctermfg=236 ctermbg=70 cterm=bold



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


" #- Syntax highlighting group -# "{{{1
highlight MatchParen guifg=#0f0f0f guibg=#5f9f5f gui=bold
      \ ctermfg=235 ctermbg=28 cterm=bold,underline
highlight comment guifg=#2f5fcf guibg=bg gui=NONE
      \ ctermfg=27 ctermbg=NONE cterm=NONE
highlight Constant guifg=#3d9f5f guibg=bg gui=NONE
      \ ctermfg=35 ctermbg=NONE cterm=NONE
highlight Special guifg=#3f5faf guibg=bg gui=NONE
      \ ctermfg=111 ctermbg=NONE cterm=NONE
highlight Identifier guifg=#cf1f2f guibg=bg gui=NONE
      \ ctermfg=160 ctermbg=NONE cterm=NONE
highlight Statement guifg=#bf2f5f guibg=bg gui=NONE
      \ ctermfg=124 ctermbg=NONE cterm=NONE
highlight PreProc guifg=#2f3fcd guibg=bg gui=NONE
      \ ctermfg=21 ctermbg=NONE cterm=NONE
highlight type guifg=#1f8f5f guibg=bg gui=NONE
      \ ctermfg=22 ctermbg=NONE cterm=NONE
highlight underlined guifg=#265faf guibg=#ffffcf gui=underline
      \ ctermfg=26 ctermbg=255 cterm=underline
highlight Ignore guifg=#1f5f20 guibg=NONE gui=bold
      \ ctermfg=22 ctermbg=bg cterm=bold
highlight Error guifg=#8f0f2f guibg=bg gui=NONE
      \ ctermfg=196 ctermbg=bg cterm=NONE
highlight Todo guifg=#3268ca guibg=#efefdf gui=bold
      \ ctermfg=32 ctermbg=153 cterm=bold
highlight string guifg=#9f3f5f guibg=bg gui=NONE
      \ ctermfg=131 ctermbg=NONE cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


