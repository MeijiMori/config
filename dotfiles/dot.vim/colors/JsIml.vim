" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" like a barcerk fuler

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
highlight Normal guifg=#000000 guibg=#dfc6ff gui=NONE
          \ ctermfg=0 ctermbg=231 cterm=NONE
highlight SpecialKey guifg=#ef5fff guibg=bg gui=NONE
          \ ctermfg=165 ctermbg=bg cterm=NONE
highlight NonText guifg=#af7fff guibg=bg gui=bold
          \ ctermfg=35 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight EndOfBUffer guifg=#af7fff guibg=bg gui=bold
          \ ctermfg=35 ctermbg=bg cterm=bold
highlight Directory guifg=#cf2fff guibg=NONE gui=bold
          \ ctermfg=17 ctermbg=NONE cterm=bold
highlight ErrorMsg guifg=#8f2f4f guibg=#efbfff gui=NONE
          \ ctermfg=197 ctermbg=213 cterm=underline
" search "{{{
highlight CurSearch guifg=#5f1f3f guibg=#736ff5 gui=bold
          \ ctermfg=161 ctermbg=170 cterm=bold,underline
highlight IncSearch guifg=#8f3f5f guibg=#c35ff5 gui=bold
          \ ctermfg=161 ctermbg=170 cterm=bold,underline
highlight Search guifg=#5f2f3f guibg=#cf7fff gui=bold
          \ ctermfg=25 ctermbg=147 cterm=bold,underline
"}}}
highlight MoreMsg guifg=#2f8f5f guibg=#dfffdf gui=NONE
          \ ctermfg=41 ctermbg=123 cterm=underline
highlight ModeMsg guifg=#8f0fcf guibg=#dfafff gui=NONE
          \ ctermfg=33 ctermbg=153 cterm=underline
highlight MsgArea guifg=#3f1f5f guibg=#e0c6ff gui=NONE
          \ ctermfg=33 ctermbg=153 cterm=underline
highlight LineNr guifg=#9f4f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight CursorLineNr guifg=#9f4f7f guibg=#af8fff gui=NONE
          \ ctermfg=197 ctermbg=189 cterm=bold
highlight Question guifg=#1faf5f guibg=#dfffdf gui=NONE
          \ ctermfg=22 ctermbg=121 cterm=underline
" Statusline "{{{
highlight StatusLine guifg=#3f0f5f guibg=#cf8fff gui=NONE
          \ ctermfg=255 ctermbg=232 cterm=NONE
highlight StatusLineNC guifg=#8f3faf guibg=#af5faf gui=NONE
          \ ctermfg=131 ctermbg=181 cterm=NONE
highlight StatusLineTerm guifg=#0f0f0f guibg=#8f5fff gui=NONE
          \ ctermfg=255 ctermbg=232 cterm=NONE
highlight StatusLineTermNC guifg=#0f0f0f guibg=#bf9fff gui=NONE
          \ ctermfg=131 ctermbg=181 cterm=NONE
" }}}
highlight VertSplit guifg=#823faf guibg=NONE gui=bold
          \ ctermfg=237 ctermbg=252 cterm=bold
highlight Title guifg=#9f3faf guibg=bg gui=underline
          \ ctermfg=32 ctermbg=bg cterm=NONE
" Visual "{{{
highlight Visual guifg=#efefef guibg=#2f3f5f gui=NONE
          \ ctermfg=189 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#2f3f7f gui=underline,bold
          \ ctermfg=250 ctermbg=17 cterm=bold,underline
" }}}
highlight WarningMsg guifg=#af1fef guibg=#bf8fff gui=NONE
          \ ctermfg=125 ctermbg=219 cterm=underline
highlight WildMenu guifg=#cfcfcf guibg=#0f1f3f gui=bold
          \ ctermfg=255 ctermbg=17 cterm=bold,underline
highlight Menu guifg=#cfcfcf guibg=#0f1f3f gui=bold
          \ ctermfg=255 ctermbg=17 cterm=bold,underline
" Fold "{{{
highlight Folded guifg=#1f1f1f guibg=#af85ef gui=NONE
          \ ctermfg=235 ctermbg=250 cterm=NONE
highlight FoldColumn guifg=#5f2fdf guibg=#af86df gui=bold
          \ ctermfg=233 ctermbg=255 cterm=bold
" }}}
" Diff "{{{
highlight DiffAdd guifg=fg guibg=#afffcf gui=NONE
          \ ctermfg=fg ctermbg=156 cterm=NONE
highlight DiffChange guifg=fg guibg=#ffffcf gui=NONE
          \ ctermfg=fg ctermbg=228 cterm=NONE
highlight DiffDelete guifg=fg guibg=#ffafcf gui=NONE
          \ ctermfg=fg ctermbg=205 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#2faf6f guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Added guifg=#2f2fff guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Changed guifg=#2f5fff guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Removed guifg=#ff2faf guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}
highlight SignColumn guifg=#f6577f guibg=#dfc8ff gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
" Spell "{{{
highlight SpellBad guifg=#593079 guibg=bg gui=NONE
          \ ctermfg=54 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#304379 guibg=bg gui=NONE
          \ ctermfg=20 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#307962 guibg=bg gui=NONE
          \ ctermfg=29 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#796c30 guibg=bg gui=NONE
          \ ctermfg=136 ctermbg=bg cterm=NONE
" }}}
" Pmenu "{{{
highlight Pmenu guifg=fg guibg=#efdfff gui=NONE
          \ ctermfg=232 ctermbg=250 cterm=NONE
highlight ComplMatchIns guifg=NONE guibg=#7f1f2f gui=NONE
          \ ctermfg=gray ctermbg=gray cterm=NONE
highlight PmenuKind guifg=NONE guibg=#ffcfcf gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight PmenuKindSel guifg=NONE guibg=#5f8fff gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight PmenuExtra  guifg=NONE guibg=#cfffcf gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight PmenuExtraSel guifg=NONE guibg=#3f5fff gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight PmenuMatch guifg=NONE guibg=#cfcfff gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight PmenuMatchSel guifg=NONE guibg=#3f8fcf gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#2f2f3f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=fg guibg=#cfafff gui=NONE
          \ ctermfg=fg ctermbg=132 cterm=NONE
highlight PmenuThumb guifg=fg guibg=#dfcfef gui=NONE
          \ ctermfg=fg ctermbg=105 cterm=NONE
" }}}
" tabline "{{{
highlight TabLine guifg=#0f0f0f guibg=#cfafff gui=NONE
          \ ctermfg=250 ctermbg=232 cterm=NONE
highlight TabLineSel guifg=#cfcfcf guibg=#0f2f5f gui=NONE
          \ ctermfg=250 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#7f2faf guibg=#dfcfff gui=NONE
          \ ctermfg=196 ctermbg=232 cterm=NONE
"}}}
" tabpanel "{{{
highlight TabPanel guifg=#0f0f0f guibg=#cfafff gui=NONE
          \ ctermfg=250 ctermbg=232 cterm=NONE
highlight TabPanelSel guifg=#cfcfcf guibg=#0f2f5f gui=NONE
          \ ctermfg=250 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#7f2faf guibg=#dfcfff gui=NONE
          \ ctermfg=196 ctermbg=232 cterm=NONE
"}}}
" cursor "{{{
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
          \ ctermfg=bg ctermbg=fg cterm=NONE
highlight CursorLine guifg=NONE guibg=#af8ff5 gui=NONE
          \ ctermfg=NONE ctermbg=224 cterm=NONE
highlight ColorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
          \ ctermfg=bg ctermbg=fg cterm=NONE
highlight Cursor guifg=#000000 guibg=#ff6faf gui=NONE
          \ ctermfg=0 ctermbg=29 cterm=NONE
highlight CursorLineFold guifg=#9f4f7f guibg=#af8fff gui=NONE
          \ ctermfg=197 ctermbg=189 cterm=bold
highlight CursorLineSign guifg=#9f4f7f guibg=#af8fff gui=NONE
          \ ctermfg=197 ctermbg=189 cterm=bold
" IME status color for cursor "{{{
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af2f3f gui=NONE
          \ ctermfg=0 ctermbg=89 cterm=NONE
endif
"}}}
"}}}
" terminal: "{{{
if has('terminal')
  highlight Terminal guifg=fg guibg=bg gui=NONE
  " Terminal color
  let g:terminal_ansi_colors = [
    \ "#0c0c0c", "#850f1f", "#13710e", "#819c00",
    \ "#00378a", "#881798", "#3a96dd", "#8f8f8f",
    \ "#767676", "#872836", "#16960c", "#6a7f84",
    \ "#3b789f", "#94005e", "#61d6d6", "#989898"
    \ ]
endif



" toolbar "{{{
highlight ToolbarButton guifg=#3f1f8f guibg=#afafff gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ToolbarLine guifg=#5f0f0f guibg=#df3fcf gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE


" popup "{{{2
highlight PopupNotification guifg=#000000 guibg=#dfc6ff gui=NONE
          \ ctermfg=0 ctermbg=231 cterm=NONE
highlight PopupSelected guifg=#cfcfcf guibg=#2f2f3f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE

highlight QuickFixLine guifg=#000000 guibg=#efafff gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE

highlight Scrollbar guifg=#000000 guibg=#af5fcf gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE

highlight Tooltip guifg=#000000 guibg=#af5fcf gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE


" #- syntax highlighting groups -# "{{{1
highlight Conceal guifg=#0f0f0f guibg=#7ea3e6 gui=NONE
          \ ctermfg=fg ctermbg=39 cterm=NONE
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
          \ ctermfg=fg ctermbg=39 cterm=NONE
highlight MatchParen guifg=#000000 guibg=#8f8fff gui=bold
          \ ctermfg=232 ctermbg=26 cterm=bold,underline
highlight comment guifg=#2f8f5f guibg=bg gui=NONE
          \ ctermfg=25 ctermbg=bg cterm=NONE
highlight Constant guifg=#af0f8f guibg=bg gui=NONE
          \ ctermfg=28 ctermbg=bg cterm=NONE
highlight Special guifg=#3f8fcf guibg=bg gui=NONE
          \ ctermfg=147 ctermbg=bg cterm=NONE
highlight Identifier guifg=#8f2faf guibg=bg gui=NONE
          \ ctermfg=214 ctermbg=bg cterm=NONE
highlight Statement guifg=#cf7f7f guibg=bg gui=NONE
          \ ctermfg=53 ctermbg=bg cterm=NONE
highlight PreProc guifg=#cf0f8f guibg=bg gui=NONE
          \ ctermfg=89 ctermbg=bg cterm=NONE
highlight type guifg=#9f7faf guibg=bg gui=NONE
          \ ctermfg=22 ctermbg=bg cterm=NONE
highlight underlined guifg=#8f5fff guibg=bg gui=underline
          \ ctermfg=29 ctermbg=bg cterm=underline
highlight Ignore guifg=#7f7f7f guibg=bg gui=NONE
          \ ctermfg=235 ctermbg=bg cterm=bold
highlight Error guifg=#af1f3f guibg=#ffdfdf gui=NONE
          \ ctermfg=197 ctermbg=219 cterm=underline
highlight Todo guifg=#af3fff guibg=#cf8fff gui=bold,underline
          \ ctermfg=25 ctermbg=250 cterm=bold,underline
highlight string guifg=#7f1fff guibg=bg gui=NONE
          \ ctermfg=125 ctermbg=bg cterm=NONE
" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
