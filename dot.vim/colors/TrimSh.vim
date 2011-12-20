" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/

" #- reset -# "{{{1
" First remove all existing highlighting.
if version > 580
  set background=dark
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = "TrimSh"

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#000000 guibg=#ffffff gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight SpecialKey guifg=#af3f5f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight NonText guifg=#2f3faf guibg=bg gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Directory guifg=#2faf8f guibg=bg gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight ErrorMsg guifg=#8f3f4f guibg=#ffafaf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" search"{{{
highlight IncSearch guifg=#000000 guibg=#cf8fff gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Search guifg=#cfcfcf guibg=#2f2f5f gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
"}}}
highlight MoreMsg guifg=#4fab6e guibg=#cfffcf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight ModeMsg guifg=#0f1f5f guibg=#afafcf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight LineNr guifg=#5f0f3f guibg=NONE gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Question guifg=#4faf7f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" Statusline "{{{
highlight StatusLine guifg=#ffffff guibg=#001f2f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" highlight StatusLineNC guifg=#5f4f4f guibg=#c3aca5 gui=NONE
"           \ ctermfg=16 ctermbg=12 cterm=NONE
highlight StatusLineNC guifg=#565234 guibg=#c0afcf gui=NONE
                \ ctermfg=10 ctermbg=1 cterm=NONE
" }}}
highlight VertSplit guifg=#6f6f6f guibg=#dfdfdf gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Title guifg=#8f5faf guibg=#dfdfff gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" Visual "{{{
highlight Visual guifg=#cfcfcf guibg=#1f1f4f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight VisualNOS guifg=#ffffff guibg=#3f4f7f gui=underline,bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
" }}}
highlight WarningMsg guifg=#ef2f3f guibg=#ffcfcf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight WildMenu guifg=#cfcfcf guibg=#2f2f6f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" Fold "{{{
" highlight Folded guifg=#2f3f6f guibg=#9fafbf gui=NONE
highlight Folded guifg=#000000 guibg=#cfbfbf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight FoldColumn guifg=#2f0f2f guibg=#ffefff gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
" }}}
" diff "{{{
highlight DiffAdd guifg=#0f0f0f guibg=#afffcf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight DiffChange guifg=#0f0f0f guibg=#ffffcf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight DiffDelete guifg=#0f0f0f guibg=#f6afcf gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight DiffText guifg=#6f6f6f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" }}}
highlight SignColumn guifg=#8f1f3f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" Spell "{{{
highlight SpellBad guifg=#5f2f7f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight SpellCap guifg=#2f3f8f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight SpellRare guifg=#2f8f5f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight SpellLocal guifg=#5f5f2f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" }}}
" Pmenu "{{{
highlight Pmenu guifg=#2f2f2f guibg=#cfcfff gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight PmenuSel guifg=#dfdfdf guibg=#3f0f3f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight PmenuSbar guifg=#cfcfcf guibg=#2f2f2f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight PmenuThumb guifg=#ffffff guibg=#6f2f4f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
" }}}
"tabline "{{{
highlight TabLine guifg=#5f5f5f guibg=#cccccc gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight TabLineSel guifg=#dfdfdf guibg=#0f2f5f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight TabLineFill guifg=#5f8f5f guibg=#aaaaaa gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
"}}}
" cursor "{{{
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight CursorLine guifg=NONE guibg=#dfffff gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#ff5588 gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Cursor guifg=#000000 guibg=#2f8f8f gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
" IME status color for cursor "{{{
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af0f2f gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
endif "}}}
" }}}

" #- syntax highlighting groups -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight MatchParen guifg=#000000 guibg=#5f8f0f gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Comment guifg=#2f3f8f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Constant guifg=#8f1f2f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Special guifg=#3f3f5f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Identifier guifg=#0f6f2f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Statement guifg=#1f2f4f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight PreProc guifg=#8f0f2f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight type guifg=#3f8f5f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight underlined guifg=#3faf6f guibg=bg gui=underline
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Ignore guifg=#7f7f7f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Error guifg=#a04f7e guibg=bg gui=bold
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight Todo guifg=#ff5f8f guibg=#dfefff gui=bold,underline
          \ ctermfg=16 ctermbg=12 cterm=NONE
highlight string guifg=#af2f8f guibg=bg gui=NONE
          \ ctermfg=16 ctermbg=12 cterm=NONE

" __End__ "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
