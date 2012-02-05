﻿" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen {[(*)]}
" highlighting ZenkakuSpace /　/

" #- First remove all existing highlighting. -# "{{{1
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = "xyacs"

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#ffffff guibg=#0f0f0f gui=NONE
highlight SpecialKey guifg=#af2f5f guibg=bg gui=NONE
highlight NonText guifg=#3f7fff guibg=bg gui=bold
highlight Directory guifg=#5f8fcf guibg=bg gui=NONE
highlight ErrorMsg guifg=#cf2f4f guibg=NONE gui=NONE
highlight IncSearch guifg=#000000 guibg=#8f9fff gui=NONE
highlight Search guifg=#000000 guibg=#afcfff gui=NONE
highlight MoreMsg guifg=#4f7faf guibg=bg gui=NONE
highlight ModeMsg guifg=#2faf8f guibg=bg gui=NONE
highlight LineNr guifg=#cfcfcf guibg=NONE gui=NONE
highlight Question guifg=#2fffcf guibg=bg gui=NONE
" Statusline "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#1f1f2f gui=bold
highlight StatusLineNC guifg=#5f5f5f guibg=#0f0f1f gui=NONE
" }}}2
highlight VertSplit guifg=#6f6f6f guibg=#dfdfdf gui=NONE
highlight Title guifg=#5fcfaf guibg=bg gui=NONE
" Visual "{{{2
highlight Visual guifg=#ffffff guibg=#1f2f5f gui=NONE
highlight VisualNOS guifg=#ffffff guibg=#3f4f7f gui=underline,bold
" }}}2
highlight WarningMsg guifg=#cf2f4f guibg=bg gui=NONE
highlight WildMenu guifg=#ffffff guibg=#0f2f5f gui=NONE
" Fold "{{{2
highlight Folded guifg=#3f5faf guibg=#0f0f2f gui=NONE
highlight FoldColumn guifg=#2f2f8f guibg=#0f0f2f gui=bold

" diff "{{{2
highlight DiffAdd guifg=#7fafff guibg=bg gui=NONE
highlight DiffChange guifg=#ff8faf guibg=bg gui=NONE
highlight DiffDelete guifg=#af5faf guibg=bg gui=bold
highlight DiffText guifg=#cfcfcf guibg=bg gui=NONE
" }}}2
highlight SignColumn guifg=#cf4f8f guibg=bg gui=NONE
" Spell "{{{2
highlight SpellBad guifg=#af5fcf guibg=bg gui=NONE
highlight SpellCap guifg=#6f7fff guibg=bg gui=NONE
highlight SpellRare guifg=#6fcf9f guibg=bg gui=NONE
highlight SpellLocal guifg=#8fdf6f guibg=bg gui=NONE

" Pmenu "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#cfcfcf gui=NONE
highlight PmenuSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
highlight PmenuSbar guifg=#cccccc guibg=#2f2f2f gui=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#6f2f4f gui=NONE

"tabline "{{{2
highlight TabLine guifg=#afafaf guibg=#4f4f4f gui=NONE
highlight TabLineSel guifg=#dfdfdf guibg=#7f7f7f gui=NONE
highlight TabLineFill guifg=#5f5f5f guibg=#3f3f3f gui=NONE

" cursor "{{{2
highlight CursorColumn gui=NONE guifg=#000000 guibg=#2f2f2f
highlight CursorLine ctermbg=magenta gui=NONE guifg=NONE guibg=#2f2f3f
highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
highlight Cursor guifg=#000000 guibg=#cfcfcf gui=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime')
  highlight CursorIM gui=NONE guifg=#000000 guibg=#af2f3f
endif

" }}}2

" #- syntax highlighting groups -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
highlight MatchParen guifg=#3f3f3f guibg=#2f63ad gui=bold
highlight comment guifg=#7f7f8f guibg=bg gui=NONE
highlight Constant guifg=#5f8fff guibg=bg gui=NONE
highlight Special guifg=#bfbfbf guibg=bg gui=NONE
highlight Identifier guifg=#6fcfbf guibg=bg gui=NONE
highlight Statement guifg=#6f5fff guibg=bg gui=NONE
highlight PreProc guifg=#afffcf guibg=bg gui=NONE
highlight type guifg=#6fbfcf guibg=bg gui=NONE
highlight underlined guifg=#3faf6f guibg=bg gui=underline
highlight Ignore guifg=#7f7f7f guibg=bg gui=NONE
highlight Error guifg=#ff4f8f guibg=bg gui=NONE
highlight Todo guifg=#af2f5f guibg=#1f1f1f gui=bold,underline
highlight string guifg=#cf8faf guibg=bg gui=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
