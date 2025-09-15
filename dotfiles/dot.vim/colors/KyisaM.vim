" #- vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date
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

" #- highlighting groups for various occasions -#"{{{1
highlight Normal guifg=#cfcfcf guibg=#15151f gui=NONE
                \ ctermfg=15 ctermbg=232 cterm=NONE
highlight NonText guifg=#3333cc guibg=bg gui=NONE
                \ ctermfg=21 ctermbg=bg cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#5fc0ff guibg=bg gui=bold
                \ ctermfg=14 ctermbg=bg cterm=bold
" Search: "{{{2
highlight IncSearch guifg=#0f0f0f guibg=#cc88e1 gui=NONE
                \ ctermfg=52 ctermbg=133 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#0f0f0f guibg=#5088e1 gui=bold
                \ ctermfg=17 ctermbg=153 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#95d5d9 guibg=#20202f gui=NONE
                \ ctermfg=78 ctermbg=234 cterm=underline
highlight ModeMsg guifg=#c0a0ff guibg=#20202f gui=NONE
                \ ctermfg=250 ctermbg=234 cterm=underline
highlight MsgArea guifg=#cfcfcf guibg=#0f0f2f gui=NONE
                \ ctermfg=242 ctermbg=252 cterm=NONE
highlight ErrorMsg guifg=#f84865 guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
highlight WarningMsg guifg=#f05595 guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=underline
highlight Question guifg=#6ab395 guibg=bg gui=NONE
                \ ctermfg=29 ctermbg=NONE cterm=underline
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#cccccc guibg=#34348f gui=NONE
                \ ctermfg=7 ctermbg=12 cterm=underline


" LineNr: "{{{2
highlight LineNr guifg=#0f3f5f guibg=NONE gui=NONE
                \ ctermfg=21 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#9d887c guibg=#20252f gui=NONE
                \ ctermfg=223 ctermbg=234 cterm=NONE
highlight StatusLineNC guifg=#50555f guibg=#202020 gui=NONE
                \ ctermfg=244 ctermbg=235 cterm=NONE
highlight StatusLineTerm guifg=#000f2f guibg=#cfccff gui=NONE
                \ ctermfg=11 ctermbg=bg cterm=NONE
highlight StatusLineTermNc guifg=#002f2f guibg=#8fafcf gui=NONE
                \ ctermfg=11 ctermbg=bg cterm=NONE
"}}}2
highlight VertSplit guifg=#4049d9 guibg=#0f0f0f gui=NONE
                \ ctermfg=27 ctermbg=232 cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#72dc95 guibg=bg gui=NONE
                \ ctermfg=49 ctermbg=bg cterm=NONE
" Visual: "{{{2
highlight Visual guifg=#afafaf guibg=#1f1f3f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#3d3d3d guibg=#aaeeee gui=bold,underline
                \ ctermfg=255 ctermbg=17 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#3f5faf guibg=#0f0f0f gui=NONE
                \ ctermfg=21 ctermbg=232 cterm=NONE
highlight FoldColumn guifg=#3b54ec guibg=#0f0f1f gui=bold
                \ ctermfg=25 ctermbg=232 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=#3f8fcf guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=42 cterm=NONE
highlight DiffChange guifg=#998dbf guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=166 cterm=NONE
highlight DiffDelete guifg=#a62c74 guibg=bg gui=bold
                \ ctermfg=NONE ctermbg=125 cterm=NONE
highlight DiffText guifg=#c9cbce guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
"}}}
highlight SignColumn term=NONE gui=NONE guibg=bg guifg=#a65774
                \ ctermfg=fg ctermbg=bg cterm=underline
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight SpecialKey guifg=#3f3f7f guibg=bg gui=NONE
                \ ctermfg=8 ctermbg=bg cterm=NONE


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
highlight SpellBad guifg=#795099 guibg=bg gui=undercurl
                \ ctermfg=55 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#506399 guibg=bg gui=undercurl
                \ ctermfg=26 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#509982 guibg=bg gui=undercurl
                \ ctermfg=29 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#998c50 guibg=bg gui=undercurl
                \ ctermfg=100 ctermbg=bg cterm=undercurl

" Pmenu: "{{{2
highlight Pmenu guifg=#333333 guibg=#9f9faf gui=NONE
                \ ctermfg=235 ctermbg=251 cterm=NONE
highlight PmenuSel guifg=#afafaf guibg=#1f1f2f gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
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
highlight PmenuSbar guifg=#9c9c9c guibg=#101010 gui=NONE
                \ ctermfg=fg ctermbg=232 cterm=NONE
highlight PmenuThumb guifg=#0f0f0f guibg=#213656 gui=NONE
                \ ctermfg=fg ctermbg=24 cterm=NONE

" Tabline: "{{{2
highlight TabLine guifg=#9d887c guibg=bg gui=NONE
                \ ctermfg=249 ctermbg=232 cterm=NONE
highlight TabLineSel guifg=#f0f0f0 guibg=#0f0f3f gui=NONE
                \ ctermfg=249 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#564234 guibg=bg gui=NONE
                \ ctermfg=138 ctermbg=232 cterm=NONE


" Tabpanel: "{{{2
highlight TabPanel guifg=#9d887c guibg=bg gui=NONE
                \ ctermfg=249 ctermbg=232 cterm=NONE
highlight TabPanelSel guifg=#f0f0f0 guibg=#0f0f3f gui=NONE
                \ ctermfg=249 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#564234 guibg=bg gui=NONE
                \ ctermfg=138 ctermbg=232 cterm=NONE
highlight TabPanelTitle guifg=#000000 guibg=#efefff gui=NONE
                \ ctermfg=232 ctermbg=244 cterm=NONE


" Cursor "{{{2
highlight CursorColumn guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ColorColumn guifg=fg guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=0 cterm=NONE
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
                \ ctermfg=15 ctermbg=232 cterm=NONE
highlight Cursor guifg=#000000 guibg=#8f8f8f gui=NONE
                \ ctermfg=fg ctermbg=71 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE


"IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af2f3f gui=NONE
                \ ctermfg=fg ctermbg=196 cterm=NONE
endif


" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#10101f gui=NONE
                \ ctermfg=NONE ctermbg=233 cterm=NONE
highlight CursorLineNr guifg=#0f3f5f guibg=NONE gui=NONE
                \ ctermfg=0 ctermbg=7 cterm=bold
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



" #- syntax highlighting group -# "{{{1
highlight MatchParen guifg=#2f2f2f guibg=#cf93cd gui=bold
                \ ctermfg=197 ctermbg=219 cterm=bold,underline
highlight comment guifg=#4077e1 guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Constant guifg=#55cf99 guibg=bg gui=NONE
                \ ctermfg=41 ctermbg=bg cterm=NONE
highlight Special guifg=#ccfcfc guibg=bg gui=NONE
                \ ctermfg=153 ctermbg=bg cterm=NONE
"highlight Identifier guifg=#df7f7f guibg=bg gui=NONE
highlight Identifier guifg=#c75a7f guibg=bg gui=NONE
                \ ctermfg=168 ctermbg=bg cterm=NONE
highlight Statement guifg=#735fff guibg=bg gui=NONE
                \ ctermfg=62 ctermbg=bg cterm=NONE
highlight PreProc guifg=#aaffff guibg=bg gui=NONE
                \ ctermfg=87 ctermbg=bg cterm=NONE
highlight type guifg=#5acf89 guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight underlined guifg=#6699cc guibg=#1f202f gui=underline
                \ ctermfg=33 ctermbg=234 cterm=underline
highlight Ignore guifg=#aaaaaa guibg=bg gui=bold
                \ ctermfg=248 ctermbg=bg cterm=bold
highlight Error guifg=#ff2050 guibg=bg gui=NONE
                \ ctermfg=196 ctermbg=bg cterm=NONE
highlight Todo guifg=#a0a0ff guibg=#1f203f gui=bold
                \ ctermfg=45 ctermbg=233 cterm=NONE
highlight string guifg=#f0d8e6 guibg=bg gui=NONE
                \ ctermfg=225 ctermbg=bg cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
