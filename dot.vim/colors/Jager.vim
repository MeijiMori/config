" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}"
" highlighting ZenkakuSpace /　/
" like a barcerk fuler

" #- Reset-# "{{{1
" First remove all existing highlighting.
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = "Jager"

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#000000 guibg=#fff0fa gui=NONE
          \ ctermfg=232 ctermbg=225 cterm=NONE
highlight SpecialKey guifg=#7f5f8f guibg=bg gui=NONE
          \ ctermfg=99 ctermbg=bg cterm=NONE
highlight NonText guifg=#3f7f5f guibg=bg gui=bold
          \ ctermfg=2 ctermbg=bg cterm=bold
highlight Directory guifg=#1f4f6f guibg=NONE gui=bold
          \ ctermfg=26 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#cf2f4f guibg=#ffdfdf gui=NONE
          \ ctermfg=9 ctermbg=182 cterm=NONE
" search "{{{2
highlight IncSearch guifg=#5f1f3f guibg=#c3afc5 gui=bold,underline
          \ ctermfg=89 ctermbg=183 cterm=bold,underline
highlight Search guifg=#0f1f5f guibg=#afcfcf gui=bold,underline
          \ ctermfg=21 ctermbg=75 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#2f8f5f guibg=#dfffdf gui=NONE
          \ ctermfg=36 ctermbg=121 cterm=underline
highlight ModeMsg guifg=#2f4f8f guibg=#dfdfff gui=NONE
          \ ctermfg=25 ctermbg=153 cterm=underline
highlight LineNr guifg=#9f4f7f guibg=NONE gui=NONE
          \ ctermfg=132 ctermbg=NONE cterm=NONE
highlight CursorLineNr guifg=#af0f5f guibg=NONE gui=NONE
          \ ctermfg=89 ctermbg=NONE cterm=NONE
highlight Question guifg=#1faf5f guibg=#dfffdf gui=NONE
          \ ctermfg=41 ctermbg=121 cterm=NONE
" Statusline "{{{2
highlight StatusLine guifg=#efefef guibg=#1f2f3f gui=NONE
          \ ctermfg=254 ctermbg=17 cterm=NONE
highlight StatusLineNC guifg=#7f5f6f guibg=#cfafaf gui=NONE
          \ ctermfg=131 ctermbg=181 cterm=NONE
" }}}2
highlight VertSplit guifg=#6f6f9f guibg=#dfcfff gui=bold
          \ ctermfg=69 ctermbg=183 cterm=bold
highlight Title guifg=#2f7f8f guibg=bg gui=NONE
          \ ctermfg=35 ctermbg=bg cterm=bold,underline
" Visual "{{{2
highlight Visual guifg=#efefef guibg=#2f3f5f gui=NONE
          \ ctermfg=253 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#2f3f7f gui=underline,bold
          \ ctermfg=250 ctermbg=19 cterm=underline,bold
" }}}2
highlight WarningMsg guifg=#cf2f4f guibg=#ffdfdf gui=NONE
          \ ctermfg=9 ctermbg=219 cterm=underline
highlight WildMenu guifg=#cfcfcf guibg=#0f1f3f gui=bold
          \ ctermfg=254 ctermbg=17 cterm=bold
" Fold "{{{2
highlight Folded guifg=#1f1f1f guibg=#efe5ef gui=NONE
          \ ctermfg=235 ctermbg=189 cterm=NONE
highlight FoldColumn guifg=#3f3f3f guibg=#fff5ff gui=bold
          \ ctermfg=238 ctermbg=7 cterm=bold

" Diff "{{{2
highlight DiffAdd guifg=fg guibg=#afffcf gui=NONE
          \ ctermfg=fg ctermbg=49 cterm=NONE
highlight DiffChange guifg=fg guibg=#ffffcf gui=NONE
          \ ctermfg=fg ctermbg=229 cterm=NONE
highlight DiffDelete guifg=fg guibg=#ffafcf gui=NONE
          \ ctermfg=fg ctermbg=219 cterm=NONE
highlight DiffText guifg=#6f6f6f guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2
highlight SignColumn guifg=#a6577f guibg=bg gui=NONE
          \ ctermfg=134 ctermbg=NONE cterm=NONE
" Spell "{{{2
highlight SpellBad guifg=#593079 guibg=bg gui=NONE
          \ ctermfg=99 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#304379 guibg=bg gui=NONE
          \ ctermfg=27 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#307962 guibg=bg gui=NONE
          \ ctermfg=29 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#796c30 guibg=bg gui=NONE
          \ ctermfg=229 ctermbg=bg cterm=NONE

" Pmenu "{{{2
highlight Pmenu guifg=fg guibg=#efdfff gui=NONE
          \ ctermfg=fg ctermbg=225 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#2f2f3f gui=NONE
          \ ctermfg=15 ctermbg=233 cterm=NONE
highlight PmenuSbar guifg=fg guibg=#cfafbf gui=NONE
          \ ctermfg=fg ctermbg=212 cterm=NONE
highlight PmenuThumb guifg=fg guibg=#dfcfef gui=NONE
          \ ctermfg=fg ctermbg=183 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#afafaf guibg=#0f1f2f gui=NONE
          \ ctermfg=248 ctermbg=233 cterm=NONE
highlight TabLineSel guifg=#cfcfcf guibg=#0f2f5f gui=NONE
          \ ctermfg=253 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#af2f5f guibg=#0f1f2f gui=NONE
          \ ctermfg=89 ctermbg=16 cterm=NONE

" cursor "{{{2
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
          \ ctermfg=fg ctermbg=213 cterm=NONE
highlight CursorLine guifg=NONE guibg=#ffeff5 gui=NONE
          \ ctermfg=NONE ctermbg=225 cterm=NONE
highlight Cursor guifg=#000000 guibg=#6faf8f gui=NONE
          \ ctermfg=fg ctermbg=79 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af2f3f gui=NONE
          \ ctermfg=16 ctermbg=161 cterm=NONE
endif
"}}}2

" #- Syntax highlighting groups -# "{{{1
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight MatchParen guifg=#000000 guibg=#8f8fff gui=bold
          \ ctermfg=18 ctermbg=25 cterm=bold,underline
highlight comment guifg=#3f4f8f guibg=bg gui=NONE
          \ ctermfg=25 ctermbg=bg cterm=NONE
highlight Constant guifg=#1f6f3f guibg=bg gui=NONE
          \ ctermfg=23 ctermbg=bg cterm=NONE
highlight Special guifg=#5f5f7f guibg=bg gui=NONE
          \ ctermfg=63 ctermbg=bg cterm=NONE
highlight Identifier guifg=#8f5f2f guibg=bg gui=NONE
          \ ctermfg=94 ctermbg=bg cterm=NONE
highlight Statement guifg=#3f1f5f guibg=bg gui=NONE
          \ ctermfg=17 ctermbg=bg cterm=NONE
highlight PreProc guifg=#7f0f3f guibg=bg gui=NONE
          \ ctermfg=125 ctermbg=bg cterm=NONE
highlight type guifg=#0f5f3f guibg=bg gui=NONE
          \ ctermfg=22 ctermbg=bg cterm=NONE
highlight underlined guifg=#0f7f3f guibg=bg gui=underline
          \ ctermfg=29 ctermbg=bg cterm=underline
highlight Ignore guifg=#7f7f7f guibg=bg gui=NONE
          \ ctermfg=102 ctermbg=bg cterm=NONE
highlight Error guifg=#af1f3f guibg=#ffdfdf gui=NONE
          \ ctermfg=197 ctermbg=219 cterm=NONE
highlight Todo guifg=#8f8fff guibg=#dfdfdf gui=bold,underline
          \ ctermfg=63 ctermbg=189 cterm=bold,underline
highlight string guifg=#af1f3f guibg=bg gui=NONE
          \ ctermfg=141 ctermbg=bg cterm=NONE

" #- User -# "{{{1
highlight User1 guifg=#afafaf guibg=#2f2f2f gui=NONE
                \ ctermfg=251 ctermbg=236 cterm=NONE
highlight User2 guifg=#0f0f3f guibg=#0f3f8f gui=NONE
                \ ctermfg=17 ctermbg=27 cterm=NONE
highlight User3 guifg=#0f3f0f guibg=#0f8f3f gui=NONE
                \ ctermfg=28 ctermbg=35 cterm=NONE
highlight User4 guifg=#3f2f0f guibg=#8f3f0f gui=NONE
                \ ctermfg=105 ctermbg=234 cterm=NONE
highlight User5 guifg=#3f0f0f guibg=#8f0f3f gui=NONE
                \ ctermfg=88 ctermbg=125 cterm=NONE
highlight User6 guifg=#5f5f0f guibg=#8f8f0f gui=NONE
                \ ctermfg=94 ctermbg=229 cterm=NONE
highlight User7 guifg=#5f0f5f guibg=#8f3f8f gui=NONE
                \ ctermfg=88 ctermbg=201 cterm=NONE
highlight User8 guifg=#3f5f3f guibg=#8f8f5f gui=NONE
                \ ctermfg=130 ctermbg=222 cterm=NONE
highlight User9 guifg=#5f5f5f guibg=#afafcf gui=NONE
                \ ctermfg=244 ctermbg=189 cterm=NONE
" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
