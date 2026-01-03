" #- vim color file -# "{{{1
" Note: "{{{2
" hilight ZenkakuSpace /　/
" matchparen ({[*]})
" This colorscheme is light theme that my original colorscheme RiALM

" #- Vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- highlighting groups various ooccasions -# "{{{1
highlight Normal guifg=#efefef guibg=#192a4f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight NonText guifg=#39ffff guibg=bg gui=NONE
                \ ctermfg=80 ctermbg=bg cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=63 ctermbg=bg cterm=bold
highlight Directory guifg=#5f8fff guibg=bg gui=bold
                \ ctermfg=69 ctermbg=bg cterm=bold


" Search: "{{{2
highlight IncSearch guifg=#5f3f2f guibg=#ff8f2f gui=underline
                \ ctermfg=2 ctermbg=49 cterm=underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=58 ctermbg=220 cterm=bold,underline
highlight Search guifg=#0f0f5f guibg=#4f6fbf gui=underline
                \ ctermfg=17 ctermbg=117 cterm=underline


" Message: "{{{2
highlight ErrorMsg guifg=#5f1f3f guibg=#cf3f5f gui=underline
                \ ctermfg=52 ctermbg=124 cterm=underline
highlight MoreMsg guifg=#0f4f0f guibg=#3f8fcf gui=underline
                \ ctermfg=17 ctermbg=32 cterm=underline
highlight ModeMsg guifg=#5f5f5f guibg=#cfcfcf gui=underline
                \ ctermfg=240 ctermbg=255 cterm=underline
highlight MsgArea guifg=#ffffff guibg=#1f2f5f gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight WarningMsg guifg=#5f2f8f guibg=#cf5fff gui=underline
                \ ctermfg=53 ctermbg=165 cterm=underline
highlight Question guifg=#0f5f3f guibg=#3fcf8f gui=underline
                \ ctermfg=22 ctermbg=79 cterm=underline
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#ffffff guibg=#1f3f5f gui=NONE
                \ ctermfg=15 ctermbg=20 cterm=NONE


" LineNr: "{{{2
highlight LineNr ctermfg=white guifg=#75d99d gui=NONE
                \ ctermfg=78 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=145 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#101f3f gui=NONE
                \ ctermfg=252 ctermbg=232 cterm=NONE
highlight StatusLineNC guifg=#5f5f3f guibg=#c4b2ab gui=NONE
                \ ctermfg=94 ctermbg=182 cterm=NONE
highlight StatusLineTerm guifg=#cfcfcf guibg=#0f0f1f gui=NONE
                \ ctermfg=252 ctermbg=233 cterm=NONE
highlight StatusLineTermNC guifg=#0f2f5f guibg=#5f5fcf gui=NONE
                \ ctermfg=18 ctermbg=69 cterm=NONE
" }}}2


highlight VertSplit guifg=#23447f guibg=#1f1f4f gui=NONE
                \ ctermfg=21 ctermbg=232 cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#2fd4c6 guibg=bg gui=bold,underline
                \ ctermfg=43 ctermbg=bg cterm=underline,bold


" Visual: "{{{2
highlight Visual guifg=#ffffff guibg=#002f8f gui=NONE
                \ ctermfg=15 ctermbg=20 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f2f8f gui=underline,bold
                \ ctermfg=fg ctermbg=19 cterm=underline,bold


" Fold: "{{{2
highlight Folded guifg=#bfbfbf guibg=#102040 gui=NONE
                \ ctermfg=254  ctermbg=18 cterm=NONE
highlight FoldColumn guifg=#ffffff guibg=#1f2f5f gui=bold
                \ ctermfg=250 ctermbg=17 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=fg guibg=#5f8f4f gui=NONE
                \ ctermfg=fg ctermbg=36 cterm=NONE
highlight DiffChange guifg=fg guibg=#cf6f4f gui=NONE
                \ ctermfg=fg ctermbg=173 cterm=NONE
highlight DiffDelete guifg=fg guibg=#9f2f3f gui=bold
                \ ctermfg=fg ctermbg=161 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
                \ ctermfg=80 ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
                \ ctermfg=172 ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
                \ ctermfg=197 ctermbg=bg cterm=NONE
" }}}2


highlight SignColumn guifg=#ff5f7f guibg=#1f2f4f gui=NONE
                \ ctermfg=15 ctermbg=235 cterm=NONE
highlight Conceal guifg=#ff5f7f guibg=bg gui=NONE
                \ ctermfg=161 ctermbg=bg cterm=NONE
highlight SpecialKey guifg=#8f5fff guibg=NONE gui=NONE
                \ ctermfg=93 ctermbg=bg cterm=NONE


" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=16 ctermbg=189 cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=16 ctermbg=189 cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=15 ctermbg=19 cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=235 ctermbg=30 cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f5f guibg=#2f8fff gui=bold
      \ ctermfg=17 ctermbg=33 cterm=bold


" Toolbar: "{{{2
highlight ToolbarButton guifg=#0f0f0f guibg=#8f8fff gui=NONE
                \ ctermfg=53 ctermbg=105 cterm=NONE
highlight ToolbarLine guifg=#0f0f0f guibg=#5f8fff gui=NONE
                \ ctermfg=17 ctermbg=39 cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#ffffff guibg=#2f2f8f gui=None
                \ ctermfg=15 ctermbg=19 cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#cf5fdf guibg=bg gui=undercurl
                \ ctermfg=165 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#5f9fff guibg=bg gui=undercurl
                \ ctermfg=117 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#5fff8f guibg=bg gui=undercurl
                \ ctermfg=115 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#ffcf5f guibg=bg gui=undercurl
                \ ctermfg=179 ctermbg=bg cterm=undercurl


" Pmenu:: "{{{2
highlight pmenu guifg=#cfcfcf guibg=#050f2f gui=NONE
                \ ctermfg=255 ctermbg=233 cterm=NONE
highlight PmenuKind guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=255 ctermbg=233 cterm=NONE
highlight PmenuKindSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=255 ctermbg=233 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfefff gui=NONE
                \ ctermfg=255 ctermbg=233 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
                \ ctermfg=255 ctermbg=233 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
                \ ctermfg=255 ctermbg=233 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight pmenuSbar guifg=#afafaf guibg=#0f0f0f gui=NONE
                \ ctermfg=fg ctermbg=238 cterm=NONE
highlight PmenuThumb guifg=#afafaf guibg=#0f1f1f gui=NONE
                \ ctermfg=fg ctermbg=20 cterm=NONE


" Tabline: "{{{2
highlight TabLine guifg=#aaaaaa guibg=#190a3f gui=underline
                \ ctermfg=250 ctermbg=17 cterm=underline
highlight TabLineFill guifg=#415676 guibg=#100a3f gui=underline,bold
                \ ctermfg=26 ctermbg=17 cterm=underline,bold
highlight TabLineSel guifg=#ffffff guibg=#1f3f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE


" Tabpanel: "{{{2
highlight TabPanel guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                \ ctermfg=250 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#0f0fff guibg=#0f3f8f gui=NONE
                \ ctermfg=26 ctermbg=17 cterm=NONE
highlight TabPanelSel guifg=#ffffff guibg=#0f3faf gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=underline
highlight TabPanelTitle guifg=#ffffff guibg=#0f2f5f gui=NONE
                \ ctermfg=252 ctermbg=233 cterm=NONE


" Cursor: "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
                \ ctermfg=NONE ctermbg=bg cterm=NONE
highlight CursorColumn guifg=NONE guibg=grey40 gui=NONE
                \ ctermfg=21 ctermbg=NONE cterm=bold
highlight lCursor guifg=#000000 guibg=#afff8f gui=NONE
                \ ctermfg=16 ctermbg=35 cterm=NONE
highlight Cursor guifg=#000000 guibg=#5faf7f gui=NONE
                \ ctermfg=16 ctermbg=35 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE

" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#bfbfbf guibg=#5f0f3f gui=NONE
                \ ctermfg=16 ctermbg=9 cterm=NONE
endif


" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#1f2f5f gui=NONE
                \ ctermfg=NONE ctermbg=18 cterm=NONE
highlight CursorLineNr guifg=#2f5f8f guibg=#5fafff gui=NONE
                \ ctermfg=17 ctermbg=75 cterm=NONE
highlight CursorLineFold guifg=NONE guibg=#cfcfff gui=bold
                \ ctermfg=16 ctermbg=189 cterm=bold
highlight CursorLineSign guifg=NONE guibg=#8faf8f gui=bold
                \ ctermfg=253 ctermbg=72 cterm=bold


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
highlight MatchParen guifg=fg guibg=#ffaf3f gui=bold
                \ ctermfg=15 ctermbg=11 cterm=bold
highlight comment guifg=#3f5fff guibg=bg gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Constant guifg=#8fffaf guibg=bg gui=NONE
                \ ctermfg=84 ctermbg=bg cterm=NONE
highlight Special guifg=#deffed guibg=bg gui=NONE
                \ ctermfg=195 ctermbg=bg cterm=NONE
highlight Identifier guifg=#5fffaf guibg=bg gui=NONE
                \ ctermfg=78 ctermbg=bg cterm=NONE
highlight Statement guifg=#ffcf7f guibg=bg gui=NONE
                \ ctermfg=222 ctermbg=bg cterm=NONE
highlight PreProc guifg=#cf3faf guibg=bg gui=NONE
                \ ctermfg=163 ctermbg=bg cterm=NONE
highlight type guifg=#3fcf8f guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight underlined guifg=#56efcc guibg=bg gui=underline
                \ ctermfg=49 ctermbg=bg cterm=underline
highlight Ignore guifg=#4f50ff guibg=bg gui=bold
                \ ctermfg=63 ctermbg=bg cterm=bold
highlight Error guifg=#fd4899 guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
highlight Todo guifg=#cfafcf guibg=#1f2f5f gui=bold,underline
                \ ctermfg=141 ctermbg=bg cterm=bold,underline
highlight string guifg=#ffc8ff guibg=bg gui=NONE
                \ ctermfg=5 ctermbg=bg cterm=NONE

" #- User -# "{{{1
highlight User1 guifg=#afafaf guibg=#2f2f2f gui=NONE
                \ ctermfg=251 ctermbg=236 cterm=NONE
highlight User2 guifg=#0f0f3f guibg=#0f3f8f gui=NONE
                \ ctermfg=17 ctermbg=27 cterm=NONE
highlight User3 guifg=#0f3f0f guibg=#0f8f3f gui=NONE
                \ ctermfg=22 ctermbg=35 cterm=NONE
highlight User4 guifg=#3f2f0f guibg=#8f3f0f gui=NONE
                \ ctermfg=174 ctermbg=94 cterm=NONE
highlight User5 guifg=#3f0f0f guibg=#8f0f3f gui=NONE
                \ ctermfg=88 ctermbg=125 cterm=NONE
highlight User6 guifg=#5f5f0f guibg=#8f8f0f gui=NONE
                \ ctermfg=94 ctermbg=229 cterm=NONE
highlight User7 guifg=#5f0f5f guibg=#8f3f8f gui=NONE
                \ ctermfg=88 ctermbg=201 cterm=NONE
highlight User8 guifg=#3f5f3f guibg=#8f8f5f gui=NONE
                \ ctermfg=130 ctermbg=222 cterm=NONE
highlight User9 guifg=#5f5f5f guibg=#afafcf gui=NONE
                \ ctermfg=244 ctermbg=189 cterm=NONE
" #- END: -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
