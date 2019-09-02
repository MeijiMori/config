" #- Vim color file -# "{{{1
" Note: "{{{2
" highlighting ZenkakuSpace /　/
" MatchParen "{[(*)]}
" This colorscheme is light theme that my original olorscheme RiALM

" #- reset -# "{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -# "{{{1
let g:colors_name = "Ws2fr"

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#ffffff guibg=#1f2f64 gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight SpecialKey guifg=#759f9e guibg=NONE gui=NONE
                \ ctermfg=55 ctermbg=bg cterm=NONE
highlight NonText guifg=#aaccff guibg=bg gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Directory guifg=#4eacbd guibg=bg gui=bold
                \ ctermfg=33 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#6091e1 guibg=bg gui=underline
                \ ctermfg=52 ctermbg=134 cterm=underline
" search "{{{2
highlight IncSearch guifg=#cfcfcf guibg=#8f1faf gui=bold
                \ ctermfg=2 ctermbg=49 cterm=underline
highlight Search guifg=#cfcfcf guibg=#1f2f5f gui=bold
                \ ctermfg=20 ctermbg=4 cterm=underline
"}}}2
highlight MoreMsg guifg=#0f0f5f guibg=#8fafff gui=underline
                \ ctermfg=2 ctermbg=86 cterm=underline
highlight ModeMsg guifg=#0f5f0f guibg=#afffcf gui=underline
                \ ctermfg=240 ctermbg=255 cterm=underline
highlight LineNr  guifg=#75d99d guibg=NONE gui=NONE
                \ ctermfg=50 ctermbg=NONE cterm=NONE
highlight CursorColumn guifg=NONE guibg=grey40 gui=NONE
                \ ctermfg=21 ctermbg=NONE cterm=bold
highlight Question guifg=#7bdccb guibg=bg gui=NONE
                \ ctermfg=2 ctermbg=86 cterm=underline
" statusline "{{{2
" highlight StatusLine guifg=#e5e5e5 guibg=#1f2445 gui=NONE
" highlight StatusLineNC guifg=#4b4844 guibg=#a59c8e gui=NONE
highlight StatusLine guifg=#e5e5e5 guibg=#102854 gui=underline
                \ ctermfg=252 ctermbg=17 cterm=NONE
highlight StatusLineNC  guifg=#564234 guibg=#b2a089 gui=NONE
                \ ctermfg=131 ctermbg=181 cterm=NONE
" }}}2
"highlight VertSplit guifg=#434343 guibg=#aaaaff gui=REVERSE
highlight VertSplit guifg=#4f6dc3 guibg=#1e2446 gui=NONE
                \ ctermfg=21 ctermbg=17 cterm=NONE
highlight Title guifg=#afafff guibg=bg gui=bold,underline
                \ ctermfg=49 ctermbg=bg cterm=underline,bold
" visual "{{{2
highlight Visual guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                \ ctermfg=fg ctermbg=25 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#0f2f5f gui=bold,underline
                \ ctermfg=fg ctermbg=19 cterm=underline,bold
"}}}2
highlight WarningMsg guifg=#8f1f1f guibg=#ffafaf gui=underline
                \ ctermfg=160 ctermbg=200 cterm=underline,bold
"highlight WildMenu guifg=#ffffff guibg=#2f3f5f gui=NONE
highlight WildMenu guifg=#cfcfcf guibg=#28376b gui=NONE
                \ ctermfg=253 ctermbg=18 cterm=NONE
" fold "{{{2
"highlight Folded guifg=#6588e1 guibg=#1a378a gui=NONE
"highlight FoldColumn guifg=#67baa9 guibg=#283686 gui=NONE
highlight Folded guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                \ ctermfg=254  ctermbg=18 cterm=NONE
highlight FoldColumn guifg=#cfcfcf guibg=#0f2f5f gui=bold
                \ ctermfg=250 ctermbg=17 cterm=bold


" diff "{{{2
highlight DiffAdd guifg=fg guibg=#2fab5f gui=NONE
                \ ctermfg=fg ctermbg=36 cterm=NONE
highlight DiffChange guifg=fg guibg=#cf8f5f gui=NONE
                \ ctermfg=fg ctermbg=173 cterm=NONE
highlight DiffDelete guifg=fg guibg=#cf5f8f gui=NONE
                \ ctermfg=fg ctermbg=161 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2
highlight SignColumn guifg=#ff8f5f guibg=bg gui=NONE
                \ ctermfg=161 ctermbg=bg cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#f95f4f guibg=bg gui=NONE
                \ ctermfg=165 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#5f9fff guibg=bg gui=NONE
                \ ctermfg=117 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#50c982 guibg=bg gui=NONE
                \ ctermfg=115 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#f9fc50 guibg=bg gui=NONE
                \ ctermfg=179 ctermbg=bg cterm=NONE


" pmenu "{{{2
"highlight guifg=#a4a9a4 guibg=#1d1f1d Pmenu
highlight Pmenu guifg=#a4a9a4 guibg=#1f1f2f gui=NONE
                \ ctermfg=fg ctermbg=232 cterm=NONE
highlight PmenuSel guifg=#dddddd guibg=#1f3f5f gui=NONE
                \ ctermfg=fg ctermbg=18 cterm=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=#0f0f1f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuThumb guifg=NONE guibg=#ff3f3f gui=NONE
                \ ctermfg=fg ctermbg=23 cterm=NONE


" tabline "{{{2
highlight TabLine guifg=#82a3ff guibg=#171e4b gui=underline
                \ ctermfg=250 ctermbg=17 cterm=underline
highlight TabLineSel guifg=#ffffff guibg=#28376b gui=NONE
                \ ctermfg=252 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#82a3ff guibg=#171e4b gui=underline
                \ ctermfg=68 ctermbg=17 cterm=underline,bold


" cursor "{{{2
highlight CursorColumn guifg=#000000 guibg=#0f2f5f gui=NONE
                \ ctermfg=NONE ctermbg=bg cterm=NONE
highlight CursorLine guifg=NONE guibg=#1e418c gui=NONE
                \ ctermfg=NONE ctermbg=18 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#2e21ac gui=NONE
                \ ctermfg=16 ctermbg=35 cterm=NONE
highlight Cursor guifg=#000000 guibg=#0faf5f gui=NONE
"IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#992345 gui=NONE
                \ ctermfg=16 ctermbg=9 cterm=NONE
endif


"}}}2


" #- Syntax highlighting groups -# "{{{1
highlight lCursor guifg=#000000 guibg=#2ebc99 gui=NONE
                \ ctermfg=16 ctermbg=35 cterm=NONE
highlight MatchParen guifg=#0f0f1f guibg=#5f5fff gui=bold
                \ ctermfg=15 ctermbg=11 cterm=bold,underline
" highlight comment guifg=#1090d9 guibg=bg gui=NONE
highlight comment guifg=#3f7fcf guibg=bg gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Constant guifg=#caf5a0 guibg=bg gui=NONE
                \ ctermfg=84 ctermbg=bg cterm=NONE
highlight Special guifg=#deffed guibg=#202b6c gui=NONE
                \ ctermfg=159 ctermbg=bg cterm=NONE
highlight Identifier guifg=#b6f5eb guibg=bg gui=NONE
                \ ctermfg=78 ctermbg=bg cterm=NONE
highlight Statement guifg=#ffcf5f guibg=bg gui=NONE
                \ ctermfg=180 ctermbg=bg cterm=NONE
highlight PreProc guifg=#fdacfc guibg=bg gui=NONE
                \ ctermfg=171 ctermbg=bg cterm=NONE
highlight Type guifg=#70ac8f guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight Underlined guifg=#1f2f5f guibg=#cfcfff gui=underline
                \ ctermfg=49 ctermbg=bg cterm=underline
highlight Ignore guifg=#2f5f8f guibg=bg gui=bold
                \ ctermfg=63 ctermbg=bg cterm=bold
highlight Error guifg=#6588e1 guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
highlight Todo guifg=#cf6fcf guibg=#cfcfff gui=bold,underline
                \ ctermfg=141 ctermbg=bg cterm=bold,underline
highlight string guifg=#ffc8ff guibg=bg gui=NONE
                \ ctermfg=5 ctermbg=bg cterm=NONE
" END "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
