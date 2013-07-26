" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}"
" highlighting ZenkakuSpace /@/
" Gui colorscheme file

" #- reset -# "{{{1
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- Colorscheme name -# "{{{1
let g:colors_name="ulx"

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#1f1f1f gui=NONE
                \ ctermfg=12 ctermbg=0 cterm=NONE
highlight SpecialKey guifg=#9acd32 guibg=bg gui=NONE
                \ ctermfg=2 ctermbg=NONE cterm=NONE
highlight NonText guifg=#add8e6 guibg=#2f2f2f gui=NONE
                \ ctermfg=9 ctermbg=NONE cterm=NONE
highlight Directory guifg=#3f3fff guibg=bg gui=bold
                \ ctermfg=9 ctermbg=bg cterm=underline
highlight ErrorMsg guifg=#4f1f1f guibg=#cf4f7f gui=underline
                \ ctermfg=2 ctermbg=bg cterm=NONE
" search "{{{2
highlight IncSearch guifg=#0f2f4f guibg=#5f8faf gui=underline
                \ ctermfg=12 ctermbg=8 cterm=NONE
highlight Search guifg=#0f3f0f guibg=#5faf5f gui=underline
                \ ctermfg=12 ctermbg=1 cterm=NONE
"}}}2
highlight MoreMsg guifg=#0f5f2f guibg=#5faf7f gui=underline
                \ ctermfg=12 ctermbg=0 cterm=NONE
highlight ModeMsg guifg=#2f2f2f guibg=#afafbf gui=underline
                \ ctermfg=12 ctermbg=9 cterm=NONE
highlight LineNr guifg=#8fffaf guibg=NONE gui=NONE
                \ ctermfg=11 ctermbg=NONE cterm=NONE
highlight CursorLineNr guifg=#af8fff guibg=NONE gui=NONE
                \ ctermfg=11 ctermbg=NONE cterm=NONE
highlight Question guifg=#1f2f5f guibg=#2f5f8f gui=underline
                \ ctermfg=5 ctermbg=bg cterm=NONE
" statusline "{{{2
highlight StatusLine guifg=#afafff guibg=#2f2f3f gui=NONE
                \ ctermfg=1 ctermbg=10 cterm=NONE
highlight StatusLineNC guifg=#7f7f7f guibg=#c2bfd5 gui=NONE
                \ ctermfg=10 ctermbg=1 cterm=NONE
"}}}2
highlight Title guifg=#cd5c5c guibg=#0f0f0f gui=bold,underline
                \ ctermfg=2 ctermbg=NONE cterm=NONE
highlight VertSplit guifg=#7f7f7f guibg=#afafcf gui=NONE
                \ ctermfg=15 ctermbg=bg cterm=NONE
" visual "{{{2
highlight Visual guifg=#cfcfcf guibg=#101a3f gui=NONE
                \ ctermfg=fg ctermbg=1 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f2f4f gui=underline,bold
                \ ctermfg=10 ctermbg=9 cterm=bold
"}}}2
highlight WarningMsg guifg=#5f2f0f guibg=#ff7f6f gui=underline
                \ cterm=NONE ctermfg=2 ctermbg=bg
highlight WildMenu guifg=#ffffff guibg=#0f1f3f gui=underline
                \ ctermfg=1 ctermbg=10 cterm=NONE
" fold "{{{2
highlight Folded guifg=#2f2f2f guibg=#afafcf gui=NONE
                \ cterm=NONE ctermfg=7 ctermbg=9
highlight FoldColumn guifg=#8f8faf guibg=NONE gui=bold
                \ cterm=NONE ctermfg=7 ctermbg=1


" diff "{{{2
highlight DiffAdd guifg=#0f0f0f guibg=#8fcfcf gui=NONE
                \ ctermfg=bg ctermbg=11 cterm=NONE
highlight DiffChange guifg=#0f0f0f guibg=#afff4f gui=NONE
                \ ctermfg=bg ctermbg=5 cterm=NONE
highlight DiffDelete guifg=#0f0f0f guibg=#cf5faf gui=NONE
                \ ctermfg=bg ctermbg=2 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2
highlight SignColumn guifg=#ffffb0 guibg=bg gui=NONE
                \ ctermfg=1 ctermbg=10E cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#cf5faf guibg=bg gui=NONE
                \ ctermfg=1 ctermbg=10 cterm=NONE
highlight SpellCap guifg=#af5fcf guibg=bg gui=NONE
                \ ctermfg=1 ctermbg=10 cterm=NONE
highlight SpellRare guifg=#5fcfaf guibg=bg gui=NONE
                \ ctermfg=1 ctermbg=10 cterm=NONE
highlight SpellLocal guifg=#cfaf5f guibg=bg gui=NONE
                \ ctermfg=1 ctermbg=10 cterm=NONE


" pmenu "{{{2
highlight Pmenu guifg=#cfcfcf guibg=#0a0a0f gui=NONE
                \ ctermfg=10 ctermbg=1 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                \ ctermfg=10 ctermbg=9 cterm=NONE
highlight PmenuSbar guifg=#cccccc guibg=#1f1f2f gui=NONE
                \ ctermfg=1 ctermbg=0 cterm=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#6f2f3f gui=NONE
                \ ctermfg=1 ctermbg=3 cterm=NONE


" tabline "{{{2
highlight TabLine guifg=#afafaf guibg=#0f0f1f gui=underline
                \ ctermfg=15 ctermbg=16 cterm=NONE
highlight TabLineSel guifg=#cfcfff guibg=#0f1f3f gui=NONE
                \ cterm=NONE ctermfg=12 ctermbg=1
highlight TabLineFill guifg=#af5faf guibg=#0f0f1f gui=NONE
                \ cterm=NONE ctermfg=1 ctermbg=0


" cursor "{{{2
highlight CursorColumn guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=1 ctermbg=10 cterm=NONE
highlight CursorLine guifg=NONE guibg=#1f1f2f gui=NONE
                \ ctermfg=NONE ctermbg=0 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=NONE ctermbg=0 cterm=NONE
highlight Cursor guifg=#ffffff guibg=#1f5f3f gui=NONE
                \ ctermfg=NONE ctermbg=0 cterm=NONE
"IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#cfcfcf guibg=#3f001f gui=NONE
                \ ctermfg=NONE ctermbg=0 cterm=NONE
endif


" }}}2


" #- Syntax highlighting group -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
                \ ctermfg=10 ctermbg=0 cterm=NONE
highlight MatchParen guifg=#0f3f5f guibg=#3f5f8f gui=bold,underline
                \ ctermfg=0 ctermbg=1 cterm=NONE
highlight comment guifg=#5f8fff guibg=bg gui=NONE
                \ cterm=NONE ctermfg=9 ctermbg=bg
highlight Constant guifg=#8f8fff guibg=bg gui=NONE
                \ cterm=NONE ctermfg=13 ctermbg=bg
highlight Identifier guifg=#cf8fff guibg=bg gui=NONE
                \ cterm=NONE ctermfg=8 ctermbg=bg
highlight Special guifg=#ffdfaf guibg=bg gui=NONE
                \ cterm=NONE ctermfg=6 ctermbg=bg
highlight Statement guifg=#2fbf6f guibg=bg gui=NONE
                \ cterm=NONE ctermfg=6 ctermbg=bg
highlight PreProc guifg=#cf5f8f guibg=bg gui=NONE
                \ cterm=NONE ctermfg=14 ctermbg=bg
highlight Type guifg=#5f5fff guibg=bg gui=NONE
                \ cterm=NONE ctermfg=9 ctermbg=bg
highlight Ignore guifg=#666666 guibg=bg gui=bold
                \ cterm=NONE ctermfg=13 ctermbg=bg
highlight Underlined guifg=#80a0ff guibg=bg gui=underline
                \ cterm=underline ctermfg=10 ctermbg=bg
highlight Error guifg=#f03f5e guibg=NONE gui=underline
                \ cterm=NONE ctermfg=14 ctermbg=bg
highlight Todo guifg=#3f3f3f guibg=#afafff gui=bold,underline
                \ cterm=NONE ctermfg=9 ctermbg=12
highlight string guifg=#ff5f5f guibg=bg gui=NONE
                \ cterm=NONE ctermfg=5 ctermbg=bg


" #- hl-User -# "{{{1
highlight User1 guifg=#3f3f3f guibg=#cfcfff gui=NONE
                \ ctermfg=10 ctermbg=0 cterm=NONE
highlight User2 guifg=#5f5f5f guibg=#afafff gui=NONE
                \ ctermfg=10 ctermbg=0 cterm=NONE
highlight User3 guifg=#afafff guibg=#2f2f3f gui=NONE
                \ ctermfg=10 ctermbg=0 cterm=NONE
highlight User4 guifg=#5f2f5f guibg=#cfafff gui=NONE
                \ ctermfg=10 ctermbg=0 cterm=NONE
highlight User5 guifg=#2f5f5f guibg=#afcfff gui=NONE
                \ ctermfg=10 ctermbg=0 cterm=NONE
highlight User6 guifg=#2f2f5f guibg=#5f5faf gui=NONE
                \ ctermfg=10 ctermbg=0 cterm=NONE
highlight User7 guifg=#5f2f2f guibg=#af5f5f gui=NONE
                \ ctermfg=10 ctermbg=0 cterm=NONE
highlight User8 guifg=#2f5f2f guibg=#5faf5f gui=NONE
                \ ctermfg=10 ctermbg=0 cterm=NONE
highlight User9 guifg=#5f5f2f guibg=#afaf5f gui=NONE
                \ ctermfg=10 ctermbg=0 cterm=NONE



" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


