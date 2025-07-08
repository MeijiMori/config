" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file

" #- Syntax reset -# "{{{1
" First remove all existing highlighting.
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

" #- colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- hihlighting groups for various occasions -# "{{{1
highlight Normal guifg=#ffffff guibg=#00000f gui=NONE
                \ ctermfg=7 ctermbg=232 cterm=NONE
highlight SpecialKey guifg=#5842ff guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=NONE cterm=NONE
highlight NonText guifg=#1fffcf guibg=#101f1f gui=NONE
                \ ctermfg=42 ctermbg=NONE cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#2a2fff guibg=bg gui=bold
                \ ctermfg=21 ctermbg=NONE cterm=bold
highlight ErrorMsg guifg=#ff3f8f guibg=bg gui=NONE
                \ ctermfg=197 ctermbg=NONE cterm=NONE
" #- search -# "{{{2
highlight IncSearch guifg=#00000f guibg=#0f8f5f gui=bold
                \ ctermfg=16 ctermbg=29 cterm=bold,underline
highlight Search guifg=#ffffff guibg=#0f1f4f gui=bold
                \ ctermfg=7 ctermbg=17 cterm=bold,underline

highlight MoreMsg guifg=#0f5f2f guibg=#7fcf8f gui=NONE
                \ ctermfg=22 ctermbg=84 cterm=underline
highlight ModeMsg guifg=#0f2f5f guibg=#7f8fcf gui=NONE
                \ ctermfg=16 ctermbg=27 cterm=underline
highlight LineNr guifg=#ffcfaf guibg=NONE gui=NONE
                \ ctermfg=216 ctermbg=NONE cterm=NONE
highlight CursorLineNr guifg=#ffcfaf guibg=#0f0f2f gui=NONE
                \ ctermfg=232 ctermbg=252 cterm=bold
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#2f8f5f guibg=#afcfcf gui=NONE
                \ ctermfg=22 ctermbg=114 cterm=underline
" #- statusline -# "{{{2
highlight StatusLine guifg=#cfcfff guibg=#0f0f1f gui=NONE
                \ ctermfg=250 ctermbg=233 cterm=NONE
highlight StatusLineNC guifg=#5f5f3f guibg=#bfafcf gui=NONE
                \ ctermfg=59 ctermbg=248 cterm=NONE

" #- Terminal -# "{{{2
highlight StatusLineTerm guifg=#000f2f guibg=#cfccff gui=NONE
                \ ctermfg=11 ctermbg=bg cterm=NONE
highlight StatusLineTermNc guifg=#002f2f guibg=#8fafcf gui=NONE
                \ ctermfg=11 ctermbg=bg cterm=NONE
" }}}
highlight VertSplit guifg=#c2bfa5 guibg=bg gui=NONE
                \ ctermfg=7 ctermbg=232 cterm=NONE
highlight Title guifg=#22935f guibg=bg gui=NONE
                \ ctermfg=35 ctermbg=bg cterm=NONE
" #- visual -# "{{{2
highlight Visual guifg=#cfcfcf guibg=#000f2f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#3d3d3d guibg=#cfcfcf gui=underline,bold
                \ ctermfg=235 ctermbg=250 cterm=bold,underline
" }}}
highlight WarningMsg guifg=#ff2f5f guibg=bg gui=NONE
                \ ctermfg=197 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#cfcfff guibg=#0f0f1f gui=NONE
                \ ctermfg=245 ctermbg=234 cterm=NONE
" #- fold -# "{{{2
highlight Folded guifg=#cfcfcf guibg=#0a0f1f gui=NONE
                \ ctermfg=249 ctermbg=232 cterm=NONE
highlight FoldColumn guifg=#2f1fcf guibg=bg gui=bold
                \ ctermfg=21 ctermbg=232 cterm=bold

" #- Diff -# "{{{2
highlight DiffAdd guifg=#0f0f0f guibg=#aacbde gui=NONE
                \ ctermfg=fg ctermbg=35 cterm=NONE
highlight DiffChange guifg=#0f0f0f guibg=#998dbf gui=NONE
                \ ctermfg=fg ctermbg=136 cterm=NONE
highlight DiffDelete guifg=#0f0f0f guibg=#af2f7f gui=bold
                \ ctermfg=fg ctermbg=125 cterm=NONE
highlight DiffText guifg=#0f0f0f guibg=#c9cbce gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
"}}}
highlight SignColumn guifg=#a65774 guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=249 cterm=NONE
" #- Spell -# "{{{2
highlight SpellBad term=NONE gui=NONE guibg=bg guifg=#795099
                \ ctermfg=56 ctermbg=bg cterm=NONE
highlight SpellCap term=NONE gui=NONE guibg=bg guifg=#506399
                \ ctermfg=26 ctermbg=bg cterm=NONE
highlight SpellRare term=NONE gui=NONE guibg=bg guifg=#509982
                \ ctermfg=36 ctermbg=bg cterm=NONE
highlight SpellLocal term=NONE gui=NONE guibg=bg guifg=#998c50
                \ ctermfg=142 ctermbg=bg cterm=NONE
" #- Pmenu -# "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#bfbfff gui=NONE
                \ ctermfg=233 ctermbg=250 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#0f1f4f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=fg guibg=#00001f gui=NONE
                \ ctermfg=fg ctermbg=234 cterm=NONE
highlight PmenuThumb guifg=fg guibg=#2f0f1f gui=NONE
                \ ctermfg=fg ctermbg=124 cterm=NONE
" }}}
" #- Tabline -# "{{{2
highlight TabLine guifg=#5f5f5f guibg=#cfcfff gui=underline
                \ ctermfg=238 ctermbg=250 cterm=underline
highlight TabLineSel guifg=#cccccf guibg=#0f1f3f gui=NONE
                \ ctermfg=fg ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#5f2f3f guibg=#cfcfcf gui=underline
                \ ctermfg=125 ctermbg=250 cterm=underline

" #- Tabpanel -# "{{{2
highlight TabPanel guifg=#5f5f5f guibg=#cfcfff gui=NONE
                \ ctermfg=238 ctermbg=250 cterm=NONE
highlight TabPanelSel guifg=#cccccf guibg=#0f1f3f gui=NONE
                \ ctermfg=fg ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#5f2f3f guibg=#cfcfcf gui=NONE
                \ ctermfg=125 ctermbg=250 cterm=NONE

" #- Cursor -# "{{{
highlight CursorColumn guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=NONE ctermbg=0 cterm=NONE
highlight CursorLine guifg=NONE guibg=#0f1a4f gui=NONE
                \ ctermfg=NONE ctermbg=233 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight Cursor guifg=#0f0f0f guibg=#ff8f5f gui=NONE
                \ ctermfg=fg ctermbg=22 cterm=NONE
"IME status color for cursor "{{{
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#8f0f2f gui=NONE
                \ ctermfg=fg ctermbg=52 cterm=NONE
endif
" }}}
" }}}

" #- syntax highlighting group -# "{{{1
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
                \ ctermfg=fg ctermbg=22 cterm=NONE
highlight MatchParen guifg=#000000 guibg=#0faf5f gui=bold
                \ ctermfg=22 ctermbg=47 cterm=bold,underline
highlight comment guifg=#2f8f5f guibg=bg gui=NONE
                \ ctermfg=28 ctermbg=bg cterm=NONE
highlight Constant guifg=#3faf8f guibg=bg gui=NONE
                \ ctermfg=41 ctermbg=bg cterm=NONE
highlight Special guifg=#cfcfff guibg=bg gui=NONE
                \ ctermfg=247 ctermbg=bg cterm=NONE
highlight Identifier guifg=#2f5fff guibg=bg gui=NONE
                \ ctermfg=26 ctermbg=bg cterm=NONE
highlight Statement guifg=#3f4fff guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight PreProc guifg=#cc5c5c guibg=bg gui=NONE
                \ ctermfg=208 ctermbg=bg cterm=NONE
highlight type guifg=#af0f5f guibg=bg gui=NONE
                \ ctermfg=197 ctermbg=bg cterm=NONE
highlight underlined guifg=#5f5f5f guibg=#cfcfcf gui=underline,bold
                \ ctermfg=241 ctermbg=249 cterm=bold,underline
highlight Ignore guifg=#047f75 guibg=bg gui=NONE
                \ ctermfg=29 ctermbg=bg cterm=NONE
highlight Error guifg=#ff2f5f guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
highlight Todo guifg=#8f3fff guibg=#bfbfff gui=bold,underline
                \ ctermfg=99 ctermbg=249 cterm=bold,underline
highlight string guifg=#ffaf3f guibg=bg gui=NONE
                \ ctermfg=172 ctermbg=bg cterm=NONE
" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
