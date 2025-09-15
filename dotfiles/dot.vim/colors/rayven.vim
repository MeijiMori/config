" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" elif emehcsroloc dradnats ym

" #- reset -# "{{{1
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- Colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#0f0005 gui=NONE
                \ ctermfg=15 ctermbg=0 cterm=NONE
highlight NonText guifg=#0f2fff guibg=bg gui=NONE
                \ ctermfg=21 ctermbg=bg cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#0f8f8f guibg=bg gui=bold
                \ ctermfg=37 ctermbg=bg cterm=bold



" Search: "{{{2
highlight IncSearch guifg=#cfcfcf guibg=#0f5f3f gui=bold
                \ ctermfg=72 ctermbg=23 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
          \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#cfcfcf guibg=#0f1f3f gui=bold
                \ ctermfg=158 ctermbg=17 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#002f1f guibg=#8fffaf gui=NONE
                \ ctermfg=22 ctermbg=121 cterm=NONE
highlight ModeMsg guifg=#001f2f guibg=#8fafcf gui=NONE
                \ ctermfg=17 ctermbg=111 cterm=NONE
highlight MsgArea guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#f84865 guibg=#1f000f gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
highlight WarningMsg guifg=#fc4765 guibg=#1f000f gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
highlight Question guifg=#5f2f1f guibg=#ffaf7f gui=NONE
                \ ctermfg=88 ctermbg=216 cterm=underline
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#5f5f3f guibg=#cfcfdf gui=NONE
                \ ctermfg=238 ctermbg=252 cterm=NONE


" LineNr: "{{{2
highlight LineNr guifg=#ff1f3f guibg=NONE gui=NONE
                \ ctermfg=196 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE



" Statusline: "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#0a0010 gui=underline
                \ ctermfg=15 ctermbg=0 cterm=NONE
highlight StatusLineNC guifg=#565234 guibg=#cfafaf gui=NONE
                \ ctermfg=237 ctermbg=138 cterm=NONE
highlight StatusLineTerm guifg=#cfcfcf guibg=#00001f gui=NONE
                \ ctermfg=15 ctermbg=0 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#cfafaf gui=NONE
                \ ctermfg=237 ctermbg=138 cterm=NONE
"}}}2
highlight VertSplit guifg=bg guibg=#00000f gui=bold
                \ ctermfg=bg ctermbg=0 cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#72dc95 guibg=NONE gui=bold,underline
                \ ctermfg=48 ctermbg=NONE cterm=bold,underline

" Visual: "{{{2
highlight Visual guifg=#cfcfcf guibg=#101a3f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f2f4f gui=bold,underline
                \ ctermfg=10 ctermbg=9 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#aaaaaa guibg=#000015 gui=NONE
                \ ctermfg=249 ctermbg=232 cterm=NONE
highlight FoldColumn guifg=#1f3f3f guibg=#000010 gui=bold
                \ ctermfg=23 ctermbg=232 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=fg guibg=#2f3f5f gui=NONE
                \ ctermfg=NONE ctermbg=27 cterm=NONE
highlight DiffChange guifg=fg guibg=#5f804f gui=NONE
                \ ctermfg=NONE ctermbg=35 cterm=NONE
highlight DiffDelete guifg=fg guibg=#f5804f gui=bold
                \ ctermfg=NONE ctermbg=209 cterm=NONE
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


"}}}2


highlight SignColumn guifg=#ffffb0 guibg=bg gui=NONE
                \ ctermfg=221 ctermbg=bg cterm=NONE
highlight Conceal guifg=#ffffb0 guibg=bg gui=NONE
                \ ctermfg=221 ctermbg=197 cterm=NONE
highlight SpecialKey guifg=#585fff guibg=bg gui=NONE
                \ ctermfg=12 ctermbg=bg cterm=NONE


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
highlight SpellBad guifg=#cf5faf guibg=bg gui=undercurl
                \ ctermfg=132 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#af5fcf guibg=bg gui=undercurl
                \ ctermfg=93 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#5fcfaf guibg=bg gui=undercurl
                \ ctermfg=43 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#cfaf5f guibg=bg gui=undercurl
                \ ctermfg=178 ctermbg=bg cterm=undercurl


" Pmenu: "{{{2
highlight Pmenu guifg=#1f1f1f guibg=#afafcf gui=NONE
                \ ctermfg=235 ctermbg=253 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#0f0f2f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
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
highlight PmenuSbar guifg=fg guibg=#000000 gui=NONE
                \ ctermfg=fg ctermbg=233 cterm=NONE
highlight PmenuThumb guifg=fg guibg=#3f0f2f gui=NONE
                \ ctermfg=fg ctermbg=126 cterm=NONE


" Tabline: "{{{2
highlight TabLine guifg=#8f8f8f guibg=#0f0f0f gui=underline
                \ ctermfg=245 ctermbg=233 cterm=underline
highlight TabLineSel guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#ff0f2f guibg=#0f0f0f gui=NONE
                \ ctermfg=196 ctermbg=0 cterm=NONE
highlight TabPanelTitle guifg=#000000 guibg=#efefff gui=NONE
                \ ctermfg=232 ctermbg=244 cterm=NONE


" Tabpanel: "{{{2
highlight TabPanel guifg=#8f8f8f guibg=#0f0f0f gui=NONE
                \ ctermfg=245 ctermbg=233 cterm=NONE
highlight TabPanelSel guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#ff0f2f guibg=#0f0f0f gui=NONE
                \ ctermfg=196 ctermbg=0 cterm=NONE


" Cursor: "{{{2
highlight CursorColumn guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=252 ctermbg=19 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=NONE ctermbg=19 cterm=NONE
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
                \ ctermfg=0 ctermbg=116 cterm=NONE
highlight Cursor guifg=#000000 guibg=#afafff gui=NONE
                \ ctermfg=0 ctermbg=159 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE


"IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#0f0f0f guibg=#cf0f2f gui=NONE
                \ ctermfg=0 ctermbg=160 cterm=NONE
endif


" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#000a0f gui=NONE
                \ ctermfg=NONE ctermbg=232 cterm=NONE
highlight CursorLineNr guifg=#ff1f3f guibg=NONE gui=NONE
                \ ctermfg=129 ctermbg=16 cterm=NONE
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


" #- Syntax highlighting group -# "{{{1
highlight MatchParen guifg=#000000 guibg=#3f2f8f gui=bold
                \ ctermfg=17 ctermbg=55 cterm=bold,underline
highlight comment guifg=#1f8fff guibg=bg gui=NONE
                \ ctermfg=21 ctermbg=bg cterm=NONE
highlight Constant guifg=#2fcf7f guibg=bg gui=NONE
                \ ctermfg=45 ctermbg=bg cterm=NONE
highlight Identifier guifg=#ff5f3f guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
highlight Special guifg=#aeffed guibg=bg gui=NONE
                \ ctermfg=14 ctermbg=bg cterm=NONE
highlight Statement guifg=#af1f3f guibg=bg gui=NONE
                \ ctermfg=160 ctermbg=bg cterm=NONE
highlight PreProc guifg=#8f5fcf guibg=bg gui=NONE
                \ ctermfg=93 ctermbg=bg cterm=NONE
highlight type guifg=#0faf7f guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight underlined guifg=#3faf5f guibg=bg gui=underline
                \ ctermfg=42 ctermbg=bg cterm=underline
highlight Ignore guifg=#0f3f1f guibg=bg gui=bold
                \ ctermfg=22 ctermbg=bg cterm=bold
highlight Error guifg=#f04f7e guibg=bg gui=NONE
                \ ctermfg=13 ctermbg=bg cterm=NONE
highlight Todo guifg=#af2fff guibg=#afafcf gui=bold,underline
                \ ctermfg=55 ctermbg=189 cterm=bold,underline
highlight string guifg=#2f3fff guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim



