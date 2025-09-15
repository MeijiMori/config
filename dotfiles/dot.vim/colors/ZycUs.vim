" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date

" #- First remove all existing highlighting. -# "{{{1
set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    highlight clear
    if exists("syntax_on")
        syntax reset
    endif
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')
" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfbf guibg=#0f0f0f gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
highlight NonText guifg=#4f5fcf guibg=bg gui=bold
                \ ctermfg=12 ctermbg=bg cterm=bold
highlight EndOfBuffers guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#5f8fcf guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE


" Search: "{{{2
highlight IncSearch guifg=#000000 guibg=#8f9fff gui=bold
                \ ctermfg=25 ctermbg=39 cterm=bold
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#000000 guibg=#afcfff gui=bold
                \ ctermfg=23 ctermbg=51 cterm=bold


" Message: {{{2
highlight MoreMsg guifg=#1f7f3f guibg=#afffcf gui=NONE
                \ ctermfg=28 ctermbg=84 cterm=NONE
highlight ModeMsg guifg=#1f3f7f guibg=#8fafcf gui=NONE
                \ ctermfg=17 ctermbg=75 cterm=NONE
highlight MsgArea guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg gui=NONE guifg=#cf2f4f guibg=NONE
                \ ctermfg=196 ctermbg=bg cterm=NONE
highlight WarningMsg guifg=#cf2f4f guibg=bg gui=NONE
                \ ctermfg=160 ctermbg=NONE cterm=NONE
highlight Question guifg=#2fffcf guibg=bg gui=NONE
                \ ctermfg=43 ctermbg=NONE cterm=NONE
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#cfcfcf guibg=#0f0f2f gui=NONE
                \ ctermfg=7 ctermbg=17 cterm=NONE


" LineNr: "{{{2
highlight LineNr guifg=#ff8f7f guibg=NONE gui=NONE
                \ ctermfg=209 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
" Statusline: "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#0f1f2f gui=NONE
                \ ctermfg=7 ctermbg=17 cterm=NONE
highlight StatusLineNC guifg=#afafaf guibg=#2f0025 gui=NONE
                \ ctermfg=7 ctermbg=53 cterm=NONE
highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
                \ ctermfg=0 ctermbg=10 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
                \ ctermfg=96 ctermbg=183 cterm=NONE
" }}}2
highlight VertSplit guifg=#6f6f6f guibg=#dfdfdf gui=NONE
                \ ctermfg=246 ctermbg=255 cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#5fcfaf guibg=bg gui=NONE
                \ ctermfg=43 ctermbg=NONE cterm=NONE



" Visual: "{{{2
highlight Visual guifg=#ffffff guibg=#0f1f3f gui=NONE
                \ ctermfg=252 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#ffffff guibg=#3f4f7f gui=underline,bold
                \ ctermfg=7 ctermbg=12 cterm=underline,bold



" Fold: "{{{2
highlight Folded guifg=#3f5faf guibg=#0f0f2f gui=NONE
                \ ctermfg=63 ctermbg=17 cterm=NONE
highlight FoldColumn guifg=#2f2f8f guibg=#0f0f2f gui=bold
                \ ctermfg=26 ctermbg=17 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=#7fafff guibg=bg gui=NONE
                \ ctermfg=17 ctermbg=75 cterm=NONE
highlight DiffChange guifg=#ff8faf guibg=bg gui=NONE
                \ ctermfg=202 ctermbg=222 cterm=NONE
highlight DiffDelete guifg=#af5faf guibg=bg gui=bold
                \ ctermfg=1 ctermbg=206 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2
highlight SignColumn guifg=#cf4f8f guibg=bg gui=NONE
                \ ctermfg=126 ctermbg=bg cterm=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight SpecialKey guifg=#af2f5f guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=NONE cterm=NONE


" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=fg ctermbg=bg cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#cfafff gui=bold
      \ ctermfg=fg ctermbg=bg cterm=NONE


" Toolbar: "{{{2
highlight ToolbarButton guifg=#5f5f8f guibg=#cfefff gui=bold
                \ ctermfg=180 ctermbg=bg cterm=NONE
highlight ToolbarLine guifg=fg guibg=#efcfff gui=NONE
                \ ctermfg=180 ctermbg=bg cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#af5fcf guibg=bg gui=undercurl
                \ ctermfg=92 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#6f7fff guibg=bg gui=undercurl
                \ ctermfg=75 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#6fcf9f guibg=bg gui=undercurl
                \ ctermfg=114 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#8fdf6f guibg=bg gui=undercurl
                \ ctermfg=123 ctermbg=bg cterm=undercurl


" Pmenu: "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#bfbfcf gui=NONE
                \ ctermfg=234 ctermbg=253 cterm=NONE
highlight PmenuSel guifg=#dfdfdf guibg=#0f1f3f gui=NONE
                \ ctermfg=253 ctermbg=17 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfefff gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuSbar guifg=#cccccc guibg=#1f1f1f gui=NONE
                \ ctermfg=fg ctermbg=233 cterm=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#6f1f2f gui=NONE
                \ ctermfg=fg ctermbg=89 cterm=NONE

" Tabline: "{{{2
highlight TabLine guifg=#2f3f9f guibg=#0f0f1f gui=underline
                \ ctermfg=25 ctermbg=232 cterm=NONE
highlight TabLineSel guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#2f3f8f guibg=#0f0f1f gui=underline
                \ ctermfg=25 ctermbg=232 cterm=NONE


" Tabpine: "{{{2
highlight Tabpanel guifg=#2f3f9f guibg=#0f0f1f gui=NONE
                \ ctermfg=25 ctermbg=232 cterm=NONE
highlight TabPanelSel guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#2f3f8f guibg=#0f0f1f gui=NONE
                \ ctermfg=25 ctermbg=232 cterm=NONE
highlight TabPanelTitle guifg=#000000 guibg=#efefff gui=NONE
                \ ctermfg=232 ctermbg=244 cterm=NONE


" Cursor: "{{{2
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
                \ ctermfg=0 ctermbg=239 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=NONE ctermbg=18 cterm=NONE
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
highlight Cursor guifg=#000000 guibg=#bfbfbf gui=underline
                \ ctermfg=0 ctermbg=252 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE



" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af2f3f gui=NONE
endif



" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#0f1f2f gui=NONE
                \ ctermfg=NONE ctermbg=18 cterm=NONE
highlight CursorLineNr guifg=#9f4f7f guibg=#af8fff gui=NONE
                \ ctermfg=197 ctermbg=189 cterm=bold
highlight CursorLineFold guifg=NONE guibg=#cfcfff gui=bold
                \ ctermfg=93 ctermbg=16 cterm=bold
highlight CursorLineSign guifg=NONE guibg=#8faf8f gui=bold
                \ ctermfg=93 ctermbg=16 cterm=bold

" Terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=fg guibg=bg gui=NONE
                  \ ctermfg=fg ctermbg=bg cterm=NONE
  " Terminal color
  let g:terminal_ansi_colors = [
        \ "#0c0c0c", "#c50f1f", "#13a10e", "#c19c00",
        \ "#0037da", "#881798", "#3a96dd", "#cccccc",
        \ "#767676", "#e74856", "#16c60c", "#eadf84",
        \ "#3b78ff", "#b4009e", "#61d6d6", "#e8e8e8"
        \ ]

endif


" #- syntax highlighting groups -# "{{{1
highlight MatchParen guifg=#00000f guibg=#0f3faf gui=bold
                \ ctermfg=17 ctermbg=27 cterm=bold
highlight comment guifg=#0f3fcf guibg=bg gui=NONE
                \ ctermfg=26 ctermbg=bg cterm=NONE
highlight Constant guifg=#5f8fcf guibg=bg gui=NONE
                \ ctermfg=69 ctermbg=bg cterm=NONE
highlight Special guifg=#bfbfbf guibg=bg gui=NONE
                \ ctermfg=152 ctermbg=bg cterm=NONE
highlight Identifier guifg=#2faf9f guibg=NONE gui=NONE
                \ ctermfg=43 ctermbg=bg cterm=NONE
highlight Statement guifg=#3f2faf guibg=bg gui=NONE
                \ ctermfg=57 ctermbg=bg cterm=NONE
highlight PreProc guifg=#5fcf7f guibg=bg gui=NONE
                \ ctermfg=43 ctermbg=bg cterm=NONE
highlight type guifg=#2faf6f guibg=bg gui=NONE
                \ ctermfg=30 ctermbg=bg cterm=NONE
highlight underlined guifg=#2fcfaf guibg=bg gui=underline
                \ ctermfg=87 ctermbg=bg cterm=underline
highlight Ignore guifg=#2f7f4f guibg=bg gui=NONE
                \ ctermfg=23 ctermbg=bg cterm=NONE
highlight Error guifg=#ff4f8f guibg=bg gui=NONE
                \ ctermfg=198 ctermbg=bg cterm=NONE
highlight Todo guifg=#9f0f5f guibg=#bfbfcf gui=bold,underline
                \ ctermfg=198 ctermbg=250 cterm=bold,underline
highlight string guifg=#cf8faf guibg=bg gui=NONE
                \ ctermfg=177 ctermbg=bg cterm=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim



