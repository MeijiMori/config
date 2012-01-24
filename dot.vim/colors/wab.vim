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
let g:colors_name = "wab"

" #- check -# "{{{1
let s:is_wab_t = 1
if exists('g:' . 'is_wab')
  if g:is_wab  == 'black'
    let s:is_wab_t = 1
  elseif g:is_wab == 'white'
    let s:is_wab_t = 0
  endif
endif


" #- Highlighting groups for various occasions -# "{{{1
if s:is_wab_t
  highlight Normal guifg=#cfcfcf guibg=#000000 gui=NONE
  highlight SpecialKey guifg=#afafaf guibg=bg gui=NONE
  highlight NonText guifg=#3f3f3f guibg=bg gui=NONE
  highlight Directory guifg=#5f5f5f guibg=bg gui=bold
  highlight ErrorMsg guifg=#0f0f0f guibg=#3f3f3f gui=NONE
  " Search "{{{2
  highlight IncSearch guifg=#000000 guibg=#4f4f4f gui=bold
  highlight Search guifg=#000000 guibg=#efefef gui=bold
  "}}}2
  highlight MoreMsg guifg=#2f2f2f guibg=#cfcfff gui=NONE
  highlight ModeMsg guifg=#2f2f2f guibg=#afafaf gui=NONE
  highlight LineNr guifg=#1f1f1f guibg=NONE gui=NONE
  highlight Question guifg=#3f3f3f guibg=#8f8f8f gui=NONE
  " Statusline "{{{2
  highlight StatusLine guifg=#ffffff guibg=#0f0f0f gui=NONE
  highlight StatusLineNC guifg=#6f6f6f guibg=#cfcfcf gui=NONE
  " }}}2
  highlight VertSplit guifg=bg guibg=bg gui=bold
  highlight Title guifg=#cfcfcf guibg=bg gui=bold,underline
  " Visual "{{{2
  highlight Visual guifg=#cfcfcf guibg=#101010 gui=NONE
  highlight VisualNOS guifg=#cfcfcf guibg=#101010 gui=underline,bold
  " }}}2
  highlight WarningMsg guifg=#0f0f0f guibg=#cfcfcf gui=NONE
  highlight WildMenu guifg=#3f3f3f guibg=#cfcfcf gui=NONE
  " Fold "{{{2
  highlight Folded guifg=#afafaf guibg=#0f0f0f gui=NONE
  highlight FoldColumn guifg=#afafaf guibg=#0f0f0f gui=bold
  " }}}2
  " Diff "{{{2
  highlight DiffAdd guifg=bg guibg=#bfffbf gui=NONE
  highlight DiffChange guifg=bg guibg=#ffffbf gui=NONE
  highlight DiffDelete guifg=bg guibg=#ffbfbf gui=bold
  highlight DiffText guifg=fg guibg=bg gui=NONE
  " }}}2
  highlight SignColumn guifg=#cfcfcf guibg=bg gui=NONE
  " Spell "{{{2
  highlight SpellBad guifg=#2f2f2f guibg=bg gui=NONE
  highlight SpellCap guifg=#8f8f8f guibg=bg gui=NONE
  highlight SpellRare guifg=#5f5f5f guibg=bg gui=NONE
  highlight SpellLocal guifg=#afafaf guibg=bg gui=NONE
  " }}}2
  " Pmenu "{{{2
  highlight Pmenu guifg=#0f0f0f guibg=#cfcfcf gui=NONE
  highlight PmenuSel guifg=fg guibg=#1f1f1f gui=NONE
  highlight PmenuSbar guifg=#cfcfcf guibg=#000000 gui=NONE
  highlight PmenuThumb guifg=#000000 guibg=#4f4f4f gui=NONE
  " }}}2
  " tabline "{{{2
  highlight TabLine guifg=#cfcfcf guibg=#1f1f1f gui=underline
  highlight TabLineSel guifg=#cfcfcf guibg=#000000 gui=underline
  highlight TabLineFill guifg=#ffffff guibg=#1f1f1f gui=underline
  "}}}2
  " cursor "{{{2
  highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
  highlight ColorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
  highlight CursorLine guifg=NONE guibg=#0a0a0a gui=NONE
  highlight Cursor guifg=#000000 guibg=#afafaf gui=NONE
  " IME status color for cursor "{{{3
  if has('multi_byte_ime') || has('xim')
    highlight CursorIM gui=NONE guifg=#cfcfcf guibg=#afafaf
  endif

  " }}}2
else
  highlight Normal guifg=#000000 guibg=#dfdfdf gui=NONE
  highlight SpecialKey guifg=#8f8f8f guibg=bg gui=NONE
  highlight NonText guifg=#3f3f3f guibg=bg gui=NONE
  highlight Directory guifg=#3f3f3f guibg=bg gui=bold
  highlight ErrorMsg guifg=#0f0f0f guibg=#3f3f3f gui=NONE
  " Search "{{{2
  highlight IncSearch guifg=#000000 guibg=#afafaf gui=bold
  highlight Search guifg=#cfcfcf guibg=#000000 gui=bold
  "}}}2
  highlight MoreMsg guifg=#2f2f2f guibg=#cfcfff gui=NONE
  highlight ModeMsg guifg=#2f2f2f guibg=#afafaf gui=NONE
  highlight LineNr guifg=#1f1f1f guibg=NONE gui=NONE
  highlight Question guifg=#3f3f3f guibg=#8f8f8f gui=NONE
  " Statusline "{{{2
  highlight StatusLine guifg=#ffffff guibg=#1f1f1f gui=NONE
  highlight StatusLineNC guifg=#6f6f6f guibg=#cfcfcf gui=NONE
  " }}}2
  highlight VertSplit guifg=bg guibg=bg gui=bold
  highlight Title guifg=#5f5f5f guibg=#cfcfcf gui=bold,underline
  " Visual "{{{2
  highlight Visual guifg=#cfcfcf guibg=#101010 gui=NONE
  highlight VisualNOS guifg=#cfcfcf guibg=#101010 gui=underline,bold
  " }}}2
  highlight WarningMsg guifg=#0f0f0f guibg=#cfcfcf gui=NONE
  highlight WildMenu guifg=#3f3f3f guibg=#cfcfcf gui=NONE
  " Fold "{{{2
  highlight Folded guifg=#2f2f2f guibg=#8f8f8f gui=NONE
  highlight FoldColumn guifg=#1f1f1f guibg=#8f8f8f gui=bold
  " }}}2
  " Diff "{{{2
  highlight DiffAdd guifg=fg guibg=#bfffbf gui=NONE
  highlight DiffChange guifg=fg guibg=#ffffbf gui=NONE
  highlight DiffDelete guifg=fg guibg=#ffbfbf gui=bold
  highlight DiffText guifg=fg guibg=bg gui=NONE
  " }}}2
  highlight SignColumn guifg=fg guibg=bg gui=NONE
  " Spell "{{{2
  highlight SpellBad guifg=#2f2f2f guibg=bg gui=NONE
  highlight SpellCap guifg=#8f8f8f guibg=bg gui=NONE
  highlight SpellRare guifg=#5f5f5f guibg=bg gui=NONE
  highlight SpellLocal guifg=#afafaf guibg=bg gui=NONE
  " }}}2
  " Pmenu "{{{2
  highlight Pmenu guifg=#cfcfcf guibg=#0f0f0f gui=NONE
  highlight PmenuSel guifg=bg guibg=#1f1f1f gui=NONE
  highlight PmenuSbar guifg=#cfcfcf guibg=#000000 gui=NONE
  highlight PmenuThumb guifg=#cfcfcf guibg=#1f1f1f gui=NONE
  " }}}2
  " tabline "{{{2
  highlight TabLine guifg=#1f1f1f guibg=#cfcfcf gui=underline
  highlight TabLineSel guifg=#0f0f0f guibg=#bfbfbf gui=underline
  highlight TabLineFill guifg=#1f1f1f guibg=#cfcfcf gui=underline
  "}}}2
  " cursor "{{{2
  highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
  highlight ColorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
  highlight CursorLine guifg=NONE guibg=#afafaf gui=NONE
  highlight Cursor guifg=#cfcfcf guibg=#0f0f0f gui=NONE
  " IME status color for cursor "{{{3
  if has('multi_byte_ime') || has('xim')
    highlight CursorIM guifg=#0f0f0f guibg=#afafaf gui=NONE
  endif

  " }}}2
endif

" #- Syntax highlighting groups -# "{{{1
if s:is_wab_t
  highlight lCursor guifg=#2f2f2f guibg=#000000 gui=NONE
  highlight MatchParen guifg=#000000 guibg=#3f3f3f gui=bold
  highlight comment guifg=#3f3f3f guibg=bg gui=NONE
  highlight Constant guifg=#9f9f9f guibg=bg gui=NONE
  highlight Special guifg=#bfbfbf guibg=bg gui=NONE
  highlight Identifier guifg=#afafaf guibg=bg gui=NONE
  highlight Statement guifg=#404040 guibg=bg gui=NONE
  highlight PreProc guifg=#6f6f6f guibg=bg gui=NONE
  highlight type guifg=#5f5f5f guibg=bg gui=NONE
  highlight underlined guifg=#8f8f8f guibg=#cfcfcf gui=underline,bold
  highlight Ignore guifg=#0c0c0c guibg=bg gui=bold
  highlight Error guifg=#0f0f0f guibg=#afafaf gui=NONE
  highlight Todo guifg=#7f7f7f guibg=#dfdfdf gui=underline,bold
  highlight String guifg=#afafaf guibg=bg gui=NONE
else
  highlight lCursor guifg=#2f2f2f guibg=#000000 gui=NONE
  highlight MatchParen guifg=#000000 guibg=#3f3f3f gui=bold
  highlight comment guifg=#3f3f3f guibg=bg gui=NONE
  highlight Constant guifg=#9f9f9f guibg=bg gui=NONE
  highlight Special guifg=#bfbfbf guibg=bg gui=NONE
  highlight Identifier guifg=#afafaf guibg=bg gui=NONE
  highlight Statement guifg=#404040 guibg=bg gui=NONE
  highlight PreProc guifg=#6f6f6f guibg=bg gui=NONE
  highlight type guifg=#5f5f5f guibg=bg gui=NONE
  highlight underlined guifg=#8f8f8f guibg=#cfcfcf gui=underline,bold
  highlight Ignore guifg=#0c0c0c guibg=bg gui=bold
  highlight Error guifg=#0f0f0f guibg=#afafaf gui=NONE
  highlight Todo guifg=#7f7f7f guibg=#dfdfdf gui=underline,bold
  highlight String guifg=#7f7f7f guibg=bg gui=NONE
endif


" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
