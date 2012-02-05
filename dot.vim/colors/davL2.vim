" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" White and Black


"}}}1
" #- reset -# "{{{1
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = "davL2"

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#000000 gui=NONE
highlight SpecialKey guifg=#6f2f6f guibg=bg gui=NONE
highlight NonText guifg=#5f33ff guibg=bg gui=NONE
highlight Directory guifg=#1f2f5f guibg=bg gui=bold
highlight ErrorMsg guifg=#cf2f4f guibg=bg gui=NONE
" Search "{{{2
highlight IncSearch guifg=#000000 guibg=#af2f35 gui=bold
highlight Search guifg=#000000 guibg=#2f3faf gui=bold
"}}}2
highlight MoreMsg guifg=#2f4f7f guibg=#cfcfff gui=NONE
highlight ModeMsg guifg=#2faf8f guibg=#cfffcf gui=NONE
highlight LineNr guifg=#3f7faf guibg=NONE gui=NONE
highlight Question guifg=#2faf6f guibg=#cfffff gui=NONE
" Statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#2f2f4f gui=NONE
highlight StatusLineNC guifg=#6f6f6f guibg=#cfbfbf gui=NONE
" }}}2
highlight VertSplit guifg=bg guibg=bg gui=bold
highlight Title guifg=#2f7f86 guibg=bg gui=NONE
" Visual "{{{2
highlight Visual guifg=#ffffff guibg=#1f2f5f gui=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#3f4f7f gui=underline,bold
" }}}2
highlight WarningMsg guifg=#cf2f4f guibg=bg gui=NONE
highlight WildMenu guifg=#ffffff guibg=#0f2f5f gui=NONE
" Fold "{{{2
highlight Folded guifg=#2f3f8f guibg=#00000f gui=NONE
highlight FoldColumn guifg=#0f1f5f guibg=#00000f gui=bold
" }}}2
" Diff "{{{2
highlight DiffAdd guifg=fg guibg=#bfffbf gui=NONE
highlight DiffChange guifg=fg guibg=#ffffbf gui=NONE
highlight DiffDelete guifg=fg guibg=#ffbfbf gui=bold
highlight DiffText guifg=fg guibg=bg gui=NONE
" }}}2
highlight SignColumn guifg=#7f2f4f guibg=bg gui=NONE
" Spell "{{{2
highlight SpellBad guifg=#af3f5f guibg=bg gui=NONE
highlight SpellCap guifg=#3f4f7f guibg=bg gui=NONE
highlight SpellRare guifg=#3f7f6f guibg=bg gui=NONE
highlight SpellLocal guifg=#5faf3f guibg=bg gui=NONE
" }}}2
" Pmenu "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#cfcfff gui=NONE
highlight PmenuSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
highlight PmenuSbar guifg=#cccccc guibg=#2f2f2f gui=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#6f2f4f gui=NONE
" }}}2
" tabline "{{{2
" highlight TabLine guifg=#5f5f5f guibg=#cfcfcf gui=NONE
" highlight TabLineSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
" highlight TabLineFill guifg=#5f5f5f guibg=#afafaf gui=NONE
highlight TabLine guifg=#cf3f8f guibg=#0f1f3f gui=NONE
highlight TabLineSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
highlight TabLineFill guifg=#3f5fff guibg=#0f1f3f gui=NONE
"}}}2
" cursor "{{{2
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
highlight CursorLine guifg=NONE guibg=#0f0f0f gui=NONE
highlight Cursor guifg=#cfcfcf guibg=#1f2f6f gui=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM gui=NONE guifg=#000000 guibg=#af4f5f
endif

" }}}2


" #- Syntax highlighting groups -# "{{{1
highlight lCursor guifg=#2f2f2f guibg=#7ea3a6 gui=NONE
highlight MatchParen guifg=#0f0f0f guibg=#2f2f8d gui=bold
highlight comment guifg=#1f4faf guibg=bg gui=NONE
highlight Constant guifg=#1f5f3f guibg=bg gui=NONE
highlight Special guifg=#2f2f5f guibg=bg gui=NONE
highlight Identifier guifg=#9f2f3f guibg=bg gui=NONE
highlight Statement guifg=#4f5faf guibg=bg gui=NONE
highlight PreProc guifg=#9f2faf guibg=bg gui=NONE
highlight type guifg=#7f2f7f guibg=bg gui=NONE
highlight underlined guifg=#3f5faf guibg=#cfcfff gui=underline,bold
highlight Ignore guifg=#1f2f3f guibg=bg gui=bold
highlight Error guifg=#a04f7e guibg=bg gui=NONE
highlight Todo guifg=#af2f5f guibg=#afafff gui=underline,bold
highlight String guifg=#8f4f2f guibg=bg gui=NONE


" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
