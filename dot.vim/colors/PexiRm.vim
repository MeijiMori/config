" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date
" Guicolorscheme file

" #- Vim color file reset -# "{{{1
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- Colorscheme name -# "{{{1
let g:colors_name = "PexiRm"

" #- Hilighting group for various occasions -#"{{{1
highlight Normal guifg=#fdfdfd guibg=#323232 gui=NONE
                \ ctermfg=15 ctermbg=234 cterm=NONE
highlight SpecialKey guifg=#759f9e guibg=bg gui=NONE
                \ ctermfg=29 ctermbg=bg cterm=NONE
highlight NonText guifg=#ffffff guibg=#383838 gui=NONE
                \ ctermfg=15 ctermbg=234 cterm=NONE
highlight Directory guifg=#5787a6 guibg=bg gui=bold
                \ ctermfg=69 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#835071 guibg=bg gui=NONE
                \ ctermfg=89 ctermbg=bg cterm=NONE
" search "{{{2
highlight IncSearch guifg=#000000 guibg=#702e59 gui=bold
                \ ctermfg=53 ctermbg=129 cterm=bold,underline
highlight Search guifg=#111111 guibg=#702556 gui=bold
                \ ctermfg=17 ctermbg=39 cterm=bold,underline
" }}}2
highlight MoreMsg guifg=#87a07a guibg=bg gui=NONE
                \ ctermfg=239 ctermbg=bg cterm=NONE
highlight ModeMsg guifg=#ffffff guibg=NONE gui=NONE
                \ ctermfg=255 ctermbg=bg cterm=NONE
highlight LineNr guifg=#6b6b6b guibg=NONE gui=NONE
                \ ctermfg=240 ctermbg=bg cterm=NONE
highlight CursorLineNr guifg=#6b6b6b guibg=NONE gui=NONE
                \ ctermfg=238 ctermbg=248 cterm=NONE
highlight Question guifg=#6ab395 guibg=bg gui=NONE
                \ ctermfg=36 ctermbg=bg cterm=NONE
" statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#35353f gui=NONE
                \ ctermfg=255 ctermbg=233 cterm=NONE
highlight StatusLineNC guifg=#3b3835 guibg=#636363 gui=NONE
                \ ctermfg=236 ctermbg=240 cterm=NONE
" }}}2
highlight VertSplit guifg=#aaaaaa guibg=#363636 gui=NONE
                \ ctermfg=246 ctermbg=234 cterm=NONE
highlight Title guifg=#acacac guibg=bg gui=NONE
                \ ctermfg=250 ctermbg=bg cterm=NONE
" visual "{{{2
highlight Visual guifg=#cfcfcf guibg=#2f3f77 gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#3d3d3d guibg=#aaeeee gui=underline,bold
                \ ctermfg=17 ctermbg=33 cterm=bold,underline
" }}}
highlight WarningMsg guifg=#e573a0 guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#6380c5 guibg=#2f2f5f gui=NONE
                \ ctermfg=252 ctermbg=17 cterm=NONE
" fold "{{{2
highlight Folded guifg=#afafaf guibg=#2f3f6f gui=NONE
                \ ctermfg=250 ctermbg=4 cterm=NONE
highlight FoldColumn guifg=#4f6dc3 guibg=#343434 gui=bold
                \ ctermfg=12 ctermbg=234 cterm=bold

" diff "{{{2
highlight DiffAdd guifg=#aacbde guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=22 cterm=NONE
highlight DiffChange guifg=#998dbf guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=208 cterm=NONE
highlight DiffDelete guifg=#a62c74 guibg=bg gui=bold
                \ ctermfg=fg ctermbg=124 cterm=NONE
highlight DiffText guifg=#c9cbce guibg=bg gui=bold
                \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2
highlight SignColumn gui=NONE guibg=bg guifg=#a65774
                \ ctermfg=fg ctermbg=bg cterm=NONE
" spell "{{{2
highlight SpellBad gui=NONE guibg=bg guifg=#795099
                \ ctermfg=129 ctermbg=bg cterm=NONE
highlight SpellCap gui=NONE guibg=bg guifg=#506399
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight SpellRare gui=NONE guibg=bg guifg=#509982
                \ ctermfg=35 ctermbg=bg cterm=NONE
highlight SpellLocal gui=NONE guibg=bg guifg=#998c50
                \ ctermfg=220 ctermbg=bg cterm=NONE

"Pmenu "{{{2
"highlight pmenu guifg=#a4a9a4 guibg=#3d3f3d
highlight Pmenu guifg=#a0a0a0 guibg=#35353f gui=NONE
                \ ctermfg=248 ctermbg=234 cterm=NONE
highlight PmenuSel guifg=#d2d2d2 guibg=#223f6f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=#4d2f4d gui=NONE
                \ ctermfg=fg ctermbg=89 cterm=NONE
highlight PmenuThumb guifg=#3d3f3d guibg=#000000 gui=NONE
                \ ctermfg=fg ctermbg=232 cterm=NONE

" tabline "{{{2
highlight TabLine gui=NONE guifg=#80a990 guibg=bg
                \ ctermfg=35 ctermbg=233 cterm=NONE
highlight TabLineSel gui=NONE guifg=#cfcfcf guibg=#152046
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabLineFill gui=underline guifg=#769950 guibg=bg
                \ ctermfg=29 ctermbg=bg cterm=underline

" cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
                \ ctermfg=NONE ctermbg=27 cterm=NONE
highlight CursorLine guifg=NONE guibg=#393939 gui=NONE
                \ ctermfg=NONE ctermbg=232 cterm=NONE
highlight CursorColumn guifg=NONE guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=27 cterm=NONE
highlight Cursor guifg=#000000 guibg=#00ee99 gui=NONE
                \ ctermfg=0 ctermbg=48 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#ffb6c1 gui=NONE
                \ ctermfg=0 ctermbg=88 cterm=NONE
endif

" }}}2

" #- Syntax highlighting group -#"{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
                \ ctermfg=0 ctermbg=48 cterm=NONE
highlight MatchParen guifg=#575757 guibg=#5f93cd gui=bold
                \ ctermfg=17 ctermbg=27 cterm=bold,underline
highlight comment guifg=#4b89a6 guibg=bg gui=NONE
                \ ctermfg=24 ctermbg=bg cterm=NONE
highlight Constant guifg=#aaeeaa guibg=bg gui=NONE
                \ ctermfg=77 ctermbg=bg cterm=NONE
highlight Special guifg=#deffed guibg=bg gui=NONE
                \ ctermfg=250 ctermbg=bg cterm=NONE
highlight Identifier guifg=#9cb79c guibg=bg gui=NONE
                \ ctermfg=120 ctermbg=bg cterm=NONE
highlight Statement guifg=#5c71ab guibg=NONE gui=NONE
                \ ctermfg=12 ctermbg=bg cterm=NONE
highlight PreProc guifg=#b871b7 guibg=bg gui=NONE
                \ ctermfg=134 ctermbg=bg cterm=NONE
"highlight type guifg=#9781ab guibg=bg gui=NONE
highlight type guifg=#81a09a guibg=NONE gui=NONE
                \ ctermfg=66 ctermbg=bg cterm=NONE
highlight underlined guifg=#66ff9c guibg=#37463c gui=NONE
                \ ctermfg=47 ctermbg=235 cterm=NONE
highlight Ignore guifg=#047f75 guibg=#353535 gui=bold
                \ ctermfg=23 ctermbg=bg cterm=bold
highlight Error guifg=#a04f7e guibg=bg gui=NONE
                \ ctermfg=125 ctermbg=bg cterm=NONE
highlight Todo guifg=#4e5ca0 guibg=#3f303f gui=bold,underline
                \ ctermfg=57 ctermbg=237 cterm=bold,underline
highlight string guifg=#7dac8f guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
