" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date
" Guicolorscheme file

" #- Vim color file reset -#{{{1
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
highlight Normal guifg=#fdfdfd guibg=#10103f gui=NONE
      \ ctermfg=255 ctermbg=232 cterm=NONE
highlight NonText guifg=#4ecfff guibg=#0a0c1f gui=bold
      \ ctermfg=39 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#af79ff guibg=bg gui=bold
      \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#ff5faf guibg=bg gui=bold
      \ ctermfg=25 ctermbg=bg cterm=bold


" Search: "{{{2
highlight IncSearch guifg=#5f1f1f guibg=#ff3faf gui=bold,underline
      \ ctermfg=53 ctermbg=99 cterm=bold,underline
highlight CurSearch guifg=#5f5000 guibg=#efcf5f gui=bold,underline
      \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#0f2f5f guibg=#3f8fff gui=bold,underline
      \ ctermfg=17 ctermbg=12 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#3fffcf guibg=#0f0f3f gui=NONE
      \ ctermfg=85 ctermbg=234 cterm=NONE
highlight ModeMsg guifg=#ff3faf guibg=#0f0f2f gui=NONE
      \ ctermfg=255 ctermbg=234 cterm=NONE
highlight MsgArea guifg=fg guibg=#0f0f2f gui=NONE
      \ ctermfg=242 ctermbg=252 cterm=NONE
highlight ErrorMsg guifg=#8f2f2f guibg=#ff5fcf gui=NONE
      \ ctermfg=9 ctermbg=bg cterm=NONE
highlight WarningMsg guifg=#8f5f2f guibg=#ffaf5f gui=NONE
      \ ctermfg=196 ctermbg=bg cterm=NONE
highlight Question guifg=#2f5f8f guibg=#afcfff gui=NONE
      \ ctermfg=41 ctermbg=234 cterm=NONE
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
      \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
      \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#ffffff guibg=#0f3f8f gui=NONE
      \ ctermfg=255 ctermbg=232 cterm=NONE


" LineNr: "{{{2
highlight LineNr guifg=#c3bcb4 guibg=NONE gui=NONE
      \ ctermfg=252 ctermbg=bg cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
      \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
      \ ctermfg=164 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#efefef guibg=#2f2f3f gui=NONE
      \ ctermfg=236 ctermbg=253 cterm=NONE
highlight StatusLineNC guifg=#5f4f3f guibg=#cfafaf gui=NONE
      \ ctermfg=235 ctermbg=181 cterm=NONE
highlight StatusLineTerm guifg=#000f2f guibg=#cfccff gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight StatusLineTermNc guifg=#002f2f guibg=#8fafff gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
"}}}2


highlight VertSplit guifg=#1f1f2f guibg=#1f1f2f gui=NONE
      \ ctermfg=21 ctermbg=bg cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
      \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
      \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#7fffcf guibg=NONE gui=bold,underline
      \ ctermfg=35 ctermbg=bg cterm=NONE


" Visual: "{{{2
highlight Visual guifg=#ffffff guibg=#0f1f8f gui=NONE
      \ ctermfg=255 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#3d3d3d guibg=#aaeeee gui=underline
      \ ctermfg=17 ctermbg=81 cterm=underline


" Fold: "{{{2
highlight Folded guifg=#cfcfcf guibg=#0f0f2f gui=NONE
      \ ctermfg=25 ctermbg=232 cterm=NONE
highlight FoldColumn guifg=#6f3fff guibg=#0f0f2f gui=bold
      \ ctermfg=26 ctermbg=232 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=#0f5f2f guibg=#afffcf gui=NONE
      \ ctermfg=NONE ctermbg=29 cterm=NONE
highlight DiffChange guifg=#5f5f0f guibg=#ffcf2f gui=NONE
      \ ctermfg=NONE ctermbg=136 cterm=NONE
highlight DiffDelete guifg=#8f2f2f guibg=#ff2faf gui=NONE
      \ ctermfg=NONE ctermbg=52 cterm=NONE
highlight DiffText guifg=#f9fbfe guibg=bg gui=NONE
      \ ctermfg=NONE ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#2fcf3f guibg=bg gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Added guifg=#2fcf3f guibg=bg gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Changed guifg=#ff9f2f guibg=bg gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Removed guifg=#ff2f5f guibg=bg gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
"}}}2


highlight SignColumn guifg=#cfcfcf guibg=#0f0f0f gui=NONE
      \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight Conceal guifg=#efefef guibg=#efefff gui=NONE
      \ ctermfg=fg ctermbg=0 cterm=NONE
highlight SpecialKey guifg=#2f5fff guibg=bg gui=NONE
      \ ctermfg=26 ctermbg=bg cterm=NONE
highlight Bold guifg=fg guibg=bg gui=bold
      \ ctermfg=240 ctermbg=21 cterm=bold
highlight BoldItalic guifg=fg guibg=bg gui=bold,Italic
      \ ctermfg=240 ctermbg=21 cterm=bold
highlight Italic guifg=fg guibg=bg gui=Italic
      \ ctermfg=240 ctermbg=21 cterm=bold


" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#cfcfff gui=None
      \ ctermfg=fg ctermbg=bg cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#ffffff guibg=#0f3f8f gui=bold
      \ ctermfg=fg ctermbg=bg cterm=NONE


" Toolbar: "{{{2
highlight ToolbarButton guifg=#cfcfcf guibg=#0f0f0f gui=bold
      \ ctermfg=180 ctermbg=bg cterm=NONE
highlight ToolbarLine guifg=#ffffff guibg=#1f3f5f gui=NONE
      \ ctermfg=180 ctermbg=bg cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#afafff gui=None
      \ ctermfg=fg ctermbg=bg cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#ffffff guibg=#3f3f3f gui=None
      \ ctermfg=fg ctermbg=bg cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#af5fbf guibg=bg gui=undercurl
      \ ctermfg=56 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#7f6fbf guibg=bg gui=undercurl
      \ ctermfg=33 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#7fcfaf guibg=bg gui=undercurl
      \ ctermfg=36 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#bfaf5f guibg=bg gui=undercurl
      \ ctermfg=142 ctermbg=bg cterm=undercurl

" Pmenu: "{{{2
highlight Pmenu guifg=#cccccd guibg=#1f1f1f gui=NONE
      \ ctermfg=255 ctermbg=16 cterm=NONE
highlight PmenuSel guifg=#ffffff guibg=#0f1f8f gui=NONE
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
highlight PmenuSbar guifg=#9c9c9c guibg=#3f3f3f gui=NONE
      \ ctermfg=fg ctermbg=238 cterm=NONE
highlight PmenuThumb guifg=#3f0f3f guibg=#8f2fff gui=NONE
      \ ctermfg=fg ctermbg=15 cterm=NONE

" Tabline: "{{{2
highlight TabLine guifg=#ffffff guibg=#1f1f3f gui=NONE
      \ ctermfg=241 ctermbg=254 cterm=underline
highlight TabLineSel guifg=#ffffff guibg=#0f3f8f gui=NONE
      \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#4f5fff guibg=#0f0f1f gui=bold
      \ ctermfg=236 ctermbg=244 cterm=underline

" Tabpanel: "{{{2
highlight TabPanel guifg=#0f0f0f guibg=#ffeff5 gui=NONE
      \ ctermfg=241 ctermbg=254 cterm=NONE
highlight TabPanelSel guifg=#ffffff guibg=#0f3f8f gui=NONE
      \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#415676 guibg=#efcfff gui=NONE
      \ ctermfg=236 ctermbg=244 cterm=NONE
highlight TabPanelTitle guifg=#ffffff guibg=#0f2f9f gui=NONE
      \ ctermfg=232 ctermbg=244 cterm=NONE


" Cursor "{{{2
highlight ColorColumn guifg=#ffffff guibg=#8f8fff gui=NONE
      \ ctermfg=252 ctermbg=235 cterm=NONE
highlight CursorColumn guifg=#ffffff guibg=#2f2f2f gui=NONE
      \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight lCursor guifg=#0f0f0f guibg=#7fcfcf gui=NONE
      \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight Cursor guifg=#0f0f0f guibg=#5fafff gui=NONE
      \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
      \ ctermfg=NONE ctermbg=250 cterm=NONE


" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#0f0f0f guibg=#ff0fcf gui=NONE
        \ ctermfg=NONE ctermbg=196 cterm=NONE
endif


" Cursorline: {{{2
highlight CursorLine guifg=NONE guibg=#1f2f8f gui=NONE
      \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight CursorLineNr guifg=#0f0f8f guibg=#8f8fff gui=NONE
      \ ctermfg=bg ctermbg=250 cterm=bold
highlight CursorLineFold guifg=#0f5f8f guibg=#afafff gui=bold
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
highlight MatchParen guifg=#ffffff guibg=#3f5fff gui=bold,underline
      \ ctermfg=240 ctermbg=21 cterm=bold,underline
highlight comment guifg=#2f9fff guibg=bg gui=NONE
      \ ctermfg=26 ctermbg=bg cterm=NONE
highlight Constant guifg=#7fdf7f guibg=bg gui=bold
      \ ctermfg=42 ctermbg=bg cterm=bold
highlight string guifg=#4fc8f6 guibg=bg gui=NONE
      \ ctermfg=213 ctermbg=bg cterm=NONE
highlight Character guifg=#5fafff guibg=bg gui=NONE
      \ ctermfg=48 ctermbg=bg cterm=NONE
highlight Number guifg=#ff3faf guibg=bg gui=NONE
      \ ctermfg=48 ctermbg=bg cterm=NONE
highlight Boolean   guifg=#2f8fff guibg=bg gui=NONE
      \ ctermfg=48 ctermbg=bg cterm=NONE
highlight Float     guifg=#3fafcf guibg=bg gui=NONE
      \ ctermfg=48 ctermbg=bg cterm=NONE
highlight Identifier guifg=#ffdfaf guibg=bg gui=bold
      \ ctermfg=177 ctermbg=bg cterm=NONE
highlight Function  guifg=#0f8fff guibg=bg gui=bold
      \ ctermfg=201 ctermbg=bg cterm=bold
highlight Statement guifg=#3f7fff guibg=bg gui=bold
      \ ctermfg=42 ctermbg=bg cterm=NONE
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
highlight PreProc guifg=#bf7fff guibg=bg gui=bold
      \ ctermfg=170 ctermbg=bg cterm=bold
highlight Include  guifg=#ff5f0f guibg=bg gui=bold
      \ ctermfg=201 ctermbg=bg cterm=bold
highlight Define   guifg=#3fafcf guibg=bg gui=bold
      \ ctermfg=201 ctermbg=bg cterm=bold
highlight Macro    guifg=#8f8fff guibg=bg gui=bold
      \ ctermfg=201 ctermbg=bg cterm=bold
highlight PreCondit guifg=#5fafff guibg=bg gui=bold
      \ ctermfg=201 ctermbg=bg cterm=bold
highlight type guifg=#71c9af guibg=bg gui=bold
      \ ctermfg=35 ctermbg=bg cterm=bold
highlight StorageClass guifg=#af5fff guibg=bg gui=bold
      \ ctermfg=42 ctermbg=bg cterm=bold
highlight Structure guifg=#af3fff guibg=bg gui=bold
      \ ctermfg=42 ctermbg=bg cterm=bold
highlight Typedef guifg=#0f7fff guibg=bg gui=bold
      \ ctermfg=42 ctermbg=bg cterm=bold
highlight Special guifg=#aeffff guibg=bg gui=NONE
      \ ctermfg=123 ctermbg=bg cterm=NONE
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
highlight underlined guifg=#568cff guibg=bg gui=underline
      \ ctermfg=25 ctermbg=bg cterm=underline
highlight Ignore guifg=#047f75 guibg=bg gui=NONE
      \ ctermfg=23 ctermbg=bg cterm=bold
highlight Error guifg=#f04f7e guibg=bg gui=NONE
      \ ctermfg=197 ctermbg=bg cterm=NONE
highlight Todo guifg=#af3fff guibg=bg gui=bold,underline
      \ ctermfg=26 ctermbg=250 cterm=bold,underline

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
