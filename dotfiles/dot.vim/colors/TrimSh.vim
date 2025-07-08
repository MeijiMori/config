" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/

" #- reset -# "{{{1
" First remove all existing highlighting.
if version > 580
  set background=light
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#000000 guibg=#ffffff gui=NONE
          \ ctermfg=233 ctermbg=231 cterm=NONE
highlight SpecialKey guifg=#af3f5f guibg=bg gui=NONE
          \ ctermfg=196 ctermbg=bg cterm=NONE
highlight NonText guifg=#2f3faf guibg=bg gui=bold
          \ ctermfg=21 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#2faf8f guibg=bg gui=bold
          \ ctermfg=35 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#8f3f4f guibg=#ffafaf gui=NONE
          \ ctermfg=196 ctermbg=219 cterm=underline
" search"{{{2
highlight IncSearch guifg=#000000 guibg=#cf8fff gui=bold
          \ ctermfg=124 ctermbg=177 cterm=bold,underline
highlight Search guifg=#cfcfcf guibg=#2f2f5f gui=bold
          \ ctermfg=17 ctermbg=159 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#4fab6e guibg=#cfffcf gui=NONE
          \ ctermfg=22 ctermbg=120 cterm=underline
highlight ModeMsg guifg=#0f1f5f guibg=#afafcf gui=NONE
          \ ctermfg=17 ctermbg=75 cterm=underline
highlight LineNr guifg=#5f0f3f guibg=NONE gui=NONE
          \ ctermfg=89 ctermbg=bg cterm=NONE
highlight CursorLineNr guifg=#5f0f3f guibg=NONE gui=NONE
          \ ctermfg=89 ctermbg=213 cterm=bold
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#4faf7f guibg=bg gui=NONE
          \ ctermfg=35 ctermbg=bg cterm=NONE
" Statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#001f2f gui=NONE
          \ ctermfg=254 ctermbg=233 cterm=NONE
highlight StatusLineNC guifg=#565234 guibg=#c0afcf gui=NONE
" terminal "{{{3
highlight Terminal guifg=#cfcfcf guibg=#00000f gui=NONE
                \ ctermfg=10 ctermbg=0 cterm=NONE
highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
                \ ctermfg=0 ctermbg=10 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
                \ ctermfg=96 ctermbg=183 cterm=NONE
                \ ctermfg=238 ctermbg=105 cterm=NONE
" }}}2
highlight VertSplit guifg=#6f6f6f guibg=#dfdfdf gui=bold
          \ ctermfg=238 ctermbg=250 cterm=NONE
highlight Title guifg=#8f5faf guibg=#dfdfff gui=NONE
          \ ctermfg=239 ctermbg=105 cterm=bold,underline
" Visual "{{{2
highlight Visual guifg=#cfcfcf guibg=#1f1f4f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#ffffff guibg=#3f4f7f gui=underline,bold
          \ ctermfg=16 ctermbg=25 cterm=bold,underline
" }}}2
highlight WarningMsg guifg=#ef2f3f guibg=#ffcfcf gui=NONE
          \ ctermfg=124 ctermbg=213 cterm=underline
highlight WildMenu guifg=#cfcfcf guibg=#2f2f6f gui=NONE
          \ ctermfg=250 ctermbg=17 cterm=NONE
" Fold "{{{2
" highlight Folded guifg=#2f3f6f guibg=#9fafbf gui=NONE
highlight Folded guifg=#000000 guibg=#cfbfbf gui=NONE
          \ ctermfg=232 ctermbg=138 cterm=NONE
highlight FoldColumn guifg=#2f0f2f guibg=#ffefff gui=bold
          \ ctermfg=233 ctermbg=bg cterm=bold

" diff "{{{2
highlight DiffAdd guifg=#0f0f0f guibg=#afffcf gui=NONE
          \ ctermfg=NONE ctermbg=77 cterm=NONE
highlight DiffChange guifg=#0f0f0f guibg=#ffffcf gui=NONE
          \ ctermfg=NONE ctermbg=221 cterm=NONE
highlight DiffDelete guifg=#0f0f0f guibg=#f6afcf gui=NONE
          \ ctermfg=NONE ctermbg=219 cterm=NONE
highlight DiffText guifg=#6f6f6f guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2
highlight SignColumn guifg=#8f1f3f guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
" Spell "{{{2
highlight SpellBad guifg=#5f2f7f guibg=bg gui=NONE
          \ ctermfg=161 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#2f3f8f guibg=bg gui=NONE
          \ ctermfg=27 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#2f8f5f guibg=bg gui=NONE
          \ ctermfg=35 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#5f5f2f guibg=bg gui=NONE
          \ ctermfg=220 ctermbg=bg cterm=NONE

" Pmenu "{{{2
highlight Pmenu guifg=#2f2f2f guibg=#cfcfff gui=NONE
          \ ctermfg=234 ctermbg=195 cterm=NONE
highlight PmenuSel guifg=#dfdfdf guibg=#3f0f3f gui=NONE
          \ ctermfg=255 ctermbg=53 cterm=NONE
highlight PmenuSbar guifg=#cfcfcf guibg=#2f2f2f gui=NONE
          \ ctermfg=fg ctermbg=0 cterm=NONE
highlight PmenuThumb guifg=#ffffff guibg=#6f2f4f gui=NONE
          \ ctermfg=fg ctermbg=89 cterm=NONE

"tabline "{{{2
highlight TabLine guifg=#5f5f5f guibg=#cccccc gui=NONE
          \ ctermfg=232 ctermbg=248 cterm=NONE
highlight TabLineSel guifg=#dfdfdf guibg=#0f2f5f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#5f8f5f guibg=#aaaaaa gui=NONE
          \ ctermfg=29 ctermbg=237 cterm=NONE

"tabpanel "{{{2
highlight TabPanel guifg=#5f5f5f guibg=#cccccc gui=NONE
          \ ctermfg=232 ctermbg=248 cterm=NONE
highlight TabPanelSel guifg=#dfdfdf guibg=#0f2f5f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#5f8f5f guibg=#aaaaaa gui=NONE
          \ ctermfg=29 ctermbg=237 cterm=NONE

" cursor "{{{2
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
          \ ctermfg=NONE ctermbg=27 cterm=NONE
highlight CursorLine guifg=NONE guibg=#dfffff gui=NONE
          \ ctermfg=NONE ctermbg=159 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#ff5588 gui=NONE
          \ ctermfg=NONE ctermbg=159 cterm=NONE
highlight Cursor guifg=#000000 guibg=#2f8f8f gui=bold
          \ ctermfg=16 ctermbg=35 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af0f2f gui=NONE
          \ ctermfg=16 ctermbg=89 cterm=NONE
endif

" }}}2

" #- syntax highlighting groups -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
          \ ctermfg=16 ctermbg=35 cterm=NONE
highlight MatchParen guifg=#000000 guibg=#5f8f0f gui=bold
          \ ctermfg=22 ctermbg=34 cterm=bold,underline
highlight Comment guifg=#2f3f8f guibg=bg gui=NONE
          \ ctermfg=17 ctermbg=bg cterm=NONE
highlight Constant guifg=#8f1f2f guibg=bg gui=NONE
          \ ctermfg=125 ctermbg=bg cterm=NONE
highlight Special guifg=#3f3f5f guibg=bg gui=NONE
          \ ctermfg=105 ctermbg=bg cterm=NONE
highlight Identifier guifg=#0f6f2f guibg=bg gui=NONE
          \ ctermfg=29 ctermbg=bg cterm=NONE
highlight Statement guifg=#1f2f4f guibg=bg gui=NONE
          \ ctermfg=53 ctermbg=bg cterm=NONE
highlight PreProc guifg=#8f0f2f guibg=bg gui=NONE
          \ ctermfg=124 ctermbg=bg cterm=NONE
highlight type guifg=#3f8f5f guibg=bg gui=NONE
          \ ctermfg=22 ctermbg=bg cterm=NONE
highlight underlined guifg=#3faf6f guibg=bg gui=underline
          \ ctermfg=22 ctermbg=bg cterm=underline
highlight Ignore guifg=#7f7f7f guibg=bg gui=NONE
          \ ctermfg=239 ctermbg=bg cterm=bold
highlight Error guifg=#a04f7e guibg=bg gui=bold
          \ ctermfg=196 ctermbg=bg cterm=bold
highlight Todo guifg=#ff5f8f guibg=#dfefff gui=bold,underline
          \ ctermfg=205 ctermbg=225 cterm=bold,underline
highlight string guifg=#af2f8f guibg=bg gui=NONE
          \ ctermfg=165 ctermbg=bg cterm=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
