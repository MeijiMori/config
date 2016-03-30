" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" like a barcerk fuler

" #- reset-# "{{{1
" First remove all existing highlighting.
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = "JsIml"

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#000000 guibg=#fcf5ff gui=NONE
          \ ctermfg=0 ctermbg=231 cterm=NONE
highlight SpecialKey guifg=#7f5f8f guibg=bg gui=NONE
          \ ctermfg=165 ctermbg=bg cterm=NONE
highlight NonText guifg=#3f7f5f guibg=bg gui=bold
          \ ctermfg=35 ctermbg=bg cterm=bold
highlight Directory guifg=#1f4f6f guibg=NONE gui=bold
          \ ctermfg=17 ctermbg=NONE cterm=bold
highlight ErrorMsg guifg=#cf2f4f guibg=#ffdfdf gui=NONE
          \ ctermfg=197 ctermbg=213 cterm=underline
" search "{{{
highlight IncSearch guifg=#0f0f0f guibg=#c3afc5 gui=bold
          \ ctermfg=161 ctermbg=170 cterm=bold,underline
highlight Search guifg=#0f0f0f guibg=#afcfcf gui=bold
          \ ctermfg=25 ctermbg=147 cterm=bold,underline
"}}}
highlight MoreMsg guifg=#2f8f5f guibg=#dfffdf gui=NONE
          \ ctermfg=41 ctermbg=123 cterm=underline
highlight ModeMsg guifg=#2f4f8f guibg=#dfdfff gui=NONE
          \ ctermfg=33 ctermbg=153 cterm=underline
highlight LineNr guifg=#9f4f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight CursorLineNr guifg=#9f4f7f guibg=NONE gui=NONE
          \ ctermfg=197 ctermbg=189 cterm=bold
highlight Question guifg=#1faf5f guibg=#dfffdf gui=NONE
          \ ctermfg=22 ctermbg=121 cterm=underline
" Statusline "{{{
highlight StatusLine guifg=#efefef guibg=#1f2f3f gui=NONE
          \ ctermfg=255 ctermbg=232 cterm=NONE
highlight StatusLineNC guifg=#7f5f6f guibg=#cfafaf gui=NONE
          \ ctermfg=131 ctermbg=181 cterm=NONE
" }}}
highlight VertSplit guifg=#6f6f6f guibg=#dfdfdf gui=bold
          \ ctermfg=237 ctermbg=252 cterm=bold
highlight Title guifg=#2f7f8f guibg=bg gui=NONE
          \ ctermfg=32 ctermbg=bg cterm=NONE
" Visual "{{{
highlight Visual guifg=#efefef guibg=#2f3f5f gui=NONE
          \ ctermfg=189 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#2f3f7f gui=underline,bold
          \ ctermfg=250 ctermbg=17 cterm=bold,underline
" }}}
highlight WarningMsg guifg=#cf2f4f guibg=#ffdfdf gui=NONE
          \ ctermfg=125 ctermbg=219 cterm=underline
highlight WildMenu guifg=#cfcfcf guibg=#0f1f3f gui=bold
          \ ctermfg=255 ctermbg=17 cterm=bold,underline
" Fold "{{{
highlight Folded guifg=#1f1f1f guibg=#efe5ef gui=NONE
          \ ctermfg=235 ctermbg=250 cterm=NONE
highlight FoldColumn guifg=#3f3f3f guibg=#fff5ff gui=bold
          \ ctermfg=233 ctermbg=255 cterm=bold
" }}}
" Diff "{{{
highlight DiffAdd guifg=fg guibg=#afffcf gui=NONE
          \ ctermfg=fg ctermbg=156 cterm=NONE
highlight DiffChange guifg=fg guibg=#ffffcf gui=NONE
          \ ctermfg=fg ctermbg=228 cterm=NONE
highlight DiffDelete guifg=fg guibg=#ffafcf gui=NONE
          \ ctermfg=fg ctermbg=205 cterm=NONE
highlight DiffText guifg=#6f6f6f guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}
highlight SignColumn guifg=#a6577f guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
" Spell "{{{
highlight SpellBad guifg=#593079 guibg=bg gui=NONE
          \ ctermfg=54 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#304379 guibg=bg gui=NONE
          \ ctermfg=20 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#307962 guibg=bg gui=NONE
          \ ctermfg=29 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#796c30 guibg=bg gui=NONE
          \ ctermfg=136 ctermbg=bg cterm=NONE
" }}}
" Pmenu "{{{
highlight Pmenu guifg=fg guibg=#efdfff gui=NONE
          \ ctermfg=232 ctermbg=250 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#2f2f3f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=fg guibg=#cfafbf gui=NONE
          \ ctermfg=fg ctermbg=132 cterm=NONE
highlight PmenuThumb guifg=fg guibg=#dfcfef gui=NONE
          \ ctermfg=fg ctermbg=105 cterm=NONE
" }}}
" tabline "{{{
highlight TabLine guifg=#afafaf guibg=#0f1f2f gui=NONE
          \ ctermfg=250 ctermbg=232 cterm=NONE
highlight TabLineSel guifg=#cfcfcf guibg=#0f2f5f gui=NONE
          \ ctermfg=250 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#af2f5f guibg=#0f1f2f gui=NONE
          \ ctermfg=196 ctermbg=232 cterm=NONE
"}}}
" cursor "{{{
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
          \ ctermfg=bg ctermbg=fg cterm=NONE
highlight CursorLine guifg=NONE guibg=#ffeff5 gui=NONE
          \ ctermfg=NONE ctermbg=224 cterm=NONE
highlight ColorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
          \ ctermfg=bg ctermbg=fg cterm=NONE
highlight Cursor guifg=#000000 guibg=#6faf8f gui=NONE
          \ ctermfg=0 ctermbg=29 cterm=NONE
" IME status color for cursor "{{{
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af2f3f gui=NONE
          \ ctermfg=0 ctermbg=89 cterm=NONE
endif
"}}}
"}}}
" }}}
" #- syntax highlighting groups -# "{{{1
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
          \ ctermfg=fg ctermbg=39 cterm=NONE
highlight MatchParen guifg=#000000 guibg=#8f8fff gui=bold
          \ ctermfg=232 ctermbg=26 cterm=bold,underline
highlight comment guifg=#3f4f8f guibg=bg gui=NONE
          \ ctermfg=25 ctermbg=bg cterm=NONE
highlight Constant guifg=#1f6f3f guibg=bg gui=NONE
          \ ctermfg=28 ctermbg=bg cterm=NONE
highlight Special guifg=#5f5f7f guibg=bg gui=NONE
          \ ctermfg=147 ctermbg=bg cterm=NONE
highlight Identifier guifg=#8f5f2f guibg=bg gui=NONE
          \ ctermfg=214 ctermbg=bg cterm=NONE
highlight Statement guifg=#3f1f5f guibg=bg gui=NONE
          \ ctermfg=53 ctermbg=bg cterm=NONE
highlight PreProc guifg=#7f0f3f guibg=bg gui=NONE
          \ ctermfg=89 ctermbg=bg cterm=NONE
highlight type guifg=#0f5f3f guibg=bg gui=NONE
          \ ctermfg=22 ctermbg=bg cterm=NONE
highlight underlined guifg=#0f7f3f guibg=bg gui=underline
          \ ctermfg=29 ctermbg=bg cterm=underline
highlight Ignore guifg=#7f7f7f guibg=bg gui=NONE
          \ ctermfg=235 ctermbg=bg cterm=bold
highlight Error guifg=#af1f3f guibg=#ffdfdf gui=NONE
          \ ctermfg=197 ctermbg=219 cterm=underline
highlight Todo guifg=#8f8fff guibg=#dfdfdf gui=bold,underline
          \ ctermfg=25 ctermbg=250 cterm=bold,underline
highlight string guifg=#af1f3f guibg=bg gui=NONE
          \ ctermfg=125 ctermbg=bg cterm=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
