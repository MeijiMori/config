" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date
" Guicolorscheme file
"

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
highlight Normal guifg=#cccccc guibg=#303030 gui=NONE
                \ ctermfg=15 ctermbg=233 cterm=NONE
highlight SpecialKey guifg=#6f3faf guibg=#303030 gui=NONE
                \ ctermfg=56 ctermbg=bg cterm=NONE
highlight NonText guifg=#4ef9c8 guibg=#3f3f3f gui=NONE
                \ ctermfg=48 ctermbg=236 cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#5f7fff guibg=#303030 gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#f84865 guibg=#303030 gui=NONE
                \ ctermfg=160 ctermbg=0 cterm=underline
" search "{{{2
highlight IncSearch guifg=#303030 guibg=#bf9fef gui=bold
                \ ctermfg=53 ctermbg=98 cterm=bold,underline
highlight Search guifg=#000000 guibg=#4f88f1 gui=bold
                \ ctermfg=17 ctermbg=81 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#95d5d9 guibg=#3a3b3c gui=NONE
                \ ctermfg=77 ctermbg=234 cterm=underline
highlight ModeMsg guifg=#bfd9ff guibg=#3a3b3c gui=NONE
                \ ctermfg=123 ctermbg=234 cterm=underline
highlight LineNr guifg=#c3bcb4 guibg=#353535 gui=NONE
                \ ctermfg=252 ctermbg=233 cterm=NONE
highlight CursorLineNr guifg=#c3bcb4 guibg=#353535 gui=NONE
                \ ctermfg=0 ctermbg=7 cterm=bold
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#6ab3b5 guibg=#303030 gui=NONE
                \ ctermfg=43 ctermbg=234 cterm=underline
" statusline "{{{2
highlight StatusLine guifg=#cccccc guibg=#2f2f2f gui=NONE
                \ ctermfg=252 ctermbg=233 cterm=NONE
highlight StatusLineNC guifg=#565234 guibg=#b2a089 gui=NONE
                \ ctermfg=95 ctermbg=180 cterm=NONE
" terminal "{{{2
highlight Terminal guifg=#cfcfcf guibg=#00000f gui=NONE
                \ ctermfg=10 ctermbg=0 cterm=NONE
highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
                \ ctermfg=0 ctermbg=10 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
                \ ctermfg=96 ctermbg=183 cterm=NONE


"}}}2
highlight VertSplit guifg=#3059ff guibg=#2f2f2f gui=NONE
                \ ctermfg=27 ctermbg=234 cterm=NONE
highlight Title guifg=#72dc95 guibg=bg gui=NONE
                \ ctermfg=41 ctermbg=bg cterm=underline
" visual "{{{2
highlight Visual guifg=#ffeedd guibg=#2f4f8f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guibg=#aaeeee guifg=#3d3d3d gui=underline
                \ ctermfg=17 ctermbg=159 cterm=underline
"}}}2
highlight WarningMsg guifg=#ff4f5f guibg=#303030 gui=NONE
                \ ctermfg=9 ctermbg=233 cterm=underline
highlight WildMenu guifg=#dfdfdf guibg=#2f3f5f gui=NONE
                \ ctermfg=252 ctermbg=17 cterm=underline
" fold "{{{2
highlight Folded guifg=#3f7fff guibg=#2f2f2f gui=NONE
                \ ctermfg=27 ctermbg=233 cterm=NONE
highlight FoldColumn guifg=#4bcf7f guibg=#2f2f2f gui=bold
                \ ctermfg=10 ctermbg=233 cterm=bold

" diff "{{{2
highlight DiffAdd guifg=#2f7fff guibg=#303030 gui=NONE
                \ ctermfg=fg ctermbg=28 cterm=NONE
highlight DiffChange guifg=#ffff9f guibg=#303030 gui=NONE
                \ ctermfg=fg ctermbg=130 cterm=NONE
highlight DiffDelete guifg=#f62c74 guibg=#303030 gui=NONE
                \ ctermfg=fg ctermbg=52 cterm=NONE
highlight DiffText guifg=#c9cbce guibg=#303030 gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
"}}}2
highlight SignColumn guifg=#56a7f4 guibg=#303030 gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#795099 guibg=#303030 gui=NONE
                \ ctermfg=124 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#506399 guibg=#303030 gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#509982 guibg=#303030 gui=NONE
                \ ctermfg=41 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#998c50 guibg=#303030 gui=NONE
                \ ctermfg=220 ctermbg=bg cterm=NONE

" pmenu "{{{2
highlight Pmenu guifg=#aaaaaa guibg=#2f2f2f gui=NONE
                \ ctermfg=232 ctermbg=253 cterm=NONE
highlight PmenuSel guifg=#cccccc guibg=#415676 gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=#303030 gui=bold
                \ ctermfg=fg ctermbg=234 cterm=bold
highlight PmenuThumb guifg=#415676 guibg=#303030 gui=NONE
                \ ctermfg=fg ctermbg=233 cterm=bold

" tabline "{{{2
highlight TabLine guifg=#000000 guibg=#9f9f9f gui=underline
                \ ctermfg=233 ctermbg=250 cterm=underline
highlight TabLineSel guifg=#ffffff guibg=#21569f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#000000 guibg=#aaaaaa gui=underline
                \ ctermfg=233 ctermbg=250 cterm=underline

" cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
                \ ctermfg=NONE ctermbg=25 cterm=NONE
highlight CursorLine guifg=NONE guibg=#2f3f5f gui=NONE
                \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight CursorColumn guifg=NONE guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight Cursor guifg=#000000 guibg=#2fa58f gui=NONE
                \ ctermfg=0 ctermbg=29 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#ffb6c1 gui=NONE
                \ ctermfg=0 ctermbg=125 cterm=NONE
endif

" }}}2

" #- syntax highlighting group -#{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
                \ ctermfg=0 ctermbg=29 cterm=NONE
highlight MatchParen guifg=#575757 guibg=#5f93cd gui=bold
                \ ctermfg=232 ctermbg=33 cterm=bold,underline
highlight comment guifg=#5088e1 guibg=#303030 gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Constant guifg=#aa7777 guibg=#303030 gui=NONE
                \ ctermfg=131 ctermbg=bg cterm=NONE
highlight Special guifg=#cfffff guibg=#303030 gui=NONE
                \ ctermfg=123 ctermbg=bg cterm=NONE
highlight Identifier guifg=#879fff guibg=#303030 gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Statement guifg=#85baff guibg=#303030 gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=NONE
highlight PreProc guifg=#aaffff guibg=#303030 gui=NONE
                \ ctermfg=80 ctermbg=bg cterm=NONE
"highlight type guifg=#71ffaf guibg=#303030 gui=NONE
highlight type guifg=#61cf8f guibg=#303030 gui=NONE
                \ ctermfg=41 ctermbg=bg cterm=NONE
highlight underlined guifg=#6699cc guibg=#303030 gui=underline
                \ ctermfg=12 ctermbg=bg cterm=underline
highlight Ignore guifg=#a3ffa2 guibg=#303030 gui=bold
                \ ctermfg=155 ctermbg=bg cterm=bold
highlight Error guifg=#f84865 guibg=#303030 gui=NONE
                \ ctermfg=196 ctermbg=bg cterm=NONE
highlight Todo guifg=#50a0ff guibg=#303030 gui=bold,underline
                \ ctermfg=33 ctermbg=233 cterm=bold,underline
highlight string guifg=#f0d8e6 guibg=#303030 gui=NONE
                \ ctermfg=219 ctermbg=bg cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim

