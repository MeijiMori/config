" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}"
" highlighting ZenkakuSpace /　/
" Gui colorscheme file
" My colorscheme file


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
highlight Normal guifg=#203f2f guibg=#ffe8ff gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
highlight NonText guifg=#0faf2f guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight EndOfBuffer guifg=#2f2fff guibg=#ffeffd gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#2f8f39 guibg=bg gui=bold
                \ ctermfg=125 ctermbg=bg cterm=bold
" Search: "{{{2
highlight IncSearch guifg=#0f5f3f guibg=#3fcf8f gui=bold,underline
                \ ctermfg=20 ctermbg=32 cterm=NONE
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#0f5f2f guibg=#5fafff gui=bold,underline
                \ ctermfg=34 ctermbg=115 cterm=NONE


" Message: "{{{2
highlight ErrorMsg guifg=#2f1f0f guibg=#ffafcf gui=underline
                \ ctermfg=160 ctermbg=134 cterm=NONE
highlight MoreMsg guifg=#0f5f2f guibg=#8fdf9f gui=underline
                \ ctermfg=2 ctermbg=49 cterm=NONE
highlight ModeMsg guifg=#0f5f5f guibg=#afcfff gui=underline
                \ ctermfg=242 ctermbg=252 cterm=underline
highlight MsgArea guifg=#0f5f5f guibg=#fff0f5 gui=NONE
                \ ctermfg=242 ctermbg=252 cterm=NONE
highlight WarningMsg guifg=#8f5f3f guibg=#ffcfaf gui=underline
                \ ctermfg=2 ctermbg=bg cterm=NONE
highlight Question guifg=#0f0f5f guibg=#7fafcf gui=underline
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#ffffff guibg=#0f5faf gui=NONE
                \ ctermfg=241 ctermbg=252 cterm=NONE


" LineNr: "{{{2
highlight LineNr guifg=#0faf0f guibg=NONE gui=NONE
                \ ctermfg=187 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#0f0f5f guibg=#f0dfff gui=NONE
                \ ctermfg=96 ctermbg=183 cterm=NONE
highlight StatusLineNC guifg=#0f3f1f guibg=#efe0f5 gui=NONE
                \ ctermfg=15 ctermbg=16 cterm=NONE
highlight StatusLineTerm guifg=#000f2f guibg=#dfffff gui=NONE
                \ ctermfg=11 ctermbg=bg cterm=NONE
highlight StatusLineTermNc guifg=#002f2f guibg=#cfcfff gui=NONE
                \ ctermfg=11 ctermbg=bg cterm=NONE
" }}}2
highlight VertSplit guifg=#af8fff guibg=bg gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#1f8f2f guibg=#ffeaf5 gui=bold,underline
                \ ctermfg=35 ctermbg=NONE cterm=bold,underline
" Visual: "{{{2
highlight Visual guifg=#ffffff guibg=#0f3f8f gui=NONE
                \ ctermfg=252 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f4f2f gui=underline,bold
                \ ctermfg=15 ctermbg=33 cterm=bold


" Fold: "{{{2
highlight Folded guifg=#8f5f5f guibg=#ffdfef gui=NONE
                \ ctermfg=252 ctermbg=016 cterm=NONE
highlight FoldColumn guifg=#0f0f8f guibg=#ffdfef gui=bold
                \ ctermfg=27 ctermbg=16 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=fg guibg=#2fcf8f gui=NONE
                \ ctermfg=fg ctermbg=2 cterm=NONE
highlight DiffChange guifg=fg guibg=#ffcf2f gui=NONE
                \ ctermfg=fg ctermbg=209 cterm=NONE
highlight DiffDelete guifg=fg guibg=#ff8f8f gui=NONE
                \ ctermfg=fg ctermbg=9 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
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
highlight SignColumn guifg=fg guibg=#efefff gui=NONE
                \ ctermfg=180 ctermbg=bg cterm=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight SpecialKey guifg=#1f7f5f guibg=bg gui=NONE
                \ ctermfg=93 ctermbg=NONE cterm=NONE


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


" Tooltip "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Scrollbar "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#ff0f2f guibg=bg gui=undercurl
                \ ctermfg=168 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#8f2fcf guibg=bg gui=undercurl
                \ ctermfg=99 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#cf8f5f guibg=bg gui=undercurl
                \ ctermfg=222 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#0faf5f guibg=bg gui=undercurl
                \ ctermfg=85 ctermbg=bg cterm=undercurl


" Pmenu: "{{{2
highlight Pmenu guifg=#0f0f3f guibg=#ffffff gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuSel guifg=#ffffff guibg=#0f0faf gui=NONE
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
highlight PmenuSbar guifg=fg guibg=#efefff gui=NONE
                \ ctermfg=fg ctermbg=235 cterm=NONE
highlight PmenuThumb guifg=fg guibg=#0f8f2f gui=NONE
                \ ctermfg=fg ctermbg=125 cterm=NONE




" Tabline: "{{{2
highlight TabLine guifg=#0f2f0f guibg=#efdfff gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight TabLineSel guifg=#ffffff guibg=#1f3f8f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=underline
highlight TabLineFill guifg=#0f8f0f guibg=#ffefff gui=NONE
                \ ctermfg=128 ctermbg=0 cterm=NONE


" Tabpanel: "{{{2
highlight TabPanel guifg=#0f0f0f guibg=#efdfff gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight TabPanelSel guifg=#ffffff guibg=#0f2f8f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=underline
highlight TabPanelFill guifg=#2f0f8f guibg=#afcfef gui=NONE
                \ ctermfg=128 ctermbg=0 cterm=NONE


" Cursor: "{{{2
highlight CursorColumn guifg=NONE guibg=#dfdfff gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#efdfff gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight lCursor guifg=#0f0f0f guibg=#afafff gui=NONE
                \ ctermfg=10 ctermbg=0 cterm=NONE
highlight Cursor guifg=#000000 guibg=#cfafff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE

" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#0f0f0f guibg=#af2f5f gui=NONE
                \ ctermfg=NONE ctermbg=197 cterm=NONE
endif


" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#e0eff0 gui=NONE
                \ ctermfg=NONE ctermbg=16 cterm=NONE
highlight CursorLineNr guifg=#ffaf3f guibg=#3fafff gui=bold
                \ ctermfg=93 ctermbg=16 cterm=bold
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
highlight MatchParen guifg=#0f2f8f  guibg=#3f8faf gui=bold,underline
                \ ctermfg=8 ctermbg=7 cterm=bold,underline
highlight comment guifg=#0f8fff guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Constant guifg=#1fbf2f guibg=bg gui=bold
                \ ctermfg=48 ctermbg=bg cterm=bold
highlight string guifg=#7f7fcf guibg=bg gui=NONE
                \ ctermfg=213 ctermbg=bg cterm=NONE
highlight Character guifg=#3f5fff guibg=bg gui=NONE
                \ ctermfg=48 ctermbg=bg cterm=NONE
highlight Number guifg=#ff3faf guibg=bg gui=NONE
                \ ctermfg=48 ctermbg=bg cterm=NONE
highlight Boolean   guifg=#2f8fff guibg=bg gui=NONE
                \ ctermfg=48 ctermbg=bg cterm=NONE
highlight Float     guifg=#3fafcf guibg=bg gui=NONE
                \ ctermfg=48 ctermbg=bg cterm=NONE
highlight Identifier guifg=#afaf2f guibg=bg gui=bold
                \ ctermfg=201 ctermbg=bg cterm=bold
highlight Function  guifg=#0f8fff guibg=bg gui=bold
                \ ctermfg=201 ctermbg=bg cterm=bold
highlight Statement guifg=#cf8f2f guibg=bg gui=bold
                \ ctermfg=49 ctermbg=bg cterm=bold
highlight Conditional guifg=#ff5f8f guibg=bg gui=bold
                \ ctermfg=49 ctermbg=bg cterm=bold
highlight Repeat guifg=#df3faf guibg=bg gui=bold
                \ ctermfg=49 ctermbg=bg cterm=bold
highlight Label guifg=#ff2fff guibg=bg gui=bold
                \ ctermfg=49 ctermbg=bg cterm=bold
highlight Operator guifg=#cf4fcf guibg=bg gui=bold
                \ ctermfg=49 ctermbg=bg cterm=bold
highlight Keyword  guifg=#ef0f2f guibg=bg gui=bold
                \ ctermfg=49 ctermbg=bg cterm=bold
highlight Exception guifg=#2fbf8f guibg=bg gui=bold
                \ ctermfg=49 ctermbg=bg cterm=bold
highlight PreProc guifg=#ff8f5f guibg=bg gui=bold
                \ ctermfg=201 ctermbg=bg cterm=bold
highlight Include  guifg=#ff5f0f guibg=bg gui=bold
                \ ctermfg=201 ctermbg=bg cterm=bold
highlight Define   guifg=#3fafcf guibg=bg gui=bold
                \ ctermfg=201 ctermbg=bg cterm=bold
highlight Macro    guifg=#afafcf guibg=bg gui=bold
                \ ctermfg=201 ctermbg=bg cterm=bold
highlight PreCondit guifg=#5fafff guibg=bg gui=bold
                \ ctermfg=201 ctermbg=bg cterm=bold
highlight type guifg=#cf7fff guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight StorageClass guifg=#af5fff guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight Structure guifg=#af3fff guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight Typedef guifg=#0f7fff guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight Special guifg=#8f3fad guibg=bg gui=bold
                \ ctermfg=6 ctermbg=bg cterm=bold
highlight Specialchar guifg=#3f5fff guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight Tag guifg=#ff5f5f guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight Delimiter guifg=#af3fff guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight SpecialCommnet guifg=#0f7fbf guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight Debug guifg=#bf7f2f guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight underlined guifg=#2f8fff guibg=bg gui=underline
                \ ctermfg=27 ctermbg=bg cterm=underline
highlight Ignore guifg=#0f8fff guibg=#ffffef gui=bold
                \ ctermfg=13 ctermbg=bg cterm=NONE
highlight Error guifg=#ff0f2f guibg=bg gui=bold
                \ ctermfg=197 ctermbg=bg cterm=NONE
highlight Todo guifg=#8f0f0f guibg=#ffeaff gui=bold,underline
                \ ctermfg=48 ctermbg=16 cterm=bold,underline

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


