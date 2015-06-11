" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen {[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file

" #- Vim color file reset -# "{{{1
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -# "{{{1
let g:colors_name = "oeNmP"

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#dfdfdf guibg=#0f1a3f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight SpecialKey guifg=#5f7ecf guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight NonText guifg=#3333ff guibg=bg gui=NONE
                \ ctermfg=20 ctermbg=bg cterm=NONE
highlight Directory guifg=#3fafff guibg=bg gui=bold
                \ ctermfg=39 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#ff6f6f guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
" search "{{{2
highlight IncSearch guifg=#afafaf guibg=#0f3f3f gui=bold,underline
                \ ctermfg=254 ctermbg=23 cterm=bold,underline
highlight Search guifg=#afafaf guibg=#3f0f3f gui=bold,underline
                \ ctermfg=253 ctermbg=89 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#95d5d9 guibg=bg gui=underline
                \ ctermfg=117 ctermbg=bg cterm=underline
highlight ModeMsg guifg=#3f5fff guibg=bg gui=underline
                \ ctermfg=27 ctermbg=bg cterm=underline
highlight LineNr guifg=#2f5fff guibg=NONE gui=NONE
                \ ctermfg=27 ctermbg=NONE cterm=NONE
highlight CursorLineNr guifg=#2f2fff guibg=#1f2f5f gui=NONE
                \ ctermfg=42 ctermbg=NONE cterm=bold
highlight Question guifg=#6ff39f guibg=bg gui=underline
                \ ctermfg=85 ctermbg=bg cterm=underline
" statusline "{{{2
highlight StatusLine guifg=#e0f0e0 guibg=#0f1f30 gui=NONE
                \ ctermfg=252 ctermbg=17 cterm=NONE
highlight StatusLineNC guifg=#5f5f3f guibg=#c4b2ab gui=NONE
                \ ctermfg=181 ctermbg=103 cterm=NONE
"}}}2
highlight Title guifg=#afbf7f guibg=NONE gui=underline
                \ ctermfg=193 ctermbg=bg cterm=underline,bold
highlight VertSplit guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=19 cterm=bold
" visual "{{{2
highlight Visual guifg=#cfcfcf guibg=#1f2f4f gui=NONE
                \ ctermfg=fg ctermbg=19 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#3f5f8f gui=bold,underline
                \ ctermfg=fg ctermbg=19 cterm=bold
"}}}2
highlight WarningMsg guifg=#ff4765 guibg=bg gui=underline
                \ ctermfg=199 ctermbg=bg cterm=underline
highlight WildMenu guifg=#cfcfcf guibg=#0f0f2f gui=underline
                \ ctermfg=252 ctermbg=16 cterm=underline
" fold "{{{2
highlight Folded guifg=#9f9faf guibg=#0a102f gui=NONE
                \ ctermfg=253 ctermbg=19 cterm=NONE
highlight FoldColumn guifg=#2f1090 guibg=#0f102f gui=bold
                \ ctermfg=57 ctermbg=18 cterm=bold
" diff "{{{2
highlight DiffAdd guifg=fg guibg=#2f3f5f gui=NONE
                \ ctermfg=254 ctermbg=26 cterm=NONE
highlight DiffChange guifg=fg guibg=#5f804f gui=NONE
                \ ctermfg=254 ctermbg=29 cterm=NONE
highlight DiffDelete guifg=fg guibg=#f5804f gui=bold
                \ ctermfg=254 ctermbg=179  cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg  cterm=NONE
"}}}2
highlight SignColumn guifg=#f65774 guibg=bg gui=NONE
                \ ctermfg=202 ctermbg=bg cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#af8fcf guibg=bg gui=NONE
                \ ctermfg=13 ctermbg=bg  cterm=NONE
highlight SpellCap guifg=#8f9fcf guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg  cterm=NONE
highlight SpellRare guifg=#8fcfbf guibg=bg gui=NONE
                \ ctermfg=73 ctermbg=bg  cterm=NONE
highlight SpellLocal guifg=#cfbf8f guibg=bg gui=NONE
                \ ctermfg=216 ctermbg=bg  cterm=NONE

" pmenu "{{{2
highlight Pmenu guifg=#202020 guibg=#c0c0c0 gui=NONE
                \ ctermfg=238 ctermbg=252  cterm=NONE
highlight PmenuSel guifg=#cccccc guibg=#1f2f5f gui=NONE
                \ ctermfg=253 ctermbg=18  cterm=NONE
highlight PmenuSbar guifg=#7f7f7f guibg=#1f102f gui=NONE
                \ ctermfg=fg ctermbg=53  cterm=NONE
highlight PmenuThumb guifg=#000000 guibg=#2f5f4f gui=NONE
                \ ctermfg=fg ctermbg=23  cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#8f8f8f guibg=#0f0f3f gui=NONE
                \ ctermfg=252 ctermbg=18 cterm=NONE
highlight TabLineSel guifg=#cfcfcf guibg=#1f1f5f gui=NONE
                \ ctermfg=254 ctermbg=20 cterm=NONE
highlight TabLineFill guifg=#0f3f3f guibg=#0f0f3f gui=underline,bold
                \ ctermfg=35 ctermbg=18 cterm=underline

" cursor "{{{2
highlight CursorColumn guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=202 ctermbg=bg cterm=NONE
highlight CursorLine guifg=NONE guibg=#1f254f gui=NONE
                \ ctermfg=NONE ctermbg=18 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=254 ctermbg=19 cterm=NONE
highlight Cursor guifg=#000000 guibg=#9f9f9f gui=NONE
                \ ctermfg=254 ctermbg=240 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#7f2f4f gui=NONE
                \ ctermfg=254 ctermbg=9 cterm=NONE
endif

" }}}2

" #- syntax highlighting group -# "{{{1
highlight lCursor guifg=#404040 guibg=#7ea3a6 gui=NONE
                \ ctermfg=240 ctermbg=36 cterm=NONE
highlight MatchParen guifg=#0f0f2f guibg=#0f2fcf gui=bold,underline
                \ ctermfg=232 ctermbg=36 cterm=bold,underline
highlight comment guifg=#6fafff guibg=bg gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Constant guifg=#7dd97b guibg=bg gui=NONE
                \ ctermfg=43 ctermbg=bg cterm=NONE
highlight Special guifg=#deffed guibg=bg gui=NONE
                \ ctermfg=69 ctermbg=bg cterm=NONE
highlight Identifier guifg=#ccb0d7 guibg=bg gui=NONE
                \ ctermfg=5 ctermbg=bg cterm=NONE
highlight Statement guifg=#94de92 guibg=bg gui=NONE
                \ ctermfg=49 ctermbg=bg cterm=NONE
highlight PreProc guifg=#b871b7 guibg=bg gui=NONE
                \ ctermfg=134 ctermbg=bg cterm=NONE
highlight type guifg=#71c9af guibg=bg gui=NONE
                \ ctermfg=86 ctermbg=bg cterm=NONE
highlight underlined guifg=#9f7fff guibg=bg gui=underline
                \ ctermfg=105 ctermbg=bg cterm=underline
highlight Ignore guifg=#047f75 guibg=NONE gui=bold
                \ ctermfg=36 ctermbg=bg cterm=bold
highlight Error guifg=#ff4f7e guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
highlight Todo guifg=#6f7fff guibg=#1f0f3f gui=bold,underline
                \ ctermfg=69 ctermbg=bg cterm=bold,underline
highlight string guifg=#4f7faf guibg=bg
                \ ctermfg=25 ctermbg=bg cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


