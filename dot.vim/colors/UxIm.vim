" #- vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/

" #- reset -# "{{{1
if version > 580
  set background=dark
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -# "{{{1
let g:colors_name = "UxIm"

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#1f1f20 gui=NONE
                \ ctermfg=7 ctermbg=233 cterm=NONE
highlight SpecialKey guifg=#734cce guibg=bg gui=NONE
                \ ctermfg=12 ctermbg=bg cterm=NONE
highlight NonText guifg=#4c58ce guibg=#101a2f gui=NONE
                \ ctermfg=25 ctermbg=bg cterm=NONE
highlight Directory guifg=#2b9aa4 guibg=bg gui=NONE
                \ ctermfg=35 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#d42f79 guibg=bg gui=NONE
                \ ctermfg=197 ctermbg=bg cterm=NONE
" search "{{{2
highlight IncSearch guifg=bg guibg=#caa1af gui=bold
                \ ctermfg=88 ctermbg=213 cterm=bold,underline
highlight Search guifg=#000000 guibg=#6f7fff gui=bold
                \ ctermfg=17 ctermbg=39 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#66af51 guibg=bg gui=NONE
                \ ctermfg=2 ctermbg=bg cterm=NONE
highlight ModeMsg guifg=#fffeee guibg=bg gui=NONE
                \ ctermfg=253 ctermbg=bg cterm=NONE
highlight LineNr guifg=#75d99d guibg=NONE gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight CursorLineNr guifg=#75d99d guibg=NONE gui=NONE
                \ ctermfg=42 ctermbg=233 cterm=bold
highlight Question guifg=#7bdccb guibg=NONE gui=NONE
                \ ctermfg=87 ctermbg=bg cterm=NONE
" statusline "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#0f0f1f gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
highlight StatusLineNC guifg=#565234 guibg=#c4b2ab gui=NONE
                \ ctermfg=95 ctermbg=145 cterm=NONE
" }}}2
highlight VertSplit guifg=#1f1f2f guibg=#0f0f0f gui=NONE
                \ ctermfg=233 ctermbg=232 cterm=NONE
highlight Title guifg=#4cdc75 guibg=bg gui=NONE
                \ ctermfg=47 ctermbg=bg cterm=NONE
" visual "{{{2
highlight Visual guifg=#cccccc guibg=#1f2a40 gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#ffffff guibg=#2f3f8f gui=underline,bold
                \ ctermfg=255 ctermbg=27 cterm=bold,underline
" }}}2
highlight WarningMsg guifg=#79a2f6 guibg=bg gui=NONE
                \ ctermfg=69 ctermbg=bg cterm=underline
highlight WildMenu guifg=#57a496 guibg=#20203f gui=NONE
                \ ctermfg=50 ctermbg=235 cterm=NONE
" fold "{{{2
highlight Folded guifg=#35afa1 guibg=#10101f gui=NONE
                \ ctermfg=50 ctermbg=232 cterm=NONE
highlight FoldColumn guifg=#3bcfac guibg=#13121f gui=bold
                \ ctermfg=50 ctermbg=232 cterm=bold

" diff "{{{2
highlight DiffAdd guifg=#aacbde guibg=bg gui=bold
                \ ctermfg=NONE ctermbg=23 cterm=NONE
highlight DiffChange guifg=#998dbf guibg=#20324f gui=NONE
                \ ctermfg=NONE ctermbg=94 cterm=NONE
highlight DiffDelete guifg=#a62c74 guibg=bg gui=bold
                \ ctermfg=NONE ctermbg=52 cterm=NONE
highlight DiffText guifg=#c9cbce guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2
highlight SignColumn guifg=#a65774 guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#795099 guibg=bg gui=NONE
                \ ctermfg=57 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#506399 guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#509982 guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#998c50 guibg=bg gui=NONE
                \ ctermfg=222 ctermbg=bg cterm=NONE

" pmenu "{{{2
highlight pmenu guifg=#cfcfcf guibg=#0f0f1f gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
highlight PmenuSel guifg=#d2d2d2 guibg=#21365f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=#1f1f3f gui=NONE
                \ ctermfg=fg ctermbg=234 cterm=NONE
highlight PmenuThumb guifg=#0f0f0f guibg=#21365f gui=NONE
                \ ctermfg=fg ctermbg=233 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#858585 guibg=bg gui=underline
                \ ctermfg=249 ctermbg=234 cterm=underline
highlight TabLineSel guifg=#cfcfcf guibg=#2f305f gui=underline
                \ ctermfg=255 ctermbg=17 cterm=underline
highlight TabLineFill guifg=#858585 guibg=bg gui=underline
                \ ctermfg=249 ctermbg=234 cterm=underline

" cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
                \ ctermfg=NONE ctermbg=195 cterm=NONE
highlight CursorLine guifg=NONE guibg=#1f2530 gui=NONE
                \ ctermfg=NONE ctermbg=232 cterm=NONE
highlight CursorColumn guifg=NONE guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=232 cterm=NONE
highlight Cursor guifg=#000000 guibg=#afafaf gui=NONE
                \ ctermfg=0 ctermbg=248 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#c483a6 gui=NONE
                \ ctermfg=0 ctermbg=197 cterm=NONE
endif

" }}}2

" #- syntax highlighting group -# "{{{1
highlight lCursor guifg=#000000 guibg=#6c83a6 gui=NONE
                \ ctermfg=0 ctermbg=248 cterm=NONE
highlight MatchParen guifg=#000000 guibg=#965a81 gui=NONE
                \ ctermfg=52 ctermbg=199 cterm=bold,underline
highlight comment guifg=#6588e1 guibg=bg gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Constant guifg=#7498ff guibg=bg gui=NONE
                \ ctermfg=39 ctermbg=bg cterm=NONE
highlight Special guifg=#deffed guibg=bg gui=NONE
                \ ctermfg=252 ctermbg=bg cterm=NONE
highlight Identifier guifg=#766fff guibg=bg gui=NONE
                \ ctermfg=12 ctermbg=bg cterm=NONE
highlight Statement guifg=#cf7ff6 guibg=bg gui=NONE
                \ ctermfg=171 ctermbg=bg cterm=NONE
highlight PreProc guifg=#fdacfc guibg=bg gui=NONE
                \ ctermfg=213 ctermbg=bg cterm=NONE
highlight type guifg=#7ab191 guibg=bg gui=NONE
                \ ctermfg=48 ctermbg=bg cterm=NONE
highlight underlined guifg=#8abbd5 guibg=#1f363c gui=underline
                \ ctermfg=51 ctermbg=238 cterm=underline
highlight Ignore guifg=#c35fa1 guibg=bg gui=NONE
                \ ctermfg=13 ctermbg=bg cterm=NONE
highlight Error guifg=#f34d70 guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
highlight Todo guifg=#fe5eef guibg=#2f203f gui=bold,underline
                \ ctermfg=13 ctermbg=232 cterm=bold,underline
highlight string guifg=#ed4949 guibg=bg gui=NONE
                \ ctermfg=196 ctermbg=bg cterm=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
