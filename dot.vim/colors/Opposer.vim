" #- Vim colorscheme file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" !date
" Guicolorscheme file

" #- color file reset -# "{{{1
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- highlighting colorscheme -# "{{{1
highlight Normal guifg=#000000 guibg=#c4c4c4 gui=NONE
                \ ctermfg=0 ctermbg=247 cterm=NONE
highlight SpecialKey guifg=#334645 guibg=bg gui=bold
                \ ctermfg=17 ctermbg=bg cterm=bold
highlight NonText guifg=#1f3faf guibg=bg gui=bold
                \ ctermfg=18 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#348e43 guibg=bg gui=bold
                \ ctermfg=22 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#af0f3f guibg=#cf8faf gui=underline
                \ ctermfg=52 ctermbg=206 cterm=underline
" search "{{{2
highlight IncSearch guifg=#5f2f3f guibg=#af5f7f gui=underline
                \ ctermfg=52 ctermbg=197 cterm=bold,underline
highlight Search guifg=#2f3f5f guibg=#a0aff6 gui=underline
                \ ctermfg=17 ctermbg=27 cterm=bold,underline
" }}}2
highlight MoreMsg guifg=#0f4f2f guibg=#afcfaf gui=underline
                \ ctermfg=22 ctermbg=120 cterm=underline
highlight ModeMsg guifg=#0f2f4f guibg=#afafcf gui=underline
                \ ctermfg=17 ctermbg=26 cterm=underline
highlight LineNr gui=NONE guifg=#b85f40 guibg=NONE
                \ ctermfg=166 ctermbg=bg cterm=NONE
highlight CursorLineNr gui=NONE guifg=#b85f40 guibg=NONE
                \ ctermfg=130 ctermbg=252 cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#0f4f4f guibg=#afcfcf gui=underline
                \ ctermfg=17 ctermbg=123 cterm=underline
" statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#0f1f2f gui=NONE
                \ ctermfg=15 ctermbg=232 cterm=NONE
highlight StatusLineNC guifg=#0f0f0f guibg=#cfcfcf gui=NONE
                \ ctermfg=0 ctermbg=250 cterm=NONE
highlight StatusLineTerm guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=15 ctermbg=232 cterm=NONE
highlight StatusLineTermNC guifg=#afafaf guibg=#1f1f2f gui=NONE
                \ ctermfg=0 ctermbg=250 cterm=NONE
" }}}2
highlight VertSplit guifg=#999999 guibg=bg gui=NONE
                \ ctermfg=146 ctermbg=250 cterm=NONE
highlight Title guifg=#5f6f5f guibg=bg gui=NONE
                \ ctermfg=245 ctermbg=bg cterm=NONE
" Visual "{{{2
highlight Visual guifg=#cfcfcf guibg=#0f2f5f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#2a3e9f gui=underline,bold
                \ ctermfg=255 ctermbg=25 cterm=bold,underline
" }}}2
highlight WarningMsg guifg=#721237 guibg=#af5f7f gui=underline
                \ ctermfg=52 ctermbg=200 cterm=underline
highlight WildMenu guifg=#0f3f5f guibg=#cfcfcf gui=NONE
                \ ctermfg=234 ctermbg=252 cterm=underline
" fold "{{{2
highlight Folded guifg=#000000 guibg=#9f9f9f gui=NONE
                \ ctermfg=232 ctermbg=242 cterm=NONE
highlight FoldColumn guifg=#2f3f5f guibg=bg gui=bold
                \ ctermfg=232 ctermbg=bg cterm=bold

" diff "{{{2
highlight DiffAdd guifg=#4e5d66 guibg=#afbfcf gui=bold
                \ ctermfg=fg ctermbg=35 cterm=NONE
highlight DiffChange guifg=#615292 guibg=#bfafff gui=NONE
                \ ctermfg=fg ctermbg=214 cterm=NONE
highlight DiffDelete guifg=#a62c74 guibg=#df9fff gui=bold
                \ ctermfg=fg ctermbg=197 cterm=NONE
highlight DiffText guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2
highlight SignColumn guifg=#7f375f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#6f2f8f guibg=bg gui=NONE
                \ ctermfg=54 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#2f5f8f guibg=bg gui=NONE
                \ ctermfg=21 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#2f7f6f guibg=bg gui=NONE
                \ ctermfg=23 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#7f6f2f guibg=bg gui=NONE
                \ ctermfg=172 ctermbg=bg cterm=NONE

" pmenu "{{{2
highlight Pmenu guifg=#333333 guibg=#cbcbc3 gui=NONE
                \ ctermfg=232 ctermbg=250 cterm=NONE
highlight PmenuSel guifg=#bfbfbf guibg=#2f265f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#000000 guibg=#3f3f3f gui=NONE
                \ ctermfg=fg ctermbg=236 cterm=NONE
highlight PmenuThumb guifg=#000000 guibg=#2f3f7f gui=NONE
                \ ctermfg=fg ctermbg=25 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#3f5faf guibg=#0f0f1f gui=underline
                \ ctermfg=21 ctermbg=232 cterm=underline
highlight TabLineSel guifg=#cfcfcf guibg=#1f2f4f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#2f2f5f guibg=#00001f gui=underline
                \ ctermfg=21 ctermbg=16 cterm=underline
" tabpanel "{{{2
highlight TabPanel guifg=#3f5faf guibg=#0f0f1f gui=NONE
                \ ctermfg=21 ctermbg=232 cterm=NONE
highlight TabPanelSel guifg=#cfcfcf guibg=#1f2f4f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#2f2f5f guibg=#c4c4c4 gui=NONE
                \ ctermfg=21 ctermbg=16 cterm=NONE

" cursor "{{{2
highlight CursorColumn guifg=#000000 guibg=#3a3b3c gui=NONE
                \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight CursorLine guifg=NONE guibg=#7c96a9 gui=NONE
                \ ctermfg=NONE ctermbg=26 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#3a3b3c gui=NONE
                \ ctermfg=NONE ctermbg=26 cterm=NONE
highlight Cursor guifg=#000000 guibg=#00af5f gui=NONE
                \ ctermfg=0 ctermbg=41 cterm=NONE
"IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af3f3f gui=NONE
                \ ctermfg=0 ctermbg=124 cterm=NONE
endif

" terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=fg guibg=bg gui=NONE
  " Terminal color
  let g:terminal_ansi_colors = [
    \ "#0c0c0c", "#850f1f", "#13710e", "#819c00",
    \ "#00378a", "#881798", "#3a96dd", "#8f8f8f",
    \ "#767676", "#872836", "#16960c", "#6a7f84",
    \ "#3b789f", "#94005e", "#61d6d6", "#989898"
    \ ]
endif



" toolbar "{{{2
highlight ToolbarButton guifg=#3f1f8f guibg=#afafff gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ToolbarLine guifg=#5f0f0f guibg=#df3fcf gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE




" #- sytntax highlighting -# "{{{1
highlight lCursor guifg=#575757 guibg=#171615 gui=NONE
                \ ctermfg=0 ctermbg=41 cterm=NONE
highlight MatchParen guifg=#1f1f4f guibg=#4f73ad gui=bold,underline
                \ ctermfg=17 ctermbg=27 cterm=bold,underline
highlight comment guifg=#0c4396 guibg=bg gui=NONE
                \ ctermfg=21 ctermbg=bg cterm=NONE
highlight Constant guifg=#820960 guibg=bg gui=NONE
                \ ctermfg=89 ctermbg=bg cterm=NONE
highlight Special guifg=#4c524f guibg=bg gui=NONE
                \ ctermfg=239 ctermbg=bg cterm=NONE
highlight Identifier guifg=#003f00 guibg=bg gui=NONE
                \ ctermfg=22 ctermbg=bg cterm=NONE
"highlight Statement guifg=#5c71ab guibg=#3a3b3c gui=NONE
highlight Statement guifg=#0f1f6f guibg=bg gui=NONE
                \ ctermfg=17 ctermbg=bg cterm=NONE
"highlight PreProc guifg=#b871b7 guibg=#3a3b3c gui=NONE
highlight PreProc guifg=#7f0f4f guibg=bg gui=NONE
                \ ctermfg=125 ctermbg=bg cterm=NONE
highlight type guifg=#1f4f2f guibg=bg gui=NONE
                \ ctermfg=22 ctermbg=bg cterm=NONE
highlight underlined guifg=#5f8f8f guibg=bg gui=bold,underline
                \ ctermfg=30 ctermbg=bg cterm=bold,underline
highlight Ignore guifg=#354b6c guibg=bg gui=NONE
                \ ctermfg=17 ctermbg=bg cterm=bold
highlight Error guifg=#af0f2f guibg=bg gui=NONE
                \ ctermfg=160 ctermbg=bg cterm=NONE
highlight Todo guifg=#8f5faf guibg=#cfcfff gui=bold,underline
                \ ctermfg=56 ctermbg=153 cterm=bold,underline
highlight string guifg=#2f3faf guibg=bg gui=NONE
                \ ctermfg=21 ctermbg=bg cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
