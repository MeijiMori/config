" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" like a barcerk fuler

" #- reset-# "{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
" name: fLaeI
let g:colors_name = expand('<sfile>:t:r')


" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#0f0f0f gui=NONE
          \ ctermfg=255 ctermbg=233 cterm=NONE
highlight NonText guifg=#3f7f5f guibg=bg gui=bold
          \ ctermfg=29 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=69 ctermbg=bg cterm=bold
highlight Directory guifg=#1f8faf guibg=NONE gui=bold
          \ ctermfg=27 ctermbg=bg cterm=bold


" Search: "{{{
highlight IncSearch guifg=#0f3f5f guibg=#5f8fff gui=bold,underline
          \ ctermfg=24 ctermbg=75 cterm=bold,underline
highlight CurSearch guifg=#5f4f0f guibg=#ffcf5f gui=bold,underline
          \ ctermfg=58 ctermbg=220 cterm=bold,underline
highlight Search guifg=#0f5f3f guibg=#5fcfaf gui=bold,underline
          \ ctermfg=22 ctermbg=36 cterm=bold,underline



" Message: "{{{2
highlight MoreMsg guifg=#002f0f guibg=#3fcf5f gui=underline
          \ ctermfg=22 ctermbg=42 cterm=underline
highlight ModeMsg guifg=#000f2f guibg=#3f5fff gui=underline
          \ ctermfg=17 ctermbg=25 cterm=underline
highlight MsgArea guifg=#cfcfcf guibg=#0f0f2f gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#3f0f1f guibg=#af3f5f gui=underline
          \ ctermfg=52 ctermbg=126 cterm=underline
highlight WarningMsg guifg=#3f0f1f guibg=#af2f5f gui=underline
          \ ctermfg=94 ctermbg=220 cterm=NONE
highlight Question guifg=#0f3f0f guibg=#3f8f3f gui=NONE
          \ ctermfg=22 ctermbg=115 cterm=bold,underline
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#ffffff guibg=#0f3f8f gui=underline
          \ ctermfg=15 ctermbg=19 cterm=underline


" LineNr: "{{{2
highlight LineNr guifg=#9f4f7f guibg=NONE gui=NONE
          \ ctermfg=169 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=169 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=249 ctermbg=bg cterm=NONE



" Statusline: "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#0f0f0f gui=NONE
          \ ctermfg=255 ctermbg=232 cterm=NONE
highlight StatusLineNC guifg=#7f5f6f guibg=#cfafaf gui=NONE
          \ ctermfg=95 ctermbg=138 cterm=NONE
highlight StatusLineTerm guifg=#000f2f guibg=#cfccff gui=NONE
          \ ctermfg=235 ctermbg=189 cterm=NONE
highlight StatusLineTermNC guifg=#002f2f guibg=#8fafcf gui=NONE
          \ ctermfg=24 ctermbg=153 cterm=NONE



" }}}2


highlight VertSplit guifg=#6f6f6f guibg=bg gui=bold
          \ ctermfg=244 ctermbg=233 cterm=bold
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
          \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
          \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#2f7f8f guibg=bg gui=bold,underline
          \ ctermfg=23 ctermbg=bg cterm=bold



" Visual: "{{{2
highlight Visual guifg=#ffffcf guibg=#1f2f8f gui=NONE
          \ ctermfg=15 ctermbg=19 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f2f5f gui=underline,bold
          \ ctermfg=250 ctermbg=24 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#8f8f8f guibg=#1f1f1f gui=NONE
          \ ctermfg=242 ctermbg=233 cterm=NONE
highlight FoldColumn guifg=#2f5f5f guibg=#1a1a1f gui=bold
          \ ctermfg=25 ctermbg=233 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=#0f3f0f guibg=#3fefaf gui=NONE
          \ ctermfg=23 ctermbg=79 cterm=NONE
highlight DiffChange guifg=#3f3f0f guibg=#ffcf9f gui=NONE
          \ ctermfg=58 ctermbg=220 cterm=NONE
highlight DiffDelete guifg=#5f0f0f guibg=#ff5f8f gui=NONE
          \ ctermfg=52 ctermbg=198 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#3fcf8f guibg=bg gui=NONE
          \ ctermfg=71 ctermbg=bg cterm=NONE
highlight Added guifg=#2fcfff guibg=bg gui=NONE
          \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Changed guifg=#cfaf2f guibg=bg gui=NONE
          \ ctermfg=220 ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
          \ ctermfg=197 ctermbg=bg cterm=NONE


"}}}2


highlight SignColumn guifg=#0f0f0f guibg=#8f8f8f gui=NONE
          \ ctermfg=238 ctermbg=245 cterm=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
          \ ctermfg=52 ctermbg=124 cterm=NONE
highlight SpecialKey guifg=#3fafff guibg=bg gui=NONE
          \ ctermfg=39 ctermbg=bg cterm=NONE



" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=235 ctermbg=189 cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=235 ctermbg=189 cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=15 ctermbg=19 cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=25 ctermbg=38 cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#cfafff gui=bold
      \ ctermfg=52 ctermbg=219 cterm=NONE


" Toolbar: "{{{2
highlight ToolbarButton guifg=fg guibg=#2f2f3f gui=bold
          \ ctermfg=250 ctermbg=238 cterm=bold
highlight ToolbarLine guifg=fg guibg=#2f2f8f gui=NONE
          \ ctermfg=15 ctermbg=69 cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#ffffff guibg=#1f1f2f gui=None
                \ ctermfg=252 ctermbg=235 cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=72 ctermbg=80 cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#a98fc9 guibg=bg gui=undercurl
          \ ctermfg=126 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#3f5fcf guibg=bg gui=undercurl
          \ ctermfg=27 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#5fcf8f guibg=bg gui=undercurl
          \ ctermfg=35 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#cfbf5f guibg=bg gui=undercurl
          \ ctermfg=190 ctermbg=bg cterm=undercurl


" Pmenu: "{{{2
highlight Pmenu guifg=#afafaf guibg=#000000 gui=NONE
          \ ctermfg=249 ctermbg=233 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#0f0f2f gui=NONE
          \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuSbar guifg=fg guibg=#0f0f1f gui=NONE
          \ ctermfg=7 ctermbg=235 cterm=NONE
highlight PmenuThumb guifg=fg guibg=#2f5f3f gui=NONE
          \ ctermfg=16 ctermbg=71 cterm=NONE


" Tabline: "{{{2
highlight TabLine guifg=#5f5f5f guibg=#dfdfdf gui=underline
          \ ctermfg=236 ctermbg=252 cterm=underline
highlight TabLineFill guifg=#5f0f2f guibg=#dfdfdf gui=bold,underline
          \ ctermfg=88 ctermbg=252 cterm=bold,underline
highlight TabLineSel guifg=#cfcfcf guibg=#000f1f gui=NONE
          \ ctermfg=252 ctermbg=232 cterm=NONE


" Tabpanel: "{{{2
highlight TabPanel guifg=#cfcfcf guibg=#0f0f0f gui=None
          \ ctermfg=236 ctermbg=252 cterm=underline
highlight TabPanelFill guifg=#cfcfcf guibg=#0f0f1f gui=NONE
          \ ctermfg=88 ctermbg=252 cterm=bold,underline
highlight TabPanelSel guifg=#ffffff guibg=#0f2f5f gui=NONE
          \ ctermfg=252 ctermbg=232 cterm=NONE
highlight TabPanelTitle guifg=#cfffff guibg=#0f1f2f gui=NONE
          \ ctermfg=195 ctermbg=17 cterm=NONE


" Cursor: "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
          \ ctermfg=NONE ctermbg=253 cterm=NONE
highlight CursorColumn guifg=#cfcfcf guibg=#3f3f8f gui=NONE
          \ ctermfg=16 ctermbg=255 cterm=NONE
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
          \ ctermfg=22 ctermbg=115 cterm=NONE
highlight Cursor guifg=#000000 guibg=#2f7f5f gui=NONE
          \ ctermfg=232 ctermbg=29 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
          \ ctermfg=NONE ctermbg=250 cterm=NONE



" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af2f3f gui=NONE
          \ ctermfg=0 ctermbg=125 cterm=NONE
endif



" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#050a0f gui=NONE
          \ ctermfg=NONE ctermbg=232 cterm=NONE
highlight CursorLineNr guifg=#ff4f8f guibg=#ffcfef gui=NONE
          \ ctermfg=161 ctermbg=225 cterm=bold
highlight CursorLineSign guifg=NONE guibg=#8faf8f gui=bold
          \ ctermfg=254 ctermbg=71 cterm=bold
highlight CursorLineFold guifg=NONE guibg=#cfcfff gui=bold
          \ ctermfg=255 ctermbg=189 cterm=bold



" Terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=fg guibg=bg gui=NONE
                  \ ctermfg=fg ctermbg=bg cterm=NONE

  " Terminal color
  let g:terminal_ansi_colors = [
    \ "#0c0c0c", "#850f1f", "#13710e", "#819c00",
    \ "#00378a", "#881798", "#3a96dd", "#8f8f8f",
    \ "#767676", "#872836", "#16960c", "#6a7f84",
    \ "#3b789f", "#94005e", "#61d6d6", "#989898"
    \ ]
endif



" #- syntax highlighting groups -# "{{{1
highlight MatchParen guifg=#3f2f5f guibg=#8f8fff gui=bold,underline
          \ ctermfg=19 ctermbg=105 cterm=bold,underline
highlight comment guifg=#5f8fcf guibg=bg gui=NONE
          \ ctermfg=111 ctermbg=bg cterm=NONE
highlight Constant guifg=#5fcf8f guibg=bg gui=NONE
          \ ctermfg=47 ctermbg=bg cterm=NONE
highlight Special guifg=#afafcf guibg=bg gui=NONE
          \ ctermfg=250 ctermbg=bg cterm=NONE
highlight Identifier guifg=#ffcfaf guibg=bg gui=NONE
          \ ctermfg=222 ctermbg=bg cterm=NONE
highlight Statement guifg=#cf8fff guibg=bg gui=NONE
          \ ctermfg=135 ctermbg=bg cterm=NONE
highlight PreProc guifg=#cf5f8f guibg=bg gui=NONE
          \ ctermfg=168 ctermbg=bg cterm=NONE
highlight type guifg=#5fffaf guibg=bg gui=NONE
          \ ctermfg=49 ctermbg=bg cterm=NONE
highlight underlined guifg=#5fcf8f guibg=bg gui=underline
          \ ctermfg=35 ctermbg=bg cterm=underline
highlight Ignore guifg=#7f7f7f guibg=bg gui=bold
          \ ctermfg=242 ctermbg=bg cterm=bold
highlight Error guifg=#5f0f2f guibg=#af2f4f gui=NONE
          \ ctermfg=88 ctermbg=161 cterm=NONE
highlight Todo guifg=#5f5f5f guibg=#dfdfdf gui=bold,underline
          \ ctermfg=234 ctermbg=252 cterm=bold,underline
highlight string guifg=#af1f3f guibg=bg gui=NONE
          \ ctermfg=197 ctermbg=bg cterm=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


