" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}"
" highlighting ZenkakuSpace /　/
" Gui colorscheme file
"


" #- reset -# "{{{1
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif


" #- Colorscheme name -# "{{{1
" ms_cocoa
let g:colors_name = expand('<sfile>:t:r')


" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#0f0f0f guibg=#f5e0e5 gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
highlight SpecialKey guifg=#5f0fff guibg=bg gui=NONE
                \ ctermfg=93 ctermbg=NONE cterm=NONE
highlight NonText guifg=#2f39ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight EndOfBuffer guifg=#358fff guibg=#ffeae8 gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#e02f8f guibg=bg gui=bold
                \ ctermfg=125 ctermbg=bg cterm=bold
" search "{{{2
highlight IncSearch guifg=#0f3f5f guibg=#afcfff gui=bold,underline
                \ ctermfg=20 ctermbg=32 cterm=NONE
highlight Search guifg=#0f3f1f guibg=#5faf7f gui=bold,underline
                \ ctermfg=34 ctermbg=115 cterm=NONE
highlight curSearch guifg=#3f0f1f guibg=#af2f5f gui=bold,underline
                \ ctermfg=34 ctermbg=115 cterm=NONE


" message "{{{2
highlight ErrorMsg guifg=#4f1f1f guibg=#cf4f7f gui=underline
                \ ctermfg=160 ctermbg=134 cterm=NONE
highlight MoreMsg guifg=#0f5f2f guibg=#5faf7f gui=underline
                \ ctermfg=2 ctermbg=49 cterm=NONE
highlight ModeMsg guifg=#0f5f5f guibg=#9fcfff gui=underline
                \ ctermfg=242 ctermbg=252 cterm=underline
highlight WarningMsg guifg=#8f5f3f guibg=#ffcfaf gui=underline
                \ ctermfg=2 ctermbg=bg cterm=NONE
highlight Question guifg=#0f0f5f guibg=#7fafcf gui=underline
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight MsgArea guifg=#0f0f0f guibg=#ffdfdf gui=NONE
                \ ctermfg=242 ctermbg=252 cterm=underline


" linenr "{{{2
highlight LineNr guifg=#a66f2f guibg=NONE gui=NONE
                \ ctermfg=187 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight CursorLineNr guifg=#3f3fcf guibg=#8f8fff gui=bold
                \ ctermfg=93 ctermbg=16 cterm=bold
highlight CursorLineFold guifg=#0f0f3f guibg=#afafcf   gui=bold
                \ ctermfg=27 ctermbg=16 cterm=bold
highlight CursorLineSign guifg=#0f0f3f guibg=#afafff   gui=bold
                \ ctermfg=27 ctermbg=16 cterm=bold
"}}}2
highlight MatchParen guifg=#0f2f8f  guibg=#3f8faf gui=bold,underline
                \ ctermfg=8 ctermbg=7 cterm=bold,underline
" statusline "{{{2
highlight StatusLine guifg=#2f0f0f guibg=#cfafaf gui=NONE
                \ ctermfg=15 ctermbg=16 cterm=NONE
highlight StatusLineNC guifg=#5f3f3f guibg=#af7f7f gui=NONE
                \ ctermfg=96 ctermbg=183 cterm=NONE
highlight StatusLineTerm guifg=#2f0020 guibg=#efdfff gui=NONE
                \ ctermfg=11 ctermbg=bg cterm=NONE
highlight StatusLineTermNc guifg=#002f2f guibg=#8fafaf gui=NONE
                \ ctermfg=11 ctermbg=bg cterm=NONE
"}}}2
highlight VertSplit guifg=#cfafaf guibg=#cfafaf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#3f3fff guibg=#cfcfff gui=bold,underline
                \ ctermfg=35 ctermbg=NONE cterm=bold,underline
" visual "{{{2
highlight Visual guifg=#ffffff guibg=#0f3faf gui=NONE
                \ ctermfg=252 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f2f8f gui=underline,bold
                \ ctermfg=15 ctermbg=33 cterm=bold
"}}}2
highlight WildMenu guifg=#ffffff guibg=#2f3f8f gui=underline
                \ ctermfg=241 ctermbg=252 cterm=NONE
" fold "{{{2
highlight Folded guifg=#0f0f3f guibg=#afbfcf gui=NONE
                \ ctermfg=252 ctermbg=016 cterm=NONE
highlight FoldColumn guifg=#5f3f3f guibg=#dfbfbf gui=bold
                \ ctermfg=27 ctermbg=16 cterm=bold


" diff "{{{2
highlight DiffAdd guifg=fg guibg=#2f8f5f gui=NONE
                \ ctermfg=fg ctermbg=2 cterm=NONE
highlight DiffChange guifg=fg guibg=#af6f2f gui=NONE
                \ ctermfg=fg ctermbg=209 cterm=NONE
highlight DiffDelete guifg=fg guibg=#af2f4f gui=NONE
                \ ctermfg=fg ctermbg=9 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#3f8f3f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Added guifg=#3faf8f guibg=bg gui=NONE
                \ ctermfg=213 ctermbg=bg cterm=NONE
highlight Changed guifg=#2f7fff guibg=bg gui=NONE
                \ ctermfg=213 ctermbg=bg cterm=NONE
highlight Removed guifg=#cf2f8f guibg=bg gui=NONE
                \ ctermfg=213 ctermbg=bg cterm=NONE
" }}}2
highlight SignColumn guifg=#af0f5f guibg=#efcfcf gui=NONE
                \ ctermfg=180 ctermbg=bg cterm=NONE
" toolbar "{{{2
highlight ToolbarButton guifg=#ffffb0 guibg=#0f0f8f gui=NONE
                \ ctermfg=180 ctermbg=bg cterm=NONE
highlight ToolbarLine guifg=fg guibg=#7f8fff gui=NONE
                \ ctermfg=180 ctermbg=bg cterm=NONE

" quickfix "{{{2
highlight QuickFixLine guifg=fg guibg=#afafff gui=NONE
                \ ctermfg=180 ctermbg=bg cterm=NONE



" spell "{{{2
highlight SpellBad guifg=#cf5f9f guibg=bg gui=undercurl
                \ ctermfg=168 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#af5fcf guibg=bg gui=undercurl
                \ ctermfg=99 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#5fcfaf guibg=bg gui=undercurl
                \ ctermfg=85 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#cfaf5f guibg=bg gui=undercurl
                \ ctermfg=222 ctermbg=bg cterm=undercurl


" pmenu "{{{2
highlight Pmenu guifg=#0f0f3f guibg=#ffefef gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#f0f0f0 gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#00003f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuSel guifg=#ffffff guibg=#2f5f8f gui=NONE
                \ ctermfg=fg ctermbg=17 cterm=NONE
highlight PmenuKind guifg=#0f0f0f guibg=#efefef gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuKindSel guifg=#ffffff guibg=#0f3f8f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#efefff gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight ComplMatchIns guifg=fg guibg=#efefff gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuSbar guifg=fg guibg=#8f8fff gui=NONE
                \ ctermfg=fg ctermbg=235 cterm=NONE
highlight PmenuThumb guifg=fg guibg=#0f0fff gui=NONE
                \ ctermfg=fg ctermbg=125 cterm=NONE


" tabline "{{{2
highlight TabLine guifg=#0f0f0f guibg=#f0dfef gui=underline
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight TabLineFill guifg=#0f8f8f guibg=#ffefff gui=bold
                \ ctermfg=128 ctermbg=0 cterm=NONE
highlight TabLineSel guifg=#ffffff guibg=#0f3faf gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=underline
" tabpanel "{{{2
highlight TabPanel guifg=#0f0f0f guibg=#f0dfef gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight TabPanelFill guifg=#5f0f0f guibg=#fff0fa gui=NONE
                \ ctermfg=128 ctermbg=0 cterm=NONE
highlight TabPanelSel guifg=#ffffff guibg=#0f3f9f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE


" cursor "{{{2
highlight CursorColumn guifg=NONE guibg=#809fff gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight CursorLine guifg=NONE guibg=#efdfff gui=NONE
                \ ctermfg=NONE ctermbg=16 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#efefff gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight Conceal guifg=NONE guibg=#c08f5f gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
                \ ctermfg=10 ctermbg=0 cterm=NONE
highlight Cursor guifg=fg guibg=#cfafaf gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#2f0f0f guibg=#af2f5f gui=NONE
                \ ctermfg=NONE ctermbg=197 cterm=NONE
endif


" }}}2
" terminal "{{{2
highlight terminal guifg=fg guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
" Terminal color
let g:terminal_ansi_colors = [
  \ "#0c0c0c", "#850f1f", "#13a10e", "#915c00",
  \ "#0037aa", "#881798", "#3a96dd", "#cccccc",
  \ "#767676", "#a70816", "#16c60c", "#aabf44",
  \ "#1b58af", "#b4009e", "#61d6d6", "#885898"
  \ ]

" #- Syntax highlighting group -# "{{{1
highlight comment guifg=#0f8f2f guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Constant guifg=#1f2fbf guibg=bg gui=bold
                \ ctermfg=48 ctermbg=bg cterm=bold
highlight string guifg=#1f8f8f guibg=bg gui=bold
                \ ctermfg=213 ctermbg=bg cterm=bold
highlight Character guifg=#af2f5f guibg=bg gui=bold
                \ ctermfg=48 ctermbg=bg cterm=bold
highlight Number guifg=#8f1f2f guibg=bg gui=bold
                \ ctermfg=48 ctermbg=bg cterm=bold
highlight Boolean   guifg=#3f5f8f guibg=bg gui=bold
                \ ctermfg=48 ctermbg=bg cterm=bold
highlight Float     guifg=#1f8fbf guibg=bg gui=bold
                \ ctermfg=48 ctermbg=bg cterm=bold
highlight Identifier guifg=#8f3faf guibg=bg gui=bold
                \ ctermfg=201 ctermbg=bg cterm=bold
highlight Function  guifg=#3f5faf guibg=bg gui=bold
                \ ctermfg=201 ctermbg=bg cterm=bold
highlight Statement guifg=#8f3f3f guibg=bg gui=bold
                \ ctermfg=49 ctermbg=bg cterm=bold
highlight Conditional guifg=#ff5f8f guibg=bg gui=bold
                \ ctermfg=49 ctermbg=bg cterm=bold
highlight Repeat guifg=#5f2fff guibg=bg gui=bold
                \ ctermfg=49 ctermbg=bg cterm=bold
highlight Label guifg=#5f2fff guibg=bg gui=bold
                \ ctermfg=49 ctermbg=bg cterm=bold
highlight Operator guifg=#cf4fcf guibg=bg gui=bold
                \ ctermfg=49 ctermbg=bg cterm=bold
highlight Keyword     guifg=#ff2f5f guibg=bg gui=bold
                \ ctermfg=49 ctermbg=bg cterm=bold
highlight Exception   guifg=#2faf3f guibg=bg gui=bold
                \ ctermfg=49 ctermbg=bg cterm=bold
highlight PreProc guifg=#cf0f3f guibg=bg gui=bold
                \ ctermfg=201 ctermbg=bg cterm=bold
highlight Include  guifg=#ff5f0f guibg=bg gui=bold
                \ ctermfg=201 ctermbg=bg cterm=bold
highlight Define   guifg=#0f0fff guibg=bg gui=bold
                \ ctermfg=201 ctermbg=bg cterm=bold
highlight Macro    guifg=#3f8fcf guibg=bg gui=bold
                \ ctermfg=201 ctermbg=bg cterm=bold
highlight PreCondit guifg=#1f8f3f guibg=bg gui=bold
                \ ctermfg=201 ctermbg=bg cterm=bold
highlight type guifg=#1f8f2f guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight StorageClass guifg=#3f3fcf guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight Structure guifg=#af3fff guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight Typedef guifg=#0f7fff guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight Special guifg=#af8f0f guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight Specialchar guifg=#3f3faf guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight Tag guifg=#cf3f3f guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight Delimiter guifg=#0f0fff guibg=bg gui=bold
                \ ctermfg=42 ctermbg=bg cterm=bold
highlight SpecialCommnet guifg=#0f7fbf guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight Debug guifg=#ff3f5f guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight underlined guifg=#0faf3f guibg=bg gui=underline
                \ ctermfg=27 ctermbg=bg cterm=underline
highlight Ignore guifg=#8f8fef guibg=bg gui=bold
                \ ctermfg=13 ctermbg=bg cterm=NONE
highlight Error guifg=#ff3f3f guibg=bg gui=bold
                \ ctermfg=197 ctermbg=bg cterm=NONE
highlight Todo guifg=#2f3faf guibg=#cfcfff gui=bold,underline
                \ ctermfg=48 ctermbg=16 cterm=bold,underline

" #- hl-User -# "{{{1
highlight User1 guifg=#3f3f3f guibg=#cfcfff gui=NONE
                \ ctermfg=246 ctermbg=252 cterm=NONE
highlight User2 guifg=#5f5f5f guibg=#afafff gui=NONE
                \ ctermfg=240 ctermbg=250 cterm=NONE
highlight User3 guifg=#8f0f0f guibg=#ff8f8f gui=NONE
                \ ctermfg=255 ctermbg=239 cterm=NONE
highlight User4 guifg=#5f2f5f guibg=#cfafff gui=NONE
                \ ctermfg=134 ctermbg=182 cterm=NONE
highlight User5 guifg=#2f5f5f guibg=#afcfff gui=NONE
                \ ctermfg=69 ctermbg=117 cterm=NONE
highlight User6 guifg=#2f2f5f guibg=#8f8fff gui=NONE
                \ ctermfg=17 ctermbg=69 cterm=NONE
highlight User7 guifg=#5f2f2f guibg=#ffcfcf gui=NONE
                \ ctermfg=17 ctermbg=5 cterm=NONE
highlight User8 guifg=#2f5f2f guibg=#cfffcf gui=NONE
                \ ctermfg=22 ctermbg=43 cterm=NONE
highlight User9 guifg=#5f5f2f guibg=#ffff5f gui=NONE
                \ ctermfg=0 ctermbg=215 cterm=NONE



" #- END -# "{{{1
" vim: foldenable:foldmarker=marker
" vim: filetype=vim

