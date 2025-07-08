" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file
" Inspired Dragon that angel

" #- Vim color file reset -# "{{{1
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
highlight Normal guifg=#cfcfcf guibg=#1f000f gui=NONE
          \ ctermfg=255 ctermbg=52 cterm=NONE
highlight SpecialKey guifg=#3f0fff guibg=bg gui=NONE
          \ ctermfg=21 ctermbg=bg cterm=NONE
highlight NonText guifg=#3f0fff guibg=bg gui=NONE
          \ ctermfg=21 ctermbg=bg cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#2f2fff guibg=bg gui=NONE
          \ ctermfg=21 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#af0f3f guibg=bg gui=NONE
          \ ctermfg=124 ctermbg=bg cterm=NONE
" search "{{{2
highlight IncSearch guifg=#ffffff guibg=#5f0f2f gui=bold
          \ ctermfg=89 ctermbg=128 cterm=bold,underline
highlight Search guifg=#cfcfcf guibg=#0f0f7f gui=bold
          \ ctermfg=17 ctermbg=37 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#0faf5f guibg=bg gui=NONE
          \ ctermfg=34 ctermbg=bg cterm=NONE
highlight ModeMsg guifg=#3f0fff guibg=NONE gui=NONE
          \ ctermfg=21 ctermbg=bg cterm=NONE
highlight LineNr guifg=#af0f3f guibg=NONE gui=NONE
          \ ctermfg=160 ctermbg=bg cterm=NONE
highlight CursorLineNr guifg=#af0f3f guibg=NONE gui=NONE
          \ ctermfg=181 ctermbg=232 cterm=bold
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#0fbf5f guibg=NONE gui=NONE
          \ ctermfg=35 ctermbg=bg cterm=NONE
" statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#000510 gui=NONE
          \ ctermfg=231 ctermbg=233 cterm=NONE
highlight StatusLineNC guifg=#5f3f3f guibg=#bfafaf gui=NONE
          \ ctermfg=95 ctermbg=181 cterm=NONE
" #- Terminal -# "{{{3
highlight StatusLineTerm guifg=#000f2f guibg=#cfccff gui=NONE
                \ ctermfg=11 ctermbg=bg cterm=NONE
highlight StatusLineTermNc guifg=#002f2f guibg=#8fafcf gui=NONE
                \ ctermfg=11 ctermbg=bg cterm=NONE
"}}}2
highlight VertSplit guifg=#7f1f5f guibg=bg gui=bold
          \ ctermfg=90 ctermbg=bg cterm=bold
highlight Title guifg=#9f223f guibg=bg gui=NONE
          \ ctermfg=88 ctermbg=bg cterm=NONE
" visual "{{{2
highlight Visual guifg=#afafaf guibg=#0f002f gui=NONE
          \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f0f3f gui=underline,bold
          \ ctermfg=15 ctermbg=52 cterm=bold,underline
"}}}2
highlight WarningMsg guifg=#cf2f5f guibg=bg gui=NONE
          \ ctermfg=1 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#1f2f5f guibg=#afafaf gui=NONE
          \ ctermfg=17 ctermbg=195 cterm=NONE
" fold "{{{2
highlight Folded guifg=#9f9f9f guibg=#0f050f gui=NONE
          \ ctermfg=250 ctermbg=233 cterm=NONE
highlight FoldColumn guifg=#1f6f5f guibg=#0f050f gui=bold
          \ ctermfg=29 ctermbg=233 cterm=bold

" diff "{{{2
highlight DiffAdd guifg=#cfcfcf guibg=#1f2faf gui=NONE
          \ ctermfg=NONE ctermbg=22 cterm=NONE
highlight DiffChange guifg=#cfcfcf guibg=#5f1faf gui=bold
          \ ctermfg=NONE ctermbg=130 cterm=NONE
highlight DiffDelete guifg=#cfcfcf guibg=#af2f3f gui=bold
          \ ctermfg=NONE ctermbg=124 cterm=NONE
highlight DiffText guifg=#cfcfcf guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
" }}}2
highlight SignColumn guifg=#ffffb0 guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#7f2f8f guibg=bg gui=NONE
          \ ctermfg=125 ctermbg=NONE cterm=NONE
highlight SpellCap guifg=#2f3f5f guibg=bg gui=NONE
          \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight SpellRare guifg=#2f8f4f guibg=bg gui=NONE
          \ ctermfg=29 ctermbg=NONE cterm=NONE
highlight SpellLocal guifg=#8f7f2f guibg=bg gui=NONE
          \ ctermfg=154 ctermbg=NONE cterm=NONE

" pmenu "{{{2
highlight Pmenu guifg=#1f1f1f guibg=#bfbfff gui=NONE
          \ ctermfg=0 ctermbg=252 cterm=NONE
highlight PmenuSel guifg=#bfbfbf guibg=#1f0f30 gui=NONE
          \ ctermfg=15 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#cccccc guibg=#101020 gui=NONE
          \ ctermfg=fg ctermbg=234 cterm=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#0f001f gui=NONE
          \ ctermfg=fg ctermbg=232 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#2f2f2f guibg=#bbbbbb gui=NONE
          \ ctermfg=232 ctermbg=253 cterm=NONE
highlight TabLineSel guifg=#afafaf guibg=#0f0f2f gui=NONE
          \ ctermfg=252 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#3f3f3f guibg=#bfbfbf gui=NONE
          \ ctermfg=236 ctermbg=253 cterm=NONE

" tabpanel "{{{2
highlight TabPanel guifg=#2f2f2f guibg=#bbbbbb gui=NONE
          \ ctermfg=232 ctermbg=253 cterm=NONE
highlight TabPanelSel guifg=#afafaf guibg=#0f0f2f gui=NONE
          \ ctermfg=252 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#3f3f3f guibg=#bfbfbf gui=NONE
          \ ctermfg=236 ctermbg=253 cterm=NONE

" cursor "{{{2
highlight CursorColumn guifg=NONE guibg=#00000f gui=NONE
          \ ctermfg=NONE ctermbg=233 cterm=NONE
highlight CursorLine guifg=NONE guibg=#1f051f gui=NONE
          \ ctermfg=NONE ctermbg=53 cterm=NONE
highlight ColorColumn guifg=fg guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=53 cterm=NONE
highlight Cursor guifg=#0f0f0f guibg=#cfbfaf gui=NONE
          \ ctermfg=232 ctermbg=138 cterm=NONE
"IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#bfbfbf guibg=#5f0f2f gui=NONE
          \ ctermfg=232 ctermbg=88 cterm=NONE
endif

" }}}2

" #- Syntax highlighting group -# "{{{1
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
          \ ctermfg=232 ctermbg=88 cterm=NONE
highlight MatchParen guifg=#0f0f0f guibg=#2f3faf gui=bold
          \ ctermfg=17 ctermbg=25 cterm=bold,underline
highlight comment guifg=#1f2fff guibg=bg gui=NONE
          \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Constant guifg=#8d2f9f guibg=bg gui=NONE
          \ ctermfg=129 ctermbg=bg cterm=NONE
highlight Special guifg=#afdfff guibg=bg gui=NONE
          \ ctermfg=87 ctermbg=bg cterm=NONE
highlight Identifier guifg=#cfaf5f guibg=bg gui=NONE
          \ ctermfg=220 ctermbg=bg cterm=NONE
highlight Statement guifg=#0faf7f guibg=bg gui=NONE
          \ ctermfg=35 ctermbg=bg cterm=NONE
highlight PreProc guifg=#bf3fcf guibg=bg gui=NONE
          \ ctermfg=200 ctermbg=bg cterm=NONE
highlight type guifg=#3fcf9f guibg=bg gui=NONE
          \ ctermfg=36 ctermbg=bg cterm=NONE
highlight underlined guifg=#2f5fff guibg=bg gui=underline
          \ ctermfg=27 ctermbg=bg cterm=underline
highlight Ignore guifg=#047f75 guibg=NONE gui=bold
          \ ctermfg=29 ctermbg=bg cterm=bold
highlight Error guifg=#bf2f3f guibg=bg gui=NONE
          \ ctermfg=161 ctermbg=bg cterm=NONE
highlight Todo guifg=#5f2fff guibg=#1f0f2f gui=bold
          \ ctermfg=33 ctermbg=235 cterm=bold
highlight string guifg=#4f2ff6 guibg=bg gui=NONE
          \ ctermfg=27 ctermbg=bg cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
