" #- Vim colorscheme file -# "{{{1
" NONE: "{{{2
" hilight /　/
" MatchParen "{([*])}

" #- reset -#{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -#{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cccccc guibg=#202020 gui=NONE
              \ ctermfg=7 ctermbg=233 cterm=NONE
highlight SpecialKey guifg=#4f53ff guibg=bg gui=NONE
              \ ctermfg=25 ctermbg=NONE cterm=NONE
highlight NonText guifg=#4ef9c8 guibg=#2f2f2f gui=NONE
              \ ctermfg=48 ctermbg=234 cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
              \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#5f7fff guibg=bg gui=NONE
              \ ctermfg=33 ctermbg=bg cterm=bold


" Search: "{{{2
highlight IncSearch guifg=bg guibg=#bf9fef gui=bold
              \ ctermfg=53 ctermbg=140 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
              \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#000000 guibg=#4f88f1 gui=bold
              \ ctermfg=17 ctermbg=27 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#95d5d9 guibg=#303030 gui=NONE
              \ ctermfg=123 ctermbg=234 cterm=NONE
highlight ModeMsg guifg=#bfd9ff guibg=#303030 gui=NONE
              \ ctermfg=117 ctermbg=234 cterm=NONE
highlight MsgArea guifg=fg guibg=bg gui=NONE
              \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#ff3f5f guibg=bg gui=NONE
              \ ctermfg=9 ctermbg=bg cterm=NONE
highlight WarningMsg guifg=#ff3f5f guibg=bg gui=NONE
              \ ctermfg=9 ctermbg=bg cterm=NONE
highlight Question guifg=#6ab3b5 guibg=bg gui=NONE
              \ ctermfg=85 ctermbg=bg cterm=underline
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
              \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
              \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#dfdfdf guibg=#2f3f5f gui=NONE
              \ ctermfg=15 ctermbg=17 cterm=NONE


" LineNr: "{{{2
highlight LineNr guifg=#c3bcb4 guibg=#252525 gui=NONE
              \ ctermfg=246 ctermbg=bg cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
              \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
              \ ctermfg=246 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#10103f guibg=#dfdfdf gui=NONE
              \ ctermfg=235 ctermbg=252 cterm=NONE
highlight StatusLineNC guifg=#565234 guibg=#c4b2ab gui=NONE
              \ ctermfg=235 ctermbg=181 cterm=NONE
highlight StatusLineTerm guifg=#000f2f guibg=#cfccff gui=NONE
              \ ctermfg=233 ctermbg=189 cterm=NONE
highlight StatusLineTermNC guifg=#002f2f guibg=#8fafcf gui=NONE
              \ ctermfg=17 ctermbg=111 cterm=NONE
"}}}2


highlight VertSplit guifg=#3f7fff guibg=#2f2f2f gui=NONE
              \ ctermfg=26 ctermbg=235 cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
              \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
              \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#72dc95 guibg=bg gui=NONE
              \ ctermfg=48 ctermbg=bg cterm=NONE


" Visual: "{{{2
highlight Visual guifg=#ffeedd guibg=#1f2f5f gui=NONE
              \ ctermfg=15 ctermbg=19 cterm=NONE
highlight VisualNOS guifg=#1f1f2f guibg=#5f8fcf gui=bold,underline
              \ ctermfg=15 ctermbg=25 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#4f53ff guibg=#1f1f1f gui=NONE
              \ ctermfg=63 ctermbg=232 cterm=NONE
highlight FoldColumn guifg=#4bcf7f guibg=#1f1f1f gui=bold
              \ ctermfg=35 ctermbg=232 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=#2f7fff guibg=bg gui=NONE
              \ ctermfg=15 ctermbg=25 cterm=NONE
highlight DiffChange guifg=#ffff9f guibg=bg gui=NONE
              \ ctermfg=15 ctermbg=208 cterm=NONE
highlight DiffDelete guifg=#f62c74 guibg=bg gui=NONE
              \ ctermfg=15 ctermbg=88 cterm=NONE
highlight DiffText guifg=#c9cbce guibg=bg gui=NONE
              \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
              \ ctermfg=35 ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
              \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
              \ ctermfg=226 ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
              \ ctermfg=125 ctermbg=bg cterm=NONE
"}}}2


highlight SignColumn gui=NONE guifg=#0f0f0f guibg=#8f8f8f
              \ ctermfg=232 ctermbg=244 cterm=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
              \ ctermfg=fg ctermbg=161 cterm=NONE
highlight SpecialKey guifg=#4f53ff guibg=bg gui=NONE
              \ ctermfg=68 ctermbg=NONE cterm=NONE


" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=234 ctermbg=255 cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=234 ctermbg=255 cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=15 ctermbg=19 cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=235 ctermbg=43 cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#cfafff gui=bold
      \ ctermfg=52 ctermbg=183 cterm=bold


" Toolbar: "{{{2
highlight ToolbarButton guifg=#5f5f8f guibg=#cfefff gui=bold
                \ ctermfg=17 ctermbg=153 cterm=NONE
highlight ToolbarLine guifg=fg guibg=#efcfff gui=NONE
                \ ctermfg=52 ctermbg=225 cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=235 ctermbg=255 cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=17 ctermbg=73 cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#f95099 guibg=bg gui=undercurl
              \ ctermfg=125 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#50a3f9 guibg=bg gui=undercurl
              \ ctermfg=27 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#a9cc50 guibg=bg gui=undercurl
              \ ctermfg=220 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#50c982 guibg=bg gui=undercurl
              \ ctermfg=35 ctermbg=bg cterm=undercurl

" Pmenu: "{{{2
highlight Pmenu guifg=#aaaaaa guibg=#25202f gui=NONE
              \ ctermfg=247 ctermbg=233 cterm=NONE
highlight PmenuSel guifg=#afafaf guibg=#1f2f5f gui=NONE
              \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
              \ ctermfg=247 ctermbg=233 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
              \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfefff gui=NONE
              \ ctermfg=247 ctermbg=233 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
              \ ctermfg=247 ctermbg=233 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
              \ ctermfg=15 ctermbg=19 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
              \ ctermfg=15 ctermbg=233 cterm=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=#000000 gui=bold
              \ ctermfg=15 ctermbg=17 cterm=bold
highlight PmenuThumb guifg=#415676 guibg=#0f0f0f gui=bold
              \ ctermfg=15 ctermbg=233 cterm=bold


" Tabline: "{{{2
highlight TabLine guifg=#3f3f3f guibg=#cccccc gui=underline
              \ ctermfg=235 ctermbg=251 cterm=underline
highlight TabLineFill guifg=#000000 guibg=#999999 gui=underline
              \ ctermfg=234 ctermbg=244 cterm=underline
highlight TabLineSel guifg=#cfcfcf guibg=#1f2f4f gui=NONE
              \ ctermfg=255 ctermbg=17 cterm=NONE


" Tabpanel: "{{{2
highlight TabPanel guifg=#3f3f3f guibg=#cccccc gui=NONE
              \ ctermfg=235 ctermbg=251 cterm=NONE
highlight TabPanelFill guifg=#000000 guibg=#999999 gui=NONE
              \ ctermfg=234 ctermbg=244 cterm=NONE
highlight TabPanelSel guifg=#cfcfcf guibg=#1f2f4f gui=NONE
              \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabPanelTitle guifg=#000000 guibg=#efefff gui=NONE
              \ ctermfg=232 ctermbg=244 cterm=NONE


" Cursor: "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
              \ ctermfg=15 ctermbg=124 cterm=underline
highlight CursorColumn guifg=NONE guibg=#892f30 gui=NONE
              \ ctermfg=NONE ctermbg=14 cterm=NONE
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
              \ ctermfg=NONE ctermbg=115 cterm=NONE
highlight Cursor guifg=#000000 guibg=#2f807f gui=NONE
                \ ctermfg=0 ctermbg=23 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE


" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#bd2745 gui=NONE
              \ ctermfg=16 ctermbg=88 cterm=NONE
endif


" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#2f3f5f gui=NONE
              \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight CursorLineNr guifg=#c3bcb4 guibg=#252525 gui=NONE
              \ ctermfg=35 ctermbg=235 cterm=bold
highlight CursorLineFold guifg=NONE guibg=#cfcfff gui=bold
                \ ctermfg=255 ctermbg=189 cterm=bold
highlight CursorLineSign guifg=NONE guibg=#8faf8f gui=bold
                \ ctermfg=255 ctermbg=108 cterm=bold


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
highlight MatchParen guifg=#00000f guibg=#2f3fcd gui=bold
              \ ctermfg=17 ctermbg=27 cterm=bold,underline
"highlight comment guifg=#2d79c6 guibg=#3f3f3f gui=NONE
highlight comment guifg=#5088e1 guibg=bg gui=NONE
              \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Constant guifg=#aa7777 guibg=bg gui=NONE
              \ ctermfg=96 ctermbg=bg cterm=NONE
highlight Special guifg=#cfffff guibg=bg gui=NONE
              \ ctermfg=159 ctermbg=bg cterm=NONE
highlight Identifier guifg=#879fff guibg=bg gui=NONE
              \ ctermfg=69 ctermbg=bg cterm=NONE
"highlight Statement guifg=#9be188 guibg=bg gui=NONE
highlight Statement guifg=#85baff guibg=bg gui=NONE
              \ ctermfg=117 ctermbg=bg cterm=NONE
"highlight guifg=#b871b7 guibg=bg PreProc
highlight PreProc guifg=#aaffff guibg=bg gui=NONE
              \ ctermfg=123 ctermbg=bg cterm=NONE
"highlight type guifg=#71ffaf guibg=bg gui=NONE
highlight type guifg=#61cf8f guibg=bg gui=NONE
              \ ctermfg=77 ctermbg=bg cterm=NONE
highlight underlined guifg=#6699cc guibg=bg gui=underline
              \ ctermfg=75 ctermbg=bg cterm=underline
highlight Ignore guifg=#a3ffa2 guibg=bg gui=NONE
              \ ctermfg=123 ctermbg=bg cterm=NONE
highlight Error guifg=#ff3f5f guibg=bg gui=NONE
              \ ctermfg=161 ctermbg=bg cterm=NONE
"highlight Todo guifg=#a0a0ff guibg=bg gui=bold
highlight Todo guifg=#50a0ff guibg=bg gui=NONE
              \ ctermfg=33 ctermbg=bg cterm=bold,underline
highlight string guifg=#f0d8e6 guibg=bg gui=NONE
              \ ctermfg=220 ctermbg=bg cterm=NONE

" #- END -# "{{{1
" vim: filetype=vim
" vim: fen:fdm=marker


