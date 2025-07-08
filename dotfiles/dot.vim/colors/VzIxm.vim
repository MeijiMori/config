" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file


" #- Vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
if version >= 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#fdfdfd guibg=#303030 gui=NONE
                \ ctermfg=7 ctermbg=234 cterm=NONE
highlight SpecialKey guifg=#759f9e guibg=NONE gui=NONE
                \ ctermfg=29 ctermbg=bg cterm=NONE
highlight NonText guifg=#ffffff guibg=#383838 gui=NONE
                \ ctermfg=254 ctermbg=235 cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                 \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#5787a6 guibg=bg gui=bold
                \ ctermfg=30 ctermbg=bg cterm=bold
highlight ErrorMsg guibg=bg guifg=#ffaaff gui=NONE
                \ ctermfg=206 ctermbg=bg cterm=underline
" search "{{{2
highlight IncSearch guifg=#000000 guibg=#6f8faf gui=NONE
                \ ctermfg=17 ctermbg=31 cterm=bold,underline
highlight Search guifg=#111111 guibg=#ff8faf gui=NONE
                \ ctermfg=88 ctermbg=170 cterm=bold,underline
" }}}2
highlight MoreMsg guifg=#99ff99 guibg=#30303f gui=NONE
                \ ctermfg=113 ctermbg=bg cterm=underline
highlight ModeMsg guifg=#fffeee guibg=#30303f gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=underline
highlight LineNr guifg=#60656f guibg=NONE gui=NONE
                \ ctermfg=239 ctermbg=bg cterm=NONE
highlight CursorLineNr guifg=#60656f guibg=NONE gui=NONE
                \ ctermfg=239 ctermbg=231 cterm=bold
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#53e6a9 guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
" statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#32353b gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
highlight StatusLineNC guifg=#3f3f37 guibg=#52514c gui=NONE
                \ ctermfg=234 ctermbg=239 cterm=NONE
" terminal "{{{3
highlight Terminal guifg=#cfcfcf guibg=#00000f gui=NONE
                \ ctermfg=10 ctermbg=0 cterm=NONE
highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
                \ ctermfg=0 ctermbg=10 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
                \ ctermfg=96 ctermbg=183 cterm=NONE
" }}}2
highlight VertSplit guifg=#aaaaaa guibg=#2f2f30 gui=NONE
                \ ctermfg=239 ctermbg=bg cterm=NONE
highlight Title guifg=#2fd4c6 guibg=bg gui=NONE
                \ ctermfg=36 ctermbg=bg cterm=NONE
" visual "{{{2
highlight Visual guifg=#cfcfcf guibg=#1f3f6f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight VisualNOS guibg=#aaeeee guifg=#3d3d3d gui=underline,bold
                \ ctermfg=17 ctermbg=153 cterm=bold,underline
" }}}2
highlight WarningMsg guifg=#ef5faf guibg=bg gui=NONE
                \ ctermfg=165 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#3f50cf guibg=#cfcfcf gui=NONE
                \ ctermfg=232 ctermbg=250 cterm=NONE
" fold "{{{2
highlight Folded guifg=#bfbfcf guibg=#2f2f30 gui=NONE
                \ ctermfg=248 ctermbg=233 cterm=NONE
highlight FoldColumn guifg=#4f6dc3 guibg=#2f2f30 gui=bold
                \ ctermfg=27 ctermbg=bg cterm=bold

" diff "{{{2
highlight DiffAdd guifg=#aacbde guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=24 cterm=NONE
highlight DiffChange guifg=#998dbf guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=202 cterm=NONE
highlight DiffDelete guifg=#a62c74 guibg=bg gui=bold
                \ ctermfg=NONE ctermbg=161 cterm=bold
highlight DiffText guifg=#c9cbce guibg=bg gui=bold
                \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2
highlight SignColumn guibg=bg guifg=#a65774 gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#af8fbf guibg=bg gui=NONE
                \ ctermfg=139 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#8f9fbf guibg=bg gui=NONE
                \ ctermfg=99 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#8fcfbf guibg=bg gui=NONE
                \ ctermfg=84 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#cfbf8f guibg=bg gui=NONE
                \ ctermfg=185 ctermbg=bg cterm=NONE

" pmenu "{{{2
highlight Pmenu guifg=#5f5f5f guibg=#cfcfcf gui=NONE
                \ ctermfg=238 ctermbg=254 cterm=NONE
highlight PmenuSel guifg=#d2d2d2 guibg=#5f385f gui=NONE
                \ ctermfg=255 ctermbg=90 cterm=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=#4d2f4d gui=NONE
                \ ctermfg=fg ctermbg=89 cterm=NONE
highlight PmenuThumb guifg=#3d3f3d guibg=#1f1f2f gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#995050 guibg=bg gui=underline
                \ ctermfg=204 ctermbg=235 cterm=underline
highlight TabLineSel guifg=#675090 guibg=bg gui=underline
                \ ctermfg=57 ctermbg=235 cterm=underline
highlight TabLineFill guifg=#769950 guibg=bg gui=underline
                \ ctermfg=83 ctermbg=235 cterm=underline
" tabpanel "{{{2
highlight TabPanel guifg=#cfcfcf guibg=bg gui=NONE
                \ ctermfg=204 ctermbg=235 cterm=NONE
highlight TabPanelSel guifg=#cfcfff guibg=#2f3f8f gui=NONE
                \ ctermfg=57 ctermbg=235 cterm=NONE
highlight TabPanelFill guifg=#cfcfcf guibg=bg gui=NONE
                \ ctermfg=83 ctermbg=235 cterm=NONE

" cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
                \ ctermfg=NONE ctermbg=125 cterm=NONE
highlight CursorLine guifg=NONE guibg=#432230 gui=NONE
                \ ctermfg=NONE ctermbg=53 cterm=NONE
highlight ColorColumn guifg=#0088ff guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=27 cterm=NONE
highlight Cursor guifg=#000000 guibg=#00ee99 gui=NONE
                \ ctermfg=16 ctermbg=48 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#ffb6c1 gui=NONE
                \ ctermfg=16 ctermbg=124 cterm=NONE
endif

" }}}2

" #- Syntax highlighting group -# "{{{1
highlight lCursor guibg=#7ea3a6 guifg=#a68d7e gui=NONE
                \ ctermfg=16 ctermbg=48 cterm=NONE
highlight MatchParen guifg=#2f2f4f guibg=#cf8faf gui=bold
                \ ctermfg=88 ctermbg=13 cterm=bold,underline
highlight comment guifg=#646464 guibg=NONE gui=NONE
                \ ctermfg=242 ctermbg=bg cterm=NONE
highlight Constant guifg=#aaeeaa guibg=bg gui=NONE
                \ ctermfg=83 ctermbg=bg cterm=NONE
highlight Special guifg=#deffed guibg=bg gui=NONE
                \ ctermfg=195 ctermbg=bg cterm=NONE
highlight Identifier guifg=#9cb79c guibg=bg gui=NONE
                \ ctermfg=84 ctermbg=bg cterm=NONE
highlight Statement guifg=#c4a76a guibg=bg gui=NONE
                \ ctermfg=136 ctermbg=bg cterm=NONE
highlight PreProc guifg=#ffadfe guibg=bg gui=NONE
                \ ctermfg=175 ctermbg=bg cterm=NONE
highlight type guifg=#81a09a guibg=bg gui=NONE
                \ ctermfg=71 ctermbg=bg cterm=NONE
highlight underlined guifg=#66af9c guibg=#303f3f gui=underline
                \ ctermfg=48 ctermbg=234 cterm=underline
highlight Ignore guifg=#8f8f8f guibg=bg gui=NONE
                \ ctermfg=239 ctermbg=bg cterm=NONE
highlight Error guifg=#a04f7e guibg=bg gui=bold
                \ ctermfg=168 ctermbg=bg cterm=bold
highlight Todo guifg=#4e5ca0 guibg=#23252f gui=bold
                \ ctermfg=12 ctermbg=232 cterm=bold,underline
highlight string guifg=#ffc8ff guibg=bg gui=NONE
                \ ctermfg=213 ctermbg=bg cterm=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
