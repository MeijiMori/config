" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen {[(*)]}
" highlighting ZenkakuSpace /　/
" cui colorscheme file
" This colorscheme file is dark theme.

" #- Color file reset -# "{{{1
" First remove all existing highlighting.
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
highlight Normal ctermfg=7 ctermbg=0 cterm=NONE
highlight SpecialKey ctermfg=10 ctermbg=bg cterm=NONE
highlight NoneText ctermfg=2 ctermbg=0 cterm=NONE
highlight Directory ctermfg=9 ctermbg=0 cterm=bold
highlight ErrorMsg ctermfg=13 ctermbg=4 cterm=underline
" Search "{{{2
highlight IncSearch ctermfg=2 ctermbg=11 cterm=bold,underline
highlight Search ctermfg=2 ctermbg=11 cterm=bold,underline
"}}}2
highlight MoreMsg ctermfg=7 ctermbg=0 cterm=NONE
highlight ModeMsg ctermfg=8 ctermbg=7 cterm=NONE
highlight LineNr ctermfg=6 ctermbg=bg cterm=NONE
highlight LineNrAbove ctermfg=16 ctermbg=bg cterm=NONE
highlight LineNrBelow ctermfg=16 ctermbg=bg cterm=NONE
highlight CursorLineNr ctermfg=1 ctermbg=15 cterm=NONE
highlight Question ctermfg=3 ctermbg=0 cterm=NONE
" Statusline "{{{2
highlight StatusLine ctermfg=8 ctermbg=0 cterm=NONE
highlight StatusLineNC ctermfg=8 ctermbg=7 cterm=NONE
highlight StatusLineTerm ctermfg=8 ctermbg=0 cterm=NONE
highlight StatusLineTermNC ctermfg=0 ctermbg=7 cterm=NONE
"}}}
highlight VertSplit ctermfg=0 ctermbg=3 cterm=NONE
highlight Title ctermfg=11 ctermbg=0 cterm=bold,underline
" Visual "{{{2
highlight Visual ctermfg=7 ctermbg=1 cterm=NONE
highlight VisualNOS ctermfg=7 ctermbg=3 cterm=bold,underline
"}}}
highlight WarningMsg ctermfg=6 ctermbg=bg cterm=bold,underline
highlight WildMenu ctermfg=7 ctermbg=1 cterm=bold,underline
" Fold "{{{2
highlight Folded ctermfg=7 ctermbg=0 cterm=NONE
highlight FoldColumn ctermfg=9 ctermbg=bg cterm=bold
" Diff "{{{2
highlight DiffAdd ctermfg=fg ctermbg=2 cterm=NONE
highlight DiffChange ctermfg=fg ctermbg=6 cterm=NONE
highlight DiffDelete ctermfg=fg ctermbg=4 cterm=NONE
highlight DiffText ctermfg=fg ctermbg=bg cterm=NONE
"}}}
highlight SignColumn ctermfg=fg ctermbg=bg cterm=NONE
highlight conceal ctermfg=fg ctermbg=bg cterm=NONE
" Spell "{{{2
highlight SpellBad ctermfg=12 ctermbg=bg cterm=NONE
highlight SpellCap ctermfg=11 ctermbg=bg cterm=NONE
highlight SpellRare ctermfg=10 ctermbg=bg cterm=NONE
highlight SpellLocal ctermfg=14 ctermbg=bg cterm=NONE

" Pmenu "{{{2
highlight Pmenu ctermfg=7 ctermbg=0 cterm=NONE
highlight PmenuSel ctermfg=7 ctermbg=1 cterm=NONE
highlight PmenuSbar ctermfg=fg ctermbg=2 cterm=NONE
highlight PmenuThumb ctermfg=fg ctermbg=10 cterm=NONE

" Tabline "{{{2
highlight TabLine ctermfg=8 ctermbg=0 cterm=NONE
highlight TabLineSel ctermfg=7 ctermbg=1 cterm=NONE
highlight TabLineFill ctermfg=9 ctermbg=16 cterm=NONE
" Tabpanel "{{{2
highlight TabPanel ctermfg=8 ctermbg=0 cterm=NONE
highlight TabPanelSel ctermfg=7 ctermbg=1 cterm=NONE
highlight TabPanelFill ctermfg=2 ctermbg=7 cterm=NONE

" Cursor "{{{2
highlight Cursor ctermfg=0 ctermbg=2 cterm=NONE
highlight CursorColumn ctermfg=0 ctermbg=0 cterm=NONE
highlight CursorLine ctermfg=NONE ctermbg=1 cterm=NONE
highlight CursorColumn ctermfg=0 ctermbg=0 cterm=NONE

" Terminal "{{{2
highlight Terminal ctermfg=fg ctermbg=bg cterm=NONE

" #- Syntax highlighting group -# "{{{1
highlight MatchParen ctermfg=0 ctermbg=14 cterm=bold
highlight Comment ctermfg=9 ctermbg=bg cterm=NONE
highlight Constant ctermfg=10 ctermbg=bg cterm=NONE
highlight Special ctermfg=7 ctermbg=bg cterm=NONE
highlight Identifier ctermfg=12 ctermbg=bg cterm=NONE
highlight Statement ctermfg=10 ctermbg=bg cterm=NONE
highlight PreProc ctermfg=13 ctermbg=bg cterm=NONE
highlight Type ctermfg=2 ctermbg=bg cterm=NONE
highlight Underlined ctermfg=5 ctermbg=bg cterm=underline
highlight Ignore ctermfg=3 ctermbg=bg cterm=underline
highlight Error ctermfg=4 ctermbg=12 cterm=NONE
highlight Todo ctermfg=8 ctermbg=7 cterm=bold,underline
highlight String ctermfg=13 ctermbg=bg cterm=NONE

" #- hl-User -# "{{{1
highlight User1 ctermfg=fg ctermbg=1 cterm=NONE
highlight User2 ctermfg=fg ctermbg=2 cterm=NONE
highlight User3 ctermfg=fg ctermbg=3 cterm=NONE
highlight User4 ctermfg=fg ctermbg=4 cterm=NONE
highlight User5 ctermfg=fg ctermbg=5 cterm=NONE
highlight User6 ctermfg=fg ctermbg=6 cterm=NONE
highlight User7 ctermfg=fg ctermbg=9 cterm=NONE
highlight User8 ctermfg=fg ctermbg=13 cterm=NONE
highlight User9 ctermfg=fg ctermbg=12 cterm=NONE



" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
