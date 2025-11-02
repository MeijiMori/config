" #- Vim color file -# "{{{1
" Note: "{{{2
" hilight ZenkakuSpace /　/
" matchparen ({[*]})

" #- reset -# "{{{1
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -#"{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- highiliting group for various occasions "{{{1
highlight Normal guifg=#efefef guibg=#101025 gui=NONE
                \ ctermfg=15 ctermbg=233 cterm=NONE
highlight NonText guifg=#8f5f8f guibg=bg gui=NONE
                \ ctermfg=138 ctermbg=bg cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#3993d3 guibg=bg gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=bold
" Search: "{{{2
highlight IncSearch guifg=#cfcfcf guibg=#7f0f3f gui=bold
                \ ctermfg=250 ctermbg=52 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#cfcfcf guibg=#0f1f5f gui=bold
                \ ctermfg=250 ctermbg=17 cterm=bold,underline
" Message: {{{2
highlight MoreMsg guifg=#af8fff guibg=bg gui=NONE
                \ ctermfg=69 ctermbg=bg cterm=NONE
highlight ModeMsg guifg=#3f5fff guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight MsgArea guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#ff3f3f guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
highlight WarningMsg guifg=#af2f3f guibg=bg gui=NONE
                \ ctermfg=161 ctermbg=bg cterm=NONE
highlight Question guifg=#7bdccb gui=NONE gui=NONE
                \ ctermfg=79 ctermbg=bg cterm=NONE
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#0f2f3f guibg=#afafcf gui=NONE
                \ ctermfg=103 ctermbg=238 cterm=NONE


" LineNr: "{{{2
highlight LineNr guifg=#35ffaf guibg=NONE gui=NONE
                \ ctermfg=47 ctermbg=bg cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#000f1f gui=NONE
                \ ctermfg=253 ctermbg=232 cterm=NONE
highlight StatusLineNC guifg=#4f4f4f guibg=#afafcf gui=NONE
                \ ctermfg=238 ctermbg=249 cterm=NONE
highlight StatusLineTerm guifg=#cfcfcf guibg=#1f2f4f gui=NONE
                \ ctermfg=253 ctermbg=232 cterm=NONE
highlight StatusLineTermNC guifg=#4f4f4f guibg=#afafcf gui=bold
                \ ctermfg=238 ctermbg=249 cterm=NONE
"}}}2
highlight VertSplit guifg=#3b54ec guibg=#0f0f0f gui=NONE
                \ ctermfg=26 ctermbg=bg cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#6666c2 guibg=bg gui=NONE
                \ ctermfg=63 ctermbg=bg cterm=underline
" Visual: "{{{2
highlight Visual gui=NONE guifg=#cfcfcf guibg=#0f1f2f
                \ ctermfg=7 ctermbg=234 cterm=NONE
highlight VisualNOS term=underline,bold gui=underline,bold guifg=#65c06d guibg=bg
                \ ctermfg=47 ctermbg=bg cterm=bold,underline
"}}}2
" Fold: "{{{2
highlight Folded guifg=#20202f guibg=#afafcf gui=underline
                \ ctermfg=236 ctermbg=250 cterm=underline
highlight FoldColumn guifg=#3b54ec guibg=bg gui=bold
                \ ctermfg=27 ctermbg=233 cterm=bold

" Diff: "{{{2
highlight DiffAdd guifg=#0f0f0f guibg=#a47e7e gui=NONE
                \ ctermfg=fg ctermbg=89 cterm=NONE
highlight DiffChange guifg=#0f0f0f guibg=#9f8fbf gui=NONE
                \ ctermfg=fg ctermbg=130 cterm=NONE
highlight DiffDelete guifg=#0f0f0f guibg=#af2f7f gui=bold
                \ ctermfg=fg ctermbg=88 cterm=NONE
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
"}}}2

highlight SignColumn guifg=#ffffff guibg=#8f8fff gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight SpecialKey guifg=#734cce guibg=bg gui=NONE
                \ ctermfg=57 ctermbg=bg cterm=NONE


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
highlight ToolbarButton guifg=#3f1f8f guibg=#afafff gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ToolbarLine guifg=#5f0f0f guibg=#df3fcf gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE




" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#795099 guibg=bg gui=undercurl
                \ ctermfg=93 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#506399 guibg=bg gui=undercurl
                \ ctermfg=33 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#509982 guibg=bg gui=undercurl
                \ ctermfg=35 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#998c50 guibg=bg gui=undercurl
                \ ctermfg=178 ctermbg=bg cterm=undercurl

" Pmenu: "{{{2
highlight Pmenu guifg=#a4a9a4 guibg=#0f0a1f gui=NONE
                \ ctermfg=250 ctermbg=232 cterm=NONE
highlight PmenuSel guifg=#d2d2d2 guibg=#00101f gui=NONE
                \ ctermfg=250 ctermbg=17 cterm=NONE
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
highlight PmenuSbar guifg=fg guibg=#00001f gui=NONE
                \ ctermfg=fg ctermbg=17 cterm=NONE
highlight PmenuThumb guifg=fg guibg=#1f1f4f gui=NONE
                \ ctermfg=fg ctermbg=233 cterm=NONE

"Tabline: "{{{2
highlight TabLine guifg=#868686 guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=233 cterm=NONE
highlight TabLineSel guifg=#65c06d guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=233 cterm=NONE
highlight TabLineFill guifg=#769950 guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=232 cterm=NONE
"Tabpanel: "{{{2
highlight TabPanel guifg=#868686 guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=233 cterm=NONE
highlight TabPanelSel guifg=#65c06d guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=233 cterm=NONE
highlight TabPanelFill guifg=#769950 guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=232 cterm=NONE
highlight TabPanelTitle guifg=#000000 guibg=#efefff gui=NONE
                \ ctermfg=232 ctermbg=244 cterm=NONE


"Cursor "{{{2
highlight CursorColumn guifg=NONE guibg=#30303f gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ColorColumn guifg=NONE guibg=#30303f gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight lCursor guifg=#000000 guibg=#6c83a6 gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Cursor guifg=#000000 guibg=#8f8faf gui=NONE
                \ ctermfg=0 ctermbg=68 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE


" Cursor color for IME status "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#5f002f gui=NONE
                \ ctermfg=0 ctermbg=125 cterm=NONE
endif



" Cursorline: "{{{2
highlight CursorLineNr guifg=#35ffaf guibg=NONE gui=NONE
                \ ctermfg=47 ctermbg=0 cterm=bold
highlight CursorLine guifg=NONE guibg=#0f0f2f gui=NONE
                \ ctermfg=NONE ctermbg=17 cterm=NONE
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



" #- syntax highighting group "{{{1
highlight MatchParen guifg=#000000 guibg=#3f5f5f gui=bold
                \ ctermfg=232 ctermbg=30 cterm=bold,underline
highlight Comment guifg=#3f3fcf guibg=bg gui=NONE
                \ ctermfg=26 ctermbg=bg cterm=NONE
highlight Constant guifg=#3faf8f guibg=bg gui=NONE
                \ ctermfg=35 ctermbg=bg cterm=NONE
highlight Special guifg=#cfcfff guibg=bg gui=NONE
                \ ctermfg=250 ctermbg=bg cterm=NONE
highlight Identifier guifg=#5f3fff guibg=bg gui=NONE
                \ ctermfg=25 ctermbg=bg cterm=NONE
highlight Statement guifg=#bf5faf guibg=bg gui=NONE
                \ ctermfg=171 ctermbg=bg cterm=NONE
highlight PreProc guifg=#3f5faf guibg=bg gui=NONE
                \ ctermfg=12 ctermbg=bg cterm=NONE
highlight type guifg=#2fcfaf guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight underlined guifg=#5fcfaf guibg=#101f3f gui=underline
                \ ctermfg=49 ctermbg=234 cterm=underline
highlight Ignore guifg=#0f5f2f guibg=bg gui=NONE
                \ ctermfg=35 ctermbg=bg cterm=bold
highlight Error guifg=#f34d70 guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
highlight Todo guifg=#2f2f5f guibg=#8f8f8f gui=bold
                \ ctermfg=57 ctermbg=250 cterm=bold,underline
highlight string guifg=#ed4949 guibg=bg gui=NONE
                \ ctermfg=161 ctermbg=bg cterm=NONE


" #- hl-User -# "{{{1
highlight User1 guifg=#3f3f3f guibg=#efffff gui=NONE
                \ ctermfg=246 ctermbg=252 cterm=NONE
highlight User2 guifg=#6f0f2f guibg=#ff0f5f gui=NONE
                \ ctermfg=240 ctermbg=250 cterm=NONE
highlight User3 guifg=#5f5f2f guibg=#ff8f2f gui=NONE
                \ ctermfg=255 ctermbg=239 cterm=NONE
highlight User4 guifg=#0f5f1f guibg=#3fdf8f gui=NONE
                \ ctermfg=134 ctermbg=182 cterm=NONE
highlight User5 guifg=#1f0f5f guibg=#3fbfff gui=NONE
                \ ctermfg=69 ctermbg=117 cterm=NONE
highlight User6 guifg=#8f5f0f guibg=#ffff2f gui=NONE
                \ ctermfg=17 ctermbg=69 cterm=NONE
highlight User7 guifg=#5f0f5f guibg=#af5fff gui=NONE
                \ ctermfg=17 ctermbg=5 cterm=NONE
highlight User8 guifg=#0f0f0f guibg=#8fcfff gui=NONE
                \ ctermfg=22 ctermbg=43 cterm=NONE
highlight User9 guifg=#cfcfcf guibg=#0f0f0f gui=NONE
                \ ctermfg=0 ctermbg=215 cterm=NONE



" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim



