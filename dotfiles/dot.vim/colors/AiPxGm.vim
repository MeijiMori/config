" #- vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file

" #- Vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

" #- colorscheme name -#"{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#aaaaaa guibg=#1f1f1f gui=NONE
          \ ctermfg=253 ctermbg=232 cterm=NONE
highlight nontext guifg=#4effaf guibg=#202020 gui=bold
          \ ctermfg=49 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#5fbfff guibg=NONE gui=NONE
          \ ctermfg=39 ctermbg=bg cterm=bold
" Search: "{{{2
highlight IncSearch guifg=#000000 guibg=#cc88e1 gui=bold
          \ ctermfg=0 ctermbg=177 cterm=bold
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
          \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#000000 guibg=#4f88f1 gui=bold
          \ ctermfg=0 ctermbg=33 cterm=bold

" Message: "{{{2
highlight ErrorMsg guifg=#4878f5 guibg=NONE gui=NONE
          \ ctermfg=27 ctermbg=bg cterm=NONE
highlight MoreMsg guifg=#ffffff guibg=#2f2f2f gui=NONE
          \ ctermfg=251 ctermbg=236 cterm=NONE
highlight ModeMsg guifg=#affff9 guibg=NONE gui=NONE
          \ ctermfg=121 ctermbg=NONE cterm=NONE
highlight MsgArea guifg=#ffffff guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight WarningMsg guifg=#ff3845 guibg=NONE gui=NONE
          \ ctermfg=197 ctermbg=bg cterm=NONE
highlight Question guifg=#6ab3b5 guibg=NONE gui=NONE
          \ ctermfg=23 ctermbg=NONE cterm=NONE
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#dfdfdf guibg=#2f3f5f gui=NONE
          \ ctermfg=252 ctermbg=17 cterm=NONE

" LineNr: "{{{2
highlight LineNr guifg=#cfccb4 guibg=NONE gui=NONE
          \ ctermfg=138 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#202020 guibg=#bfbfbf gui=NONE
          \ ctermfg=236 ctermbg=251 cterm=NONE
highlight StatusLineNC guifg=#565234 guibg=#b2a089 gui=NONE
          \ ctermfg=237 ctermbg=180 cterm=NONE
highlight StatusLineTerm guifg=#202020 guibg=#bfbfbf gui=NONE
          \ ctermfg=236 ctermbg=251 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#b2a089 gui=NONE
          \ ctermfg=237 ctermbg=138 cterm=NONE


"}}}2
highlight VertSplit guifg=#3059ff guibg=#0f0f0f gui=bold
          \ ctermfg=26 ctermbg=0 cterm=bold
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
          \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
          \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#72acf5 guibg=NONE gui=NONE
          \ ctermfg=30 ctermbg=bg cterm=NONE


" Visual: "{{{2
highlight Visual guifg=#ffeedd guibg=#2f3f5f gui=NONE
          \ ctermfg=225 ctermbg=17 cterm=NONE
highlight VisualNOS guibg=#aaeeee guifg=#3d3d3d gui=underline
          \ ctermfg=17 ctermbg=51 cterm=underline


" Fold: "{{{2
highlight Folded guifg=#3f7fff guibg=#1f1f3f gui=NONE
          \ ctermfg=26 ctermbg=233 cterm=NONE
highlight FoldColumn guifg=#aaaaaa guibg=#0f2f4f gui=bold
          \ ctermfg=245 ctermbg=17 cterm=bold

" Diff: "{{{2
highlight DiffAdd guifg=#2f7fff guibg=NONE gui=NONE
          \ ctermfg=fg ctermbg=35 cterm=NONE
highlight DiffChange guifg=#ffff9f guibg=NONE gui=NONE
          \ ctermfg=fg ctermbg=214 cterm=NONE
highlight DiffDelete guifg=#f62c74 guibg=NONE gui=NONE
          \ ctermfg=fg ctermbg=52 cterm=NONE
highlight DiffText guifg=#c9cbce guibg=NONE gui=NONE
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

highlight SignColumn guifg=#afdfff guibg=#0f0f1f gui=NONE
          \ ctermfg=111 ctermbg=16 cterm=NONE
highlight Conceal guifg=#ff5f7f guibg=bg gui=NONE
          \ ctermfg=161 ctermbg=bg cterm=NONE
highlight SpecialKey guifg=#4f3fff guibg=NONE gui=NONE
          \ ctermfg=21 ctermbg=bg cterm=NONE


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
highlight QuickFixLine guifg=#0f0f5f guibg=#2f8fff gui=bold
      \ ctermfg=fg ctermbg=bg cterm=NONE


" Toolbar: "{{{2
highlight ToolbarButton guifg=#3f1f8f guibg=#afafff gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ToolbarLine guifg=#5f0f0f guibg=#df3fcf gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#ffffff guibg=#2f2f8f gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#c950ff guibg=NONE gui=undercurl
          \ ctermfg=5 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#4f8fff guibg=NONE gui=undercurl
          \ ctermfg=27 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#50ff82 guibg=NONE gui=undercurl
          \ ctermfg=36 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#bbcf6f guibg=NONE gui=undercurl
          \ ctermfg=180 ctermbg=bg cterm=undercurl

" Pmenu: "{{{2
highlight Pmenu guifg=#aaaaaa guibg=#202020 gui=NONE
          \ ctermfg=248 ctermbg=0 cterm=NONE
highlight PmenuSel guifg=#cccccc guibg=#415676 gui=NONE
          \ ctermfg=252 ctermbg=17 cterm=NONE
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
highlight PmenuSbar guifg=#9c9c9c guibg=NONE gui=bold
          \ ctermfg=fg ctermbg=17 cterm=NONE
highlight PmenuThumb guifg=#415676 guibg=NONE gui=reverse
          \ ctermfg=fg ctermbg=242 cterm=NONE

" Tabline: "{{{2
highlight TabLine guifg=#5f5f5f guibg=#bfbfbf gui=underline
          \ ctermfg=238 ctermbg=250 cterm=underline
highlight TabLineSel guifg=#ffffff guibg=#1f3f6f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#000000 guibg=#aaaaaa gui=underline
          \ ctermfg=232 ctermbg=244 cterm=underline


" Tabpanel: "{{{2
highlight TabPanel guifg=#5f5f5f guibg=#bfbfbf gui=NONE
          \ ctermfg=238 ctermbg=250 cterm=NONE
highlight TabPanelSel guifg=#ffffff guibg=#1f3f6f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#000000 guibg=#aaaaaa gui=NONE
          \ ctermfg=232 ctermbg=244 cterm=NONE
highlight TabPanelTitle guifg=#cfcfcf guibg=#5f5f5f gui=NONE
          \ ctermfg=232 ctermbg=244 cterm=NONE


" Cursor: "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
          \ ctermfg=231 ctermbg=88 cterm=NONE
highlight CursorColumn guifg=NONE guibg=#892f30 gui=NONE
          \ ctermfg=7 ctermbg=52 cterm=NONE
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
          \ ctermfg=253 ctermbg=232 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
          \ ctermfg=NONE ctermbg=250 cterm=NONE
highlight Cursor guifg=#000000 guibg=#7fffa9 gui=NONE
          \ ctermfg=0 ctermbg=120 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#ff425f gui=NONE
          \ ctermfg=0 ctermbg=88 cterm=NONE
endif


" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#2f3f5f gui=NONE
          \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight CursorLineNr guifg=#cfccb4 guibg=NONE gui=bold
          \ ctermfg=138 ctermbg=NONE cterm=bold
highlight CursorLineFold guifg=NONE guibg=#cfcfff gui=bold
          \ ctermfg=93 ctermbg=16 cterm=bold
highlight CursorLineSign guifg=NONE guibg=#8faf8f gui=bold
          \ ctermfg=93 ctermbg=16 cterm=bold


 " Terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=fg guibg=bg gui=NONE
  " Terminal color
  let g:terminal_ansi_colors = [
    \ "#0c0c0c", "#850f1f", "#13710e", "#819c00",
    \ "#00378a", "#881798", "#3a96dd", "#8f8f8f",
    \ "#767676", "#872836", "#16960c", "#6a7f84",
    \ "#3b789f", "#94005e", "#61d6d6", "#989898"
    \ ]
endif



" #- syntax highlighting group -#"{{{1
highlight MatchParen guifg=#575757 guibg=#5f93cd gui=bold
          \ ctermfg=234 ctermbg=26 cterm=bold,underline
highlight comment guifg=#5088e1 guibg=NONE gui=NONE
          \ ctermfg=27 ctermbg=NONE cterm=NONE
highlight Constant guifg=#aa7777 guibg=NONE gui=NONE
          \ ctermfg=167 ctermbg=NONE cterm=NONE
highlight Identifier guifg=#879fff guibg=NONE gui=NONE
          \ ctermfg=69 ctermbg=NONE cterm=NONE
highlight Special guifg=#cfffff guibg=NONE gui=NONE
          \ ctermfg=147 ctermbg=NONE cterm=NONE
highlight Statement guifg=#85baff guibg=NONE gui=NONE
          \ ctermfg=117 ctermbg=NONE cterm=NONE
highlight PreProc guifg=#aaffff guibg=NONE gui=NONE
          \ ctermfg=81 ctermbg=NONE cterm=NONE
highlight type guifg=#61cf8f guibg=NONE gui=NONE
          \ ctermfg=79 ctermbg=NONE cterm=NONE
highlight underlined guifg=#6699cc guibg=NONE gui=NONE
          \ ctermfg=27 ctermbg=NONE cterm=NONE
highlight Ignore guifg=#a3ffa2 guibg=NONE gui=bold
          \ ctermfg=77 ctermbg=NONE cterm=bold
highlight Error guifg=#ff3845 guibg=NONE gui=NONE
          \ ctermfg=160 ctermbg=NONE cterm=NONE
highlight Todo guifg=#50a0ff guibg=NONE gui=bold,underline
          \ ctermfg=12 ctermbg=NONE cterm=bold,underline
highlight string guifg=#f0d8e6 guibg=NONE gui=NONE
          \ ctermfg=225 ctermbg=NONE cterm=NONE


" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
