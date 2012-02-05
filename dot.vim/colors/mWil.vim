" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date

" #- First remove all existing highlighting. -# "{{{1
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = "mWil"

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#000000 guibg=#ffffff gui=NONE
highlight SpecialKey guifg=#6f2f6f guibg=bg gui=NONE
highlight NonText guifg=#3f7faf guibg=bg gui=bold
highlight Directory guifg=#0f6faf guibg=bg gui=NONE
highlight ErrorMsg guifg=#cf2f4f guibg=NONE gui=NONE
highlight IncSearch guifg=#000000 guibg=#dfaff5 gui=NONE
highlight Search guifg=#000000 guibg=#afcfff gui=NONE
highlight MoreMsg guifg=#4f7faf guibg=#efefef gui=NONE
highlight ModeMsg guifg=#2faf8f guibg=#efefef gui=NONE
highlight LineNr guifg=#afaf8f guibg=NONE gui=NONE
highlight Question guifg=#2faf6f guibg=bg gui=NONE
" Statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#2f2f4f gui=NONE
highlight StatusLineNC guifg=#6f6f6f guibg=#c4b2ab gui=NONE
" }}}2
highlight VertSplit guifg=#6f6f6f guibg=#dfdfdf gui=NONE
highlight Title guifg=#2f7f86 guibg=bg gui=NONE
" Visual "{{{2
highlight Visual guifg=#ffffff guibg=#1f2f5f gui=NONE
highlight VisualNOS guifg=#ffffff guibg=#3f4f7f gui=underline,bold
" }}}2
highlight WarningMsg guifg=#cf2f4f guibg=bg gui=NONE
highlight WildMenu guifg=#ffffff guibg=#0f2f5f gui=NONE
" Fold "{{{2
highlight Folded guifg=#3f3f3f guibg=#efdfdf gui=NONE
highlight FoldColumn guifg=#2f2f8f guibg=#efdfdf gui=bold

" diff "{{{2
highlight DiffAdd guifg=#1f4fbf guibg=bg gui=NONE
highlight DiffChange guifg=#af2f5f guibg=bg gui=NONE
highlight DiffDelete guifg=#a62c74 guibg=bg gui=bold
highlight DiffText guifg=#4f4f4f guibg=bg gui=NONE
" }}}
highlight SignColumn guifg=#7f2f4f guibg=bg gui=NONE
" Spell "{{{2
highlight SpellBad guifg=#5f3f7f guibg=bg gui=NONE
highlight SpellCap guifg=#3f4f7f guibg=bg gui=NONE
highlight SpellRare guifg=#3f7f6f guibg=bg gui=NONE
highlight SpellLocal guifg=#5faf3f guibg=bg gui=NONE

" Pmenu "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#dfdfdf gui=NONE
highlight PmenuSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
highlight PmenuSbar guifg=#cccccc guibg=#2f2f2f gui=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#6f2f4f gui=NONE

" tabline "{{{2
highlight TabLine guifg=#5f5f5f guibg=#cfcfcf gui=NONE
highlight TabLineSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
highlight TabLineFill guifg=#5f5f5f guibg=#afafaf gui=NONE

" cursor "{{{2
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
highlight CursorLine guifg=NONE guibg=#dfefff gui=NONE
highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
highlight Cursor guifg=#000000 guibg=#1faf8f gui=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime')
  highlight CursorIM gui=NONE guifg=#000000 guibg=#af4f5f
endif

" }}}2

" #- syntax highlighting groups -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
highlight MatchParen guifg=#373737 guibg=#2f63ad gui=bold
highlight comment guifg=#1f4faf guibg=bg gui=NONE
highlight Constant guifg=#1f8f4f guibg=bg gui=NONE
highlight Special guifg=#1f3f8f guibg=bg gui=NONE
highlight Identifier guifg=#2f9f3f guibg=bg gui=NONE
highlight Statement guifg=#1f5f7f guibg=bg gui=NONE
highlight PreProc guifg=#bf51b7 guibg=bg gui=NONE
highlight type guifg=#2f7f7f guibg=bg gui=NONE
highlight underlined guifg=#3faf6f guibg=bg gui=underline
highlight Ignore guifg=#7f7f7f guibg=bg gui=NONE
highlight Error guifg=#a04f7e guibg=#ffefff gui=NONE
highlight Todo guifg=#af2f5f guibg=#efefef gui=bold
highlight string guifg=#af4f8f guibg=bg gui=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
