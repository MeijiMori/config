" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/

" #- First remove all existing highlighting. -# "{{{1
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#000000 gui=NONE
          \ ctermfg=255 ctermbg=232 cterm=NONE
highlight SpecialKey guifg=#af2f6f guibg=bg gui=NONE
          \ ctermfg=197 ctermbg=bg cterm=NONE
highlight NonText guifg=#af3faf guibg=bg gui=bold
          \ ctermfg=206 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#0f6faf guibg=bg gui=bold
          \ ctermfg=31 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#8f0f0f guibg=#cf8f8f gui=underline
          \ ctermfg=88 ctermbg=204 cterm=underline
" search "{{{2
highlight IncSearch guifg=#000000 guibg=#ffaf2f gui=bold
          \ ctermfg=0 ctermbg=208 cterm=bold,underline
highlight Search guifg=#000000 guibg=#2fcf8f gui=bold
          \ ctermfg=0 ctermbg=36 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#0f1f3f guibg=#8f8faf gui=underline
          \ ctermfg=17 ctermbg=69 cterm=underline
highlight ModeMsg guifg=#0f3f1f guibg=#8faf8f gui=underline
          \ ctermfg=22 ctermbg=78 cterm=underline
highlight LineNr guifg=#cf8fff guibg=NONE gui=NONE
          \ ctermfg=183 ctermbg=NONE cterm=NONE
highlight CursorLineNr guifg=#cf8fff guibg=NONE gui=NONE
          \ ctermfg=225 ctermbg=0 cterm=bold
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#5f3f5f guibg=#af8faf gui=underline
          \ ctermfg=127 ctermbg=177 cterm=underline
" Statusline "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#0f0f1f gui=underline
          \ ctermfg=255 ctermbg=232 cterm=underline
highlight StatusLineNC guifg=#7f7f7f guibg=#cfcfff gui=NONE
          \ ctermfg=146 ctermbg=152 cterm=underline
" terminal "{{{2
highlight Terminal guifg=#cfcfcf guibg=#00000f gui=NONE
                \ ctermfg=10 ctermbg=0 cterm=NONE
highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
                \ ctermfg=0 ctermbg=10 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
                \ ctermfg=96 ctermbg=183 cterm=NONE


" }}}2
highlight VertSplit guifg=#1f1f1f guibg=bg gui=bold
          \ ctermfg=239 ctermbg=0 cterm=bold
highlight Title guifg=#af5f8f guibg=bg gui=underline
          \ ctermfg=133 ctermbg=bg cterm=underline
" Visual "{{{2
highlight Visual guifg=fg guibg=#0f1f3f gui=NONE
          \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#ffffff guibg=#3f4f7f gui=bold,underline
          \ ctermfg=252 ctermbg=63 cterm=bold,underline
" }}}2
highlight WarningMsg guifg=#8f5f3f guibg=#ffaf8f gui=underline
          \ ctermfg=94 ctermbg=173 cterm=underline
highlight WildMenu guifg=#cfcfcf guibg=#0f3f5f gui=NONE
          \ ctermfg=250 ctermbg=19 cterm=NONE
" Fold "{{{2
highlight Folded guifg=#afafaf guibg=#0a0a0f gui=NONE
          \ ctermfg=250 ctermbg=233 cterm=NONE
highlight FoldColumn guifg=#8f5faf guibg=#0a0a0f gui=bold
          \ ctermfg=135 ctermbg=232 cterm=NONE

" diff "{{{2
highlight DiffAdd guifg=fg guibg=#2f8f5f gui=NONE
          \ ctermfg=NONE ctermbg=42 cterm=NONE
highlight DiffChange guifg=fg guibg=#af8f5f gui=NONE
          \ ctermfg=NONE ctermbg=144 cterm=NONE
highlight DiffDelete guifg=fg guibg=#af5f5f gui=bold
          \ ctermfg=NONE ctermbg=131 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
" }}}2
highlight SignColumn guifg=#7f2f4f guibg=bg gui=NONE
          \ ctermfg=88 ctermbg=bg cterm=NONE
highlight Conceal guifg=#7f2f4f guibg=bg gui=NONE
          \ ctermfg=89 ctermbg=138 cterm=NONE
" Spell "{{{2
highlight SpellBad guifg=#5f3f7f guibg=bg gui=NONE
          \ ctermfg=57 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#3f4f7f guibg=bg gui=NONE
          \ ctermfg=25 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#3f7f6f guibg=bg gui=NONE
          \ ctermfg=29 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#5faf3f guibg=bg gui=NONE
          \ ctermfg=40 ctermbg=bg cterm=NONE

" Pmenu "{{{2
highlight Pmenu guifg=#000000 guibg=#cfcfff gui=NONE
          \ ctermfg=232 ctermbg=251 cterm=NONE
highlight PmenuSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#cfcfcf guibg=#1f2f3f gui=NONE
          \ ctermfg=fg ctermbg=224 cterm=NONE
highlight PmenuThumb guifg=#cfcfcf guibg=#4f0f2f gui=NONE
          \ ctermfg=fg ctermbg=125 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#5f5f5f guibg=#efefff gui=NONE
          \ ctermfg=233 ctermbg=253 cterm=NONE
highlight TabLineSel guifg=#cfcfcf guibg=#1f2f5f gui=NONE
          \ ctermfg=253 ctermbg=18 cterm=NONE
highlight TabLineFill guifg=#5f5f5f guibg=#efefff gui=bold
          \ ctermfg=238 ctermbg=253 cterm=bold

" tabpanel "{{{2
highlight TabPanel guifg=#5f5f5f guibg=#efefff gui=NONE
          \ ctermfg=233 ctermbg=253 cterm=NONE
highlight TabPanelSel guifg=#cfcfcf guibg=#1f2f5f gui=NONE
          \ ctermfg=253 ctermbg=18 cterm=NONE
highlight TabPanelFill guifg=#5f5f5f guibg=#efefff gui=bold
          \ ctermfg=238 ctermbg=253 cterm=bold


" cursor "{{{2
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
          \ ctermfg=233 ctermbg=253 cterm=NONE
highlight CursorLine guifg=NONE guibg=#0f0f1f gui=NONE
          \ ctermfg=NONE ctermbg=16 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
          \ ctermfg=NONE ctermbg=19 cterm=NONE
highlight Cursor guifg=#ffffff guibg=#5f1f3f gui=NONE
          \ ctermfg=15 ctermbg=89 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af2f3f gui=NONE
          \ ctermfg=15 ctermbg=88 cterm=NONE
endif

" }}}2

" #- syntax highlighting groups -# "{{{1
highlight lCursor guifg=#3f3f3f guibg=#7ea3a6 gui=NONE
          \ ctermfg=255 ctermbg=232 cterm=NONE
highlight MatchParen guifg=#000000 guibg=#8f8fff gui=bold
          \ ctermfg=17 ctermbg=12 cterm=bold,underline
highlight comment guifg=#4f4fff guibg=bg gui=NONE
          \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Constant guifg=#2faf5f guibg=bg gui=NONE
          \ ctermfg=34 ctermbg=bg cterm=NONE
highlight Special guifg=#dfcfff guibg=bg gui=NONE
          \ ctermfg=183 ctermbg=bg cterm=NONE
highlight Identifier guifg=#ff2f8f guibg=bg gui=NONE
          \ ctermfg=197 ctermbg=bg cterm=NONE
highlight Statement guifg=#ff7f5f guibg=bg gui=NONE
          \ ctermfg=202 ctermbg=bg cterm=NONE
highlight PreProc guifg=#ff2f5f guibg=bg gui=NONE
          \ ctermfg=197 ctermbg=bg cterm=NONE
highlight type guifg=#2fcfaf guibg=bg gui=NONE
          \ ctermfg=43 ctermbg=bg cterm=NONE
highlight underlined guifg=#1f5f3f guibg=bg gui=underline
          \ ctermfg=35 ctermbg=bg cterm=underline
highlight Ignore guifg=#0f4f0f guibg=bg gui=bold
          \ ctermfg=22 ctermbg=bg cterm=bold
highlight Error guifg=#ff1f4f guibg=bg gui=NONE
          \ ctermfg=197 ctermbg=bg cterm=NONE
highlight Todo guifg=#af2f5f guibg=#cfcfff gui=bold,underline
          \ ctermfg=197 ctermbg=252 cterm=bold,underline
highlight string guifg=#2faf5f guibg=bg gui=NONE
          \ ctermfg=41 ctermbg=bg cterm=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
