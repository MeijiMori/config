" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/

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
let g:colors_name = expand('<sfile>:t:r')

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#0a2f2c gui=NONE
          \ ctermfg=252 ctermbg=23 cterm=NONE
highlight SpecialKey guifg=#8f5fff guibg=bg gui=NONE
          \ ctermfg=63 ctermbg=bg cterm=NONE
highlight NonText guifg=#8fcfff guibg=bg gui=bold
          \ ctermfg=51 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#3f8fff guibg=NONE gui=bold
          \ ctermfg=33 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#3f0f0f guibg=#cf5f5f gui=NONE
          \ ctermfg=52 ctermbg=204 cterm=NONE
" search "{{{
highlight IncSearch guifg=#5f0f1f guibg=#cf5f5f gui=bold,underline
          \ ctermfg=52 ctermbg=204 cterm=bold,underline
highlight Search guifg=#1f1f3f guibg=#5f5fcf gui=bold,underline
          \ ctermfg=17 ctermbg=63 cterm=bold,underline
"}}}
highlight MoreMsg guifg=#0f2f0f guibg=#5faf5f gui=underline
          \ ctermfg=22 ctermbg=41 cterm=underline
highlight ModeMsg guifg=#0f0f2f guibg=#5f5faf gui=underline
          \ ctermfg=17 ctermbg=12 cterm=underline
highlight LineNr guifg=#af8fff guibg=NONE gui=NONE
          \ ctermfg=104 ctermbg=bg cterm=NONE
highlight CursorLineNr guifg=#af8fff guibg=NONE gui=NONE
          \ ctermfg=131 ctermbg=17 cterm=bold
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#002f0f guibg=#5fcf8f gui=underline
          \ ctermfg=0 ctermbg=85 cterm=underline
" Statusline "{{{
highlight StatusLine guifg=#afafaf guibg=#001f2f gui=underline
          \ ctermfg=250 ctermbg=234 cterm=underline
highlight StatusLineNC guifg=#7f5f6f guibg=#ffcfcf gui=underline
          \ ctermfg=95 ctermbg=181 cterm=underline
" }}}
highlight VertSplit guifg=#2f3f8f guibg=#0a2a1f gui=underline
          \ ctermfg=12 ctermbg=24 cterm=underline
highlight Title guifg=#ff5f2f guibg=bg gui=underline
          \ ctermfg=202 ctermbg=bg cterm=underline
" Visual "{{{
highlight Visual guifg=#efefef guibg=#1f3f3f gui=NONE
          \ ctermfg=15 ctermbg=29 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#2f3f7f gui=bold,underline
          \ ctermfg=15 ctermbg=12 cterm=bold,underline
" }}}
highlight WarningMsg guifg=#8f1f3f guibg=#cf5f5f gui=NONE
          \ ctermfg=52 ctermbg=9 cterm=NONE
highlight WildMenu guifg=#cfcfcf guibg=#00001f gui=underline
          \ ctermfg=255 ctermbg=233 cterm=underline
" Fold "{{{2
highlight Folded guifg=#afa0af guibg=#102f2f gui=NONE
          \ ctermfg=235 ctermbg=29 cterm=NONE
highlight FoldColumn guifg=#8f8fff guibg=#0f2f2f gui=bold
          \ ctermfg=105 ctermbg=29 cterm=bold

" Diff "{{{
highlight DiffAdd guifg=fg guibg=#1f8f3f gui=NONE
          \ ctermfg=NONE ctermbg=30 cterm=NONE
highlight DiffChange guifg=fg guibg=#af3f1f gui=NONE
          \ ctermfg=NONE ctermbg=166 cterm=NONE
highlight DiffDelete guifg=fg guibg=#8f1f1f gui=NONE
          \ ctermfg=NONE ctermbg=124 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
" }}}
highlight SignColumn guifg=#ff5f7f guibg=bg gui=NONE
          \ ctermfg=203 ctermbg=bg cterm=NONE
highlight Conceal guifg=#ff5f7f guibg=bg gui=NONE
          \ ctermfg=203 ctermbg=bg cterm=NONE

" Spell "{{{2
highlight SpellBad guifg=#8f6faf guibg=bg gui=NONE
          \ ctermfg=105 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#6f7faf guibg=bg gui=NONE
          \ ctermfg=75 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#6faf9f guibg=bg gui=NONE
          \ ctermfg=43 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#af9f6f guibg=bg gui=NONE
          \ ctermfg=187 ctermbg=bg cterm=NONE


" Pmenu "{{{2
highlight Pmenu guifg=fg guibg=#0f201f gui=NONE
          \ ctermfg=15 ctermbg=0 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#1f1f3f gui=NONE
          \ ctermfg=15 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=fg guibg=#1f1f2f gui=NONE
          \ ctermfg=fg ctermbg=232 cterm=NONE
highlight PmenuThumb guifg=fg guibg=#0f0f1f gui=NONE
          \ ctermfg=fg ctermbg=0 cterm=NONE


" tabline "{{{2
highlight TabLine guifg=#afafaf guibg=#0f1f2f gui=NONE
          \ ctermfg=250 ctermbg=17 cterm=NONE
highlight TabLineSel guifg=#cfcfcf guibg=#0f2f5f gui=NONE
          \ ctermfg=255 ctermbg=18 cterm=NONE
highlight TabLineFill guifg=#8fcfaf guibg=#0f1f2f gui=bold
          \ ctermfg=85 ctermbg=0 cterm=bold

" tabpanel "{{{2
highlight TabPanel guifg=#afafaf guibg=#0f1f2f gui=NONE
          \ ctermfg=250 ctermbg=17 cterm=NONE
highlight TabPanelSel guifg=#cfcfcf guibg=#0f2f5f gui=NONE
          \ ctermfg=255 ctermbg=18 cterm=NONE
highlight TabPanelFill guifg=#8fcfaf guibg=#0f1f2f gui=bold
          \ ctermfg=85 ctermbg=0 cterm=bold

" cursor "{{{2
highlight CursorColumn guifg=#000000 guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=89 cterm=NONE
highlight CursorLine guifg=NONE guibg=#102f2a gui=NONE
          \ ctermfg=NONE ctermbg=22 cterm=NONE
highlight ColorColumn guifg=#000000 guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=89 cterm=NONE
highlight Cursor guifg=fg guibg=#0f0f1f gui=NONE
          \ ctermfg=15 ctermbg=16 cterm=NONE

" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af1f3f gui=NONE
          \ ctermfg=15 ctermbg=52 cterm=NONE
endif


" terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=fg guibg=bg gui=NONE
                  \ ctermfg=fg ctermbg=bg cterm=NONE
  highlight StatusLineTerm guifg=#000f2f guibg=#cfccff gui=NONE
                  \ ctermfg=fg ctermbg=bg cterm=NONE
  highlight StatusLineTermNc guifg=#002f2f guibg=#8fafcf gui=NONE
                  \ ctermfg=fg ctermbg=bg cterm=NONE
  " Terminal color
  let g:terminal_ansi_colors = [
    \ "#0c0c0c", "#850f1f", "#13710e", "#819c00",
    \ "#00378a", "#881798", "#3a96dd", "#8f8f8f",
    \ "#767676", "#872836", "#16960c", "#6a7f84",
    \ "#3b789f", "#94005e", "#61d6d6", "#989898"
    \ ]
endif


" toolbar "{{{2
highlight ToolbarButton guifg=#3f1f8f guibg=#afafff gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ToolbarLine guifg=#5f0f0f guibg=#df3fcf gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE



" #- syntax highlighting groups -# "{{{1
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
          \ ctermfg=16 ctermbg=87 cterm=NONE
highlight MatchParen guifg=#000000 guibg=#bfbfff gui=bold
          \ ctermfg=17 ctermbg=153 cterm=bold,underline
highlight comment guifg=#2f5fff guibg=bg gui=NONE
          \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Constant guifg=#3faf5f guibg=bg gui=NONE
          \ ctermfg=35 ctermbg=bg cterm=NONE
highlight Special guifg=#cfbfff guibg=bg gui=NONE
          \ ctermfg=7 ctermbg=bg cterm=NONE
highlight Identifier guifg=#cf8fff guibg=bg gui=NONE
          \ ctermfg=219 ctermbg=bg cterm=NONE
highlight Statement guifg=#5f4fff guibg=bg gui=NONE
          \ ctermfg=63 ctermbg=bg cterm=NONE
highlight PreProc guifg=#5f8fcf guibg=bg gui=NONE
          \ ctermfg=105 ctermbg=bg cterm=NONE
highlight type guifg=#ff3f5f guibg=bg gui=NONE
          \ ctermfg=9 ctermbg=bg cterm=NONE
highlight underlined guifg=#0f7f3f guibg=bg gui=underline
          \ ctermfg=41 ctermbg=bg cterm=underline
highlight Ignore guifg=#1f5f3f guibg=bg gui=bold
          \ ctermfg=35 ctermbg=bg cterm=bold
highlight Error guifg=#8f0f0f guibg=#cf5f5f gui=NONE
          \ ctermfg=52 ctermbg=203 cterm=NONE
highlight Todo guifg=#8f8fff guibg=#cfcfff gui=bold,underline
          \ ctermfg=105 ctermbg=195 cterm=bold,underline
highlight string guifg=#ff2f5f guibg=bg gui=NONE
          \ ctermfg=196 ctermbg=bg cterm=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
