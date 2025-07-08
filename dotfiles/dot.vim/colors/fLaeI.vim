" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" like a barcerk fuler

" #- reset-# "{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#0f0f0f gui=NONE
          \ ctermfg=255 ctermbg=233 cterm=NONE
highlight SpecialKey guifg=#2f3f7f guibg=bg gui=NONE
          \ ctermfg=21 ctermbg=bg cterm=NONE
highlight NonText guifg=#3f7f5f guibg=bg gui=bold
          \ ctermfg=29 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#1f4f6f guibg=NONE gui=bold
          \ ctermfg=26 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#3f0f1f guibg=#af3f5f gui=underline
          \ ctermfg=88 ctermbg=125 cterm=underline
" search "{{{
highlight IncSearch guifg=#3f5f8f guibg=#5f8fcf gui=underline
          \ ctermfg=24 ctermbg=39 cterm=bold,underline
highlight Search guifg=#3f8f5f guibg=#5fcf8f gui=underline
          \ ctermfg=22 ctermbg=84 cterm=bold,underline
"}}}
highlight MoreMsg guifg=#002f0f guibg=#0f5f2f gui=underline
          \ ctermfg=22 ctermbg=42 cterm=underline
highlight ModeMsg guifg=#000f2f guibg=#0f2f5f gui=underline
          \ ctermfg=17 ctermbg=25 cterm=underline
highlight LineNr guifg=#9f4f7f guibg=NONE gui=NONE
          \ ctermfg=99 ctermbg=NONE cterm=NONE
highlight CursorLineNr guifg=#9f4f7f guibg=NONE gui=NONE
          \ ctermfg=161 ctermbg=NONE cterm=bold
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#0f3f0f guibg=#3f8f3f gui=NONE
          \ ctermfg=22 ctermbg=115 cterm=bold,underline
" statusline "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#0f0f0f gui=NONE
          \ ctermfg=255 ctermbg=232 cterm=NONE
highlight StatusLineNC guifg=#7f5f6f guibg=#cfafaf gui=NONE
          \ ctermfg=95 ctermbg=138 cterm=NONE
" #- Terminal -# "{{{3
highlight StatusLineTerm guifg=#000f2f guibg=#cfccff gui=NONE
                \ ctermfg=11 ctermbg=bg cterm=NONE
highlight StatusLineTermNc guifg=#002f2f guibg=#8fafcf gui=NONE
                \ ctermfg=11 ctermbg=bg cterm=NONE
" }}}2
highlight VertSplit guifg=#6f6f6f guibg=bg gui=bold
          \ ctermfg=132 ctermbg=233 cterm=bold
highlight Title guifg=#2f7f8f guibg=bg gui=NONE
          \ ctermfg=23 ctermbg=bg cterm=bold
" Toolbar "{{{2
highlight ToolbarButton guifg=fg guibg=#2f2f3f gui=bold
          \ ctermfg=23 ctermbg=bg cterm=bold
highlight ToolbarLine guifg=fg guibg=#2f2f8f gui=NONE
          \ ctermfg=23 ctermbg=bg cterm=bold
" visual "{{{2
highlight Visual guifg=#cfcfcf guibg=#1f2f3f gui=NONE
          \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f2f5f gui=underline,bold
          \ ctermfg=250 ctermbg=24 cterm=bold,underline
" }}}2
highlight WarningMsg guifg=#3f0f1f guibg=#af2f5f gui=underline
          \ ctermfg=88 ctermbg=125 cterm=NONE
highlight WildMenu guifg=#cfcfcf guibg=#0f1f3f gui=underline
          \ ctermfg=250 ctermbg=17 cterm=underline
" fold "{{{2
highlight Folded guifg=#8f8f8f guibg=#1f1f1f gui=NONE
          \ ctermfg=242 ctermbg=233 cterm=NONE
highlight FoldColumn guifg=#2f5f5f guibg=#1a1a1f gui=bold
          \ ctermfg=25 ctermbg=233 cterm=bold

" diff "{{{2
highlight DiffAdd guifg=fg guibg=#0f5f3f gui=NONE
          \ ctermfg=fg ctermbg=35 cterm=NONE
highlight DiffChange guifg=fg guibg=#cf3f1f gui=NONE
          \ ctermfg=fg ctermbg=130 cterm=NONE
highlight DiffDelete guifg=fg guibg=#5f0f3f gui=NONE
          \ ctermfg=fg ctermbg=88 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
"}}}2
highlight SignColumn guifg=#f697af guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#a98fc9 guibg=bg gui=NONE
          \ ctermfg=126 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#3f5fcf guibg=bg gui=NONE
          \ ctermfg=27 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#5fcf8f guibg=bg gui=NONE
          \ ctermfg=35 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#cfbf5f guibg=bg gui=NONE
          \ ctermfg=190 ctermbg=bg cterm=NONE

" pmenu "{{{2
highlight Pmenu guifg=#afafaf guibg=#000000 gui=NONE
          \ ctermfg=253 ctermbg=16 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#0f0f2f gui=NONE
          \ ctermfg=253 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=fg guibg=#0f0f1f gui=NONE
          \ ctermfg=fg ctermbg=232 cterm=NONE
highlight PmenuThumb guifg=fg guibg=#2f5f3f gui=NONE
          \ ctermfg=fg ctermbg=16 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#5f5f5f guibg=#dfdfdf gui=underline
          \ ctermfg=236 ctermbg=252 cterm=underline
highlight TabLineSel guifg=#cfcfcf guibg=#000f1f gui=NONE
          \ ctermfg=252 ctermbg=232 cterm=NONE
highlight TabLineFill guifg=#5f0f2f guibg=#dfdfdf gui=bold,underline
          \ ctermfg=88 ctermbg=252 cterm=bold,underline
" tabpanel "{{{2
highlight TabPanel guifg=#cfcfcf guibg=#0f0f0f gui=None
          \ ctermfg=236 ctermbg=252 cterm=underline
highlight TabPanelSel guifg=#cfcfcf guibg=#0f2f5f gui=NONE
          \ ctermfg=252 ctermbg=232 cterm=NONE
highlight TabPanelFill guifg=#cfcfcf guibg=#0f0f1f gui=NONE
          \ ctermfg=88 ctermbg=252 cterm=bold,underline

" cursor "{{{2
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
          \ ctermfg=bg ctermbg=fg cterm=NONE
highlight CursorLine guifg=NONE guibg=#050a0f gui=NONE
          \ ctermfg=NONE ctermbg=232 cterm=NONE
highlight Cursor guifg=#000000 guibg=#2f7f5f gui=NONE
          \ ctermfg=16 ctermbg=35 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af2f3f gui=NONE
          \ ctermfg=NONE ctermbg=125 cterm=NONE
endif

"}}}2

" #- syntax highlighting groups -# "{{{1
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
          \ ctermfg=NONE ctermbg=252 cterm=NONE
highlight MatchParen guifg=#3f2f5f guibg=#8f8fff gui=bold,underline
          \ ctermfg=53 ctermbg=57 cterm=bold,underline
highlight comment guifg=#5f8fcf guibg=bg gui=NONE
          \ ctermfg=26 ctermbg=bg cterm=NONE
highlight Constant guifg=#5fcf8f guibg=bg gui=NONE
          \ ctermfg=47 ctermbg=bg cterm=NONE
highlight Special guifg=#afafcf guibg=bg gui=NONE
          \ ctermfg=250 ctermbg=bg cterm=NONE
highlight Identifier guifg=#ffcfaf guibg=bg gui=NONE
          \ ctermfg=227 ctermbg=bg cterm=NONE
highlight Statement guifg=#cf8fff guibg=bg gui=NONE
          \ ctermfg=135 ctermbg=bg cterm=NONE
highlight PreProc guifg=#cf5f8f guibg=bg gui=NONE
          \ ctermfg=168 ctermbg=bg cterm=NONE
highlight type guifg=#5fffaf guibg=bg gui=NONE
          \ ctermfg=49 ctermbg=bg cterm=NONE
highlight underlined guifg=#0f7f3f guibg=bg gui=underline
          \ ctermfg=35 ctermbg=bg cterm=underline
highlight Ignore guifg=#7f7f7f guibg=bg gui=bold
          \ ctermfg=242 ctermbg=bg cterm=bold
highlight Error guifg=#5f0f2f guibg=#af2f4f gui=NONE
          \ ctermfg=88 ctermbg=161 cterm=NONE
highlight Todo guifg=#5f5f5f guibg=#dfdfdf gui=bold,underline
          \ ctermfg=234 ctermbg=252 cterm=bold,underline
highlight string guifg=#af1f3f guibg=bg gui=NONE
          \ ctermfg=197 ctermbg=bg cterm=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


