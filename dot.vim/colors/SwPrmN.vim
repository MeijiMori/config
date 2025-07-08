" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file
"

" #- reset -# "{{{1
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- highlighting groups for various occasions -#{{{1
highlight Normal guifg=#fdfdfd guibg=#202020 gui=NONE
                \ ctermfg=15 ctermbg=234 cterm=NONE
highlight SpecialKey guifg=#5842ff guibg=bg gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=NONE
highlight NonText guifg=#4f5fff guibg=#303030 gui=NONE
                \ ctermfg=33 ctermbg=235 cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#3a85d2 guibg=NONE gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#f84865 guibg=bg gui=NONE
                \ ctermfg=196 ctermbg=bg cterm=NONE
" Search "{{{2
highlight IncSearch guifg=#000000 guibg=#afcfaf gui=bold
                \ ctermfg=17 ctermbg=123 cterm=bold,underline
highlight Search guifg=#000000 guibg=#cfaf96 gui=bold
                \ ctermfg=52 ctermbg=213 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#8583d9 guibg=bg gui=NONE
                \ ctermfg=12 ctermbg=bg cterm=underline
highlight ModeMsg guifg=#ffffff guibg=bg gui=NONE
                \ ctermfg=255 ctermbg=bg cterm=underline
highlight LineNr guifg=#c3bcb4 guibg=#303030 gui=NONE
                \ ctermfg=195 ctermbg=235 cterm=NONE
highlight CursorLineNr guifg=#c3bcb4 guibg=#303030 gui=NONE
                \ ctermfg=57 ctermbg=232 cterm=bold
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#6fcf9f guibg=bg gui=NONE
                \ ctermfg=41 ctermbg=bg cterm=underline
" statusline "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#20202f gui=NONE
                \ ctermfg=250 ctermbg=232 cterm=NONE
highlight StatusLineNC guifg=#564234 guibg=#b2a089 gui=NONE
          \ ctermfg=95 ctermbg=180 cterm=NONE
" terminal "{{{3
highlight Terminal guifg=#cfcfcf guibg=#00000f gui=NONE
                \ ctermfg=10 ctermbg=0 cterm=NONE
highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
                \ ctermfg=0 ctermbg=10 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
                \ ctermfg=96 ctermbg=183 cterm=NONE
" }}}2
highlight VertSplit guifg=#aaaaaa guibg=bg gui=NONE
                \ ctermfg=249 ctermbg=235 cterm=NONE
highlight Title guifg=#388683 guibg=NONE gui=NONE
                \ ctermfg=35 ctermbg=235 cterm=NONE
" visual "{{{2
highlight Visual guifg=#cfcfcf guibg=#1f2f3f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guibg=#aaeeee guifg=#3d3d3d gui=underline,bold
                \ ctermfg=25 ctermbg=123 cterm=bold,underline
"}}}2
highlight WarningMsg guifg=#fc4765 guibg=bg gui=NONE
                \ ctermfg=197 ctermbg=bg cterm=underline
highlight WildMenu guifg=#2f5f85 guibg=#cfcfcf gui=NONE
                \ ctermfg=234 ctermbg=253 cterm=NONE
" fold "{{{2
highlight Folded guifg=#3f4faf guibg=#1a1a1f gui=NONE
                \ ctermfg=27 ctermbg=233 cterm=NONE
highlight FoldColumn guifg=#c0c0ff guibg=#0f101f gui=bold
                \ ctermfg=147 ctermbg=233 cterm=bold

" diff "{{{2
highlight DiffAdd guifg=#aacbde guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=23 cterm=NONE
highlight DiffChange guifg=#998dbf guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=130 cterm=NONE
highlight DiffDelete guifg=#a62c74 guibg=bg gui=bold
                \ ctermfg=fg ctermbg=88 cterm=bold
highlight DiffText guifg=#c9cbce guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2
highlight SignColumn guibg=bg guifg=#a65774 gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
" Spell "{{{2
highlight SpellBad guifg=#795099 guibg=bg gui=NONE
                \ ctermfg=93 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#506399 guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#509982 guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#998c50 guibg=bg gui=NONE
                \ ctermfg=178 ctermbg=bg cterm=NONE

" pmenu "{{{2
highlight Pmenu guifg=#333333 guibg=#cccccc gui=NONE
                \ ctermfg=235 ctermbg=251 cterm=NONE
highlight PmenuSel guifg=#d2d2d2 guibg=#1f2f5f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#6b4775 guibg=#0f0f0f gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight PmenuThumb guifg=#000000 guibg=#7f4aaf gui=NONE
                \ ctermfg=fg ctermbg=129 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#9d887c guibg=bg gui=underline
                \ ctermfg=138 ctermbg=234 cterm=underline
highlight TabLineSel guifg=#cfcfcf guibg=#0f1f2f gui=underline
                \ ctermfg=252 ctermbg=17 cterm=underline
highlight TabLineFill guifg=#aaaaaa guibg=bg gui=underline
                \ ctermfg=250 ctermbg=bg cterm=underline

" tabpanel "{{{2
highlight TabPanel guifg=#9d887c guibg=bg gui=NONE
                \ ctermfg=138 ctermbg=234 cterm=NONE
highlight TabPanelSel guifg=#cfcfcf guibg=#0f1f2f gui=NONE
                \ ctermfg=252 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#aaaaaa guibg=bg gui=NONE
                \ ctermfg=250 ctermbg=bg cterm=NONE

" cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
                \ ctermfg=NONE ctermbg=27 cterm=NONE
highlight CursorLine guifg=NONE guibg=#1f1f2f gui=NONE
                \ ctermfg=NONE ctermbg=233 cterm=NONE
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
                \ ctermfg=NONE ctermbg=27 cterm=NONE
highlight Cursor guifg=#000000 guibg=#bfbfbf gui=NONE
                \ ctermfg=0 ctermbg=252 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af2f3f gui=NONE
                \ ctermfg=0 ctermbg=197 cterm=NONE
endif

"}}}2

" #- Syntax highlighting groups -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
                \ ctermfg=0 ctermbg=252 cterm=NONE
highlight MatchParen guifg=#0f0f1f guibg=#5f93cd gui=bold
                \ ctermfg=17 ctermbg=39 cterm=bold,underline
highlight comment guifg=#5490f5 guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Constant guifg=#7dd97b guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight Special guifg=#deffed guibg=bg gui=NONE
                \ ctermfg=153 ctermbg=bg cterm=NONE
highlight Identifier guifg=#90cffa guibg=bg gui=NONE
                \ ctermfg=51 ctermbg=bg cterm=NONE
highlight Statement guifg=#ae7bd9 guibg=bg gui=NONE
                \ ctermfg=98 ctermbg=bg cterm=NONE
highlight PreProc guifg=#b871b7 guibg=bg gui=NONE
                \ ctermfg=134 ctermbg=bg cterm=NONE
highlight type guifg=#71c9af guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight underlined guifg=#66ffcc guibg=bg gui=underline
                \ ctermfg=48 ctermbg=bg cterm=underline
highlight Ignore guifg=#047f75 guibg=bg gui=NONE
                \ ctermfg=23 ctermbg=bg cterm=bold
highlight Error guifg=#f04f7e guibg=bg gui=NONE
                \ ctermfg=197 ctermbg=bg cterm=bold
highlight Todo guifg=#3268ca guibg=#1f1f2f gui=bold
                \ ctermfg=33 ctermbg=bg cterm=bold,underline
highlight string guifg=#a6caa6 guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
