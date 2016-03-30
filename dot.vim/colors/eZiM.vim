" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" This colorschem is origin, my colorscheme Jager

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
let g:colors_name = "eZiM"

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#000000 guibg=#fcf5ff gui=NONE
          \ ctermfg=235 ctermbg=225 cterm=NONE
highlight SpecialKey guifg=#7f5f8f guibg=bg gui=NONE
          \ ctermfg=93 ctermbg=bg cterm=NONE
highlight NonText guifg=#8f3f5f guibg=bg gui=bold
          \ ctermfg=89 ctermbg=bg cterm=bold
highlight Directory guifg=#3f2f5f guibg=NONE gui=bold
          \ ctermfg=18 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#2f0f1f guibg=#af0f3f gui=underline
          \ ctermfg=52 ctermbg=125 cterm=underline
" search "{{{2
highlight IncSearch guifg=#6f2f4f guibg=#bf5f8f gui=bold,underline
          \ ctermfg=88 ctermbg=169 cterm=bold,underline
highlight Search guifg=#0f3f6f guibg=#5f8fbf gui=bold,underline
          \ ctermfg=18 ctermbg=26 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#1f2f1f guibg=#2f9f6f gui=underline
          \ ctermfg=22 ctermbg=35 cterm=underline
highlight ModeMsg guifg=#1f1f2f guibg=#2f6f9f gui=underline
          \ ctermfg=17 ctermbg=25 cterm=underline
highlight LineNr guifg=#9f4f7f guibg=NONE gui=NONE
          \ ctermfg=132 ctermbg=NONE cterm=NONE
highlight CursorLineNr guifg=#9f4f7f guibg=NONE gui=NONE
          \ ctermfg=132 ctermbg=NONE cterm=bold
highlight Question guifg=#1f2f2f guibg=#3f9f9f gui=underline
          \ ctermfg=22 ctermbg=35 cterm=underline
" Statusline "{{{2
highlight StatusLine guifg=#efefef guibg=#1f2f3f gui=NONE
          \ ctermfg=250 ctermbg=235 cterm=NONE
highlight StatusLineNC guifg=#5f5f7f guibg=#cfcfef gui=NONE
          \ ctermfg=245 ctermbg=252 cterm=NONE
" }}}2
highlight VertSplit guifg=#6f6f6f guibg=#dfdfdf gui=bold
          \ ctermfg=240 ctermbg=253 cterm=bold
highlight Title guifg=#2f7f8f guibg=bg gui=bold,underline
          \ ctermfg=29 ctermbg=bg cterm=bold,underline
" Visual "{{{2
highlight Visual guifg=#efefef guibg=#2f3f5f gui=NONE
          \ ctermfg=253 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#2f3f7f gui=underline,bold
          \ ctermfg=255 ctermbg=26 cterm=underline,bold
" }}}2
highlight WarningMsg guifg=#2f0f00 guibg=#bf8f2f gui=underline
          \ ctermfg=232 ctermbg=172 cterm=underline
highlight WildMenu guifg=#1f5f3f guibg=#3faf8f gui=underline
          \ ctermfg=22 ctermbg=35 cterm=bold,underline
" Fold "{{{2
highlight Folded guifg=#1f1f1f guibg=#efe5ef gui=NONE
          \ ctermfg=244 ctermbg=252 cterm=NONE
highlight FoldColumn guifg=#4f4f5f guibg=#fff5ff gui=bold
          \ ctermfg=125 ctermbg=225 cterm=bold


" Diff "{{{2
highlight DiffAdd guifg=fg guibg=#afffcf gui=NONE
          \ ctermfg=fg ctermbg=84 cterm=NONE
highlight DiffChange guifg=fg guibg=#ffffcf gui=NONE
          \ ctermfg=fg ctermbg=227 cterm=NONE
highlight DiffDelete guifg=fg guibg=#ffafcf gui=NONE
          \ ctermfg=fg ctermbg=206 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2
highlight SignColumn guifg=fg guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg term=NONE
" Spell "{{{2
highlight SpellBad guifg=#593079 guibg=bg gui=NONE
          \ ctermfg=161 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#304379 guibg=bg gui=NONE
          \ ctermfg=57 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#307962 guibg=bg gui=NONE
          \ ctermfg=35 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#796c30 guibg=bg gui=NONE
          \ ctermfg=94 ctermbg=bg cterm=NONE


" Pmenu "{{{2
highlight Pmenu guifg=fg guibg=#efdfff gui=NONE
          \ ctermfg=235 ctermbg=252 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#2f2f3f gui=NONE
          \ ctermfg=15 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=fg guibg=#cfafbf gui=NONE
          \ ctermfg=fg ctermbg=95 cterm=NONE
highlight PmenuThumb guifg=fg guibg=#dfcfef gui=NONE
          \ ctermfg=fg ctermbg=105 cterm=NONE



" Tabline "{{{2
highlight TabLine guifg=#afafaf guibg=#0f1f2f gui=NONE
          \ ctermfg=250 ctermbg=234 cterm=NONE
highlight TabLineSel guifg=#cfcfcf guibg=#0f2f5f gui=NONE
          \ ctermfg=250 ctermbg=16 cterm=NONE
highlight TabLineFill guifg=#af2f5f guibg=#0f1f2f gui=NONE
          \ ctermfg=125 ctermbg=234 cterm=NONE


" cursor "{{{2
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
          \ ctermfg=NONE ctermbg=224 cterm=NONE
highlight CursorLine guifg=NONE guibg=#ffeff5 gui=NONE
          \ ctermfg=NONE ctermbg=218 cterm=NONE
highlight Cursor guifg=#000000 guibg=#6faf8f gui=NONE
          \ ctermfg=NONE ctermbg=23 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af2f3f gui=NONE
          \ ctermfg=0 ctermbg=14 cterm=NONE
endif


" }}}2


" #- syntax highlighting groups -# "{{{1
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
          \ ctermfg=NONE ctermbg=12 cterm=NONE
highlight MatchParen guifg=#3f3f8f guibg=#8f8fff gui=bold,underline
          \ ctermfg=17 ctermbg=105 cterm=bold,underline
highlight comment guifg=#3f4f8f guibg=bg gui=NONE
          \ ctermfg=25 ctermbg=bg cterm=NONE
highlight Constant guifg=#1f6f3f guibg=bg gui=NONE
          \ ctermfg=29 ctermbg=bg cterm=NONE
highlight Special guifg=#5f5f7f guibg=bg gui=NONE
          \ ctermfg=57 ctermbg=bg cterm=NONE
highlight Identifier guifg=#8f5f2f guibg=bg gui=NONE
          \ ctermfg=172 ctermbg=bg cterm=NONE
highlight Statement guifg=#3f1f5f guibg=bg gui=NONE
          \ ctermfg=54 ctermbg=bg cterm=NONE
highlight PreProc guifg=#7f0f3f guibg=bg gui=NONE
          \ ctermfg=125 ctermbg=bg cterm=NONE
highlight type guifg=#0f5f3f guibg=bg gui=NONE
          \ ctermfg=29 ctermbg=bg cterm=NONE
highlight underlined guifg=#0f7f3f guibg=bg gui=underline
          \ ctermfg=22 ctermbg=bg cterm=underline
highlight Ignore guifg=#7f7f7f guibg=bg gui=bold
          \ ctermfg=247 ctermbg=bg cterm=NONE
highlight Error guifg=#8f1f3f guibg=#ff5faf gui=NONE
          \ ctermfg=88 ctermbg=165 cterm=bold,underline
highlight Todo guifg=#8f8fff guibg=#dfdfdf gui=bold,underline
          \ ctermfg=242 ctermbg=252 cterm=bold,underline
highlight string guifg=#af1f3f guibg=bg gui=NONE
          \ ctermfg=125 ctermbg=bg cterm=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


