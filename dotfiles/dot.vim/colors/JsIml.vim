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
highlight NonText guifg=#af7fff guibg=bg gui=bold
          \ ctermfg=35 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#cf2fff guibg=NONE gui=bold
          \ ctermfg=17 ctermbg=NONE cterm=bold


" Search: "{{{2
highlight CurSearch guifg=#3f0f3f guibg=#ff6fff gui=bold,underline
          \ ctermfg=161 ctermbg=170 cterm=bold,underline
highlight IncSearch guifg=#5f0f3f guibg=#cf5ff5 gui=bold,underline
          \ ctermfg=161 ctermbg=170 cterm=bold,underline
highlight Search guifg=#5f0f3f guibg=#cf7fff gui=bold,underline
          \ ctermfg=25 ctermbg=147 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#2f8f5f guibg=#dfffdf gui=NONE
          \ ctermfg=41 ctermbg=123 cterm=underline
highlight ModeMsg guifg=#8f0fcf guibg=#dfafff gui=NONE
          \ ctermfg=33 ctermbg=153 cterm=underline
highlight MsgArea guifg=#3f1f5f guibg=#e0c6ff gui=NONE
          \ ctermfg=33 ctermbg=153 cterm=underline
highlight ErrorMsg guifg=#8f2f4f guibg=#efbfff gui=NONE
          \ ctermfg=197 ctermbg=213 cterm=underline
highlight WarningMsg guifg=#af1fef guibg=#bf8fff gui=NONE
          \ ctermfg=125 ctermbg=219 cterm=underline
highlight Question guifg=#1faf5f guibg=#dfffdf gui=NONE
          \ ctermfg=22 ctermbg=121 cterm=underline
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#cfcfcf guibg=#0f1f3f gui=bold
          \ ctermfg=255 ctermbg=17 cterm=bold,underline


" LineNr: "{{{2
highlight LineNr guifg=#9f4f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE


" Statusline "{{{2
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
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
          \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
          \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#9f3faf guibg=bg gui=underline
          \ ctermfg=32 ctermbg=bg cterm=NONE


" Visual: "{{{2
highlight Visual guifg=#efefef guibg=#2f3f5f gui=NONE
          \ ctermfg=189 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#2f3f7f gui=underline,bold
          \ ctermfg=250 ctermbg=17 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#1f1f1f guibg=#af85ef gui=NONE
          \ ctermfg=235 ctermbg=250 cterm=NONE
highlight FoldColumn guifg=#5f2fdf guibg=#af86df gui=bold
          \ ctermfg=233 ctermbg=255 cterm=bold

" Diff: "{{{2
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


highlight SignColumn guifg=#0f0f0f guibg=#cfafff gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Conceal guifg=#0f0f0f guibg=#7ea3e6 gui=NONE
          \ ctermfg=fg ctermbg=39 cterm=NONE
highlight SpecialKey guifg=#ef5fff guibg=bg gui=NONE
          \ ctermfg=165 ctermbg=bg cterm=NONE


" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight PopupNotification guifg=#000000 guibg=#dfc6ff gui=NONE
          \ ctermfg=0 ctermbg=231 cterm=NONE
highlight PopupSelected guifg=#cfcfcf guibg=#2f2f3f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#cfcfcf guibg=#0f1f3f gui=bold
          \ ctermfg=255 ctermbg=17 cterm=bold,underline


" Quickfix: "{{{2
highlight QuickFixLine guifg=#000000 guibg=#efafff gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#000000 guibg=#af5fcf gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE


" Toolbar: "{{{2
highlight ToolbarButton guifg=#3f1f8f guibg=#afafff gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ToolbarLine guifg=#5f0f0f guibg=#df3fcf gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE



" Scrollbar: "{{{2
highlight Scrollbar guifg=#000000 guibg=#af5fcf gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE

" Spell: "{{{2
highlight SpellBad guifg=#593079 guibg=bg gui=undercurl
          \ ctermfg=54 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#304379 guibg=bg gui=undercurl
          \ ctermfg=20 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#307962 guibg=bg gui=undercurl
          \ ctermfg=29 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#796c30 guibg=bg gui=undercurl
          \ ctermfg=136 ctermbg=bg cterm=undercurl


" Pmenu "{{{2
highlight Pmenu guifg=fg guibg=#efdfff gui=NONE
          \ ctermfg=232 ctermbg=250 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#2f2f3f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE
highlight PmenuExtra  guifg=NONE guibg=#cfffcf gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight PmenuExtraSel guifg=NONE guibg=#3f5fff gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight PmenuMatch guifg=NONE guibg=#cfcfff gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight PmenuMatchSel guifg=NONE guibg=#3f8fcf gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
          \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuKind guifg=NONE guibg=#ffcfcf gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight PmenuKindSel guifg=NONE guibg=#5f8fff gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight ComplMatchIns guifg=#3f0f0f guibg=#af8fff gui=NONE
          \ ctermfg=gray ctermbg=gray cterm=NONE
highlight PmenuSbar guifg=fg guibg=#cfafff gui=NONE
          \ ctermfg=fg ctermbg=132 cterm=NONE
highlight PmenuThumb guifg=fg guibg=#dfcfef gui=NONE
          \ ctermfg=fg ctermbg=105 cterm=NONE

" Tabline: "{{{2
highlight TabLine guifg=#0f0f0f guibg=#cfafff gui=NONE
          \ ctermfg=250 ctermbg=232 cterm=NONE
highlight TabLineSel guifg=#cfcfcf guibg=#0f2f5f gui=NONE
          \ ctermfg=250 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#7f2faf guibg=#dfcfff gui=NONE
          \ ctermfg=196 ctermbg=232 cterm=NONE


" Tabpanel: "{{{2
highlight TabPanel guifg=#0f0f0f guibg=#cfafff gui=NONE
          \ ctermfg=250 ctermbg=232 cterm=NONE
highlight TabPanelSel guifg=#cfcfcf guibg=#0f2f5f gui=NONE
          \ ctermfg=250 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#7f2faf guibg=#dfcfff gui=NONE
          \ ctermfg=196 ctermbg=232 cterm=NONE
highlight TabPanelTitle guifg=#3f1f5f guibg=#efcfff gui=NONE
          \ ctermfg=232 ctermbg=244 cterm=NONE


" Cursor: "{{{2
highlight CursorColumn guifg=#000000 guibg=#afafef gui=NONE
          \ ctermfg=bg ctermbg=fg cterm=NONE
highlight ColorColumn guifg=#000000 guibg=#cfafff gui=NONE
          \ ctermfg=bg ctermbg=fg cterm=NONE
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
          \ ctermfg=fg ctermbg=39 cterm=NONE
highlight Cursor guifg=#000000 guibg=#8f5fff gui=NONE
          \ ctermfg=0 ctermbg=29 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
          \ ctermfg=NONE ctermbg=250 cterm=NONE


" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af2f3f gui=NONE
          \ ctermfg=0 ctermbg=89 cterm=NONE
endif


" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#af8ff5 gui=NONE
          \ ctermfg=NONE ctermbg=224 cterm=NONE
highlight CursorLineNr guifg=#9f4f7f guibg=#af8fff gui=NONE
          \ ctermfg=197 ctermbg=189 cterm=bold
highlight CursorLineFold guifg=#9f4f7f guibg=#af8fff gui=NONE
          \ ctermfg=197 ctermbg=189 cterm=bold
highlight CursorLineSign guifg=#9f4f7f guibg=#af8fff gui=NONE
          \ ctermfg=197 ctermbg=189 cterm=bold


" Terminal: "{{{2
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



" #- syntax highlighting groups -# "{{{1
highlight MatchParen guifg=#000000 guibg=#8f8fff gui=bold,underline
          \ ctermfg=232 ctermbg=26 cterm=bold,underline
highlight comment guifg=#2f8f5f guibg=bg gui=NONE
          \ ctermfg=25 ctermbg=bg cterm=NONE
highlight Constant guifg=#af0f8f guibg=bg gui=NONE
          \ ctermfg=28 ctermbg=bg cterm=NONE
highlight Special guifg=#3f8fcf guibg=bg gui=NONE
          \ ctermfg=147 ctermbg=bg cterm=NONE
highlight Identifier guifg=#8f2faf guibg=bg gui=NONE
          \ ctermfg=214 ctermbg=bg cterm=NONE
highlight Statement guifg=#cf5f2f guibg=bg gui=NONE
          \ ctermfg=53 ctermbg=bg cterm=NONE
highlight PreProc guifg=#cf0f8f guibg=bg gui=NONE
          \ ctermfg=89 ctermbg=bg cterm=NONE
highlight type guifg=#7f5f9f guibg=bg gui=NONE
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
