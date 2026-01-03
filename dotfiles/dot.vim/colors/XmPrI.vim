" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file

" #- reset -# "{{{1
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -# "{{{1
" name: XmPrI
let g:colors_name = expand('<sfile>:t:r')


" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#fdfdfd guibg=#2f1f2f gui=NONE
          \ ctermfg=255 ctermbg=53 cterm=NONE
highlight NonText guifg=#aaffaa guibg=NONE gui=NONE
          \ ctermfg=119 ctermbg=bg cterm=NONE
highlight EndOfBuffers guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=119 ctermbg=NONE cterm=NONE
highlight Directory guifg=#5f6fff guibg=NONE gui=bold
          \ ctermfg=69 ctermbg=bg cterm=bold



" Search: "{{{2
highlight IncSearch guifg=#000000 guibg=#6fafff gui=NONE
          \ ctermfg=17 ctermbg=75 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
          \ ctermfg=58 ctermbg=220 cterm=bold,underline
highlight Search guifg=#111111 guibg=#6f9fff gui=NONE
          \ ctermfg=22 ctermbg=154 cterm=bold,underline


" Message: {{{2
highlight MoreMsg guifg=#3f7fff guibg=NONE gui=NONE
          \ ctermfg=22 ctermbg=194 cterm=underline
highlight ModeMsg guifg=#3f6fff guibg=NONE gui=NONE
          \ ctermfg=17 ctermbg=117 cterm=underline
highlight MsgArea guifg=fg guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#ffafcf guibg=NONE gui=NONE
          \ ctermfg=52 ctermbg=225 cterm=underline
highlight WarningMsg guifg=#ff73bf guibg=NONE gui=NONE
          \ ctermfg=58 ctermbg=230 cterm=underline
highlight Question guifg=#cccccc guibg=bg gui=NONE
          \ ctermfg=238 ctermbg=251 cterm=underline
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#aaaaaa guibg=#1f2f5f gui=NONE
          \ ctermfg=15 ctermbg=17 cterm=underline,bold


" LineNr: "{{{2
highlight LineNr guifg=#bfbfaf guibg=NONE gui=NONE
          \ ctermfg=147 ctermbg=bg cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=251 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#cccccc guibg=#1f001f gui=NONE
          \ ctermfg=15 ctermbg=234 cterm=NONE
highlight StatusLineNC guifg=#4f3f3f guibg=#b2a089 gui=NONE
          \ ctermfg=95 ctermbg=145 cterm=NONE
highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
          \ ctermfg=250 ctermbg=234 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
          \ ctermfg=238 ctermbg=147 cterm=NONE
" }}}2


highlight VertSplit guifg=#ef5f8f guibg=#1f0f1f gui=NONE
          \ ctermfg=162 ctermbg=233 cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
          \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
          \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#2fd4c6 guibg=bg gui=NONE
          \ ctermfg=41 ctermbg=bg cterm=bold,underline


" Visual: "{{{2
highlight Visual guifg=#cdd0d3 guibg=#17334f gui=NONE
          \ ctermfg=15 ctermbg=20 cterm=NONE
highlight VisualNOS guifg=#3d3d3d guibg=#aaeeee gui=underline,bold
          \ ctermfg=253 ctermbg=27 cterm=underline,bold


" Fold: "{{{2
highlight Folded guifg=#efefef guibg=#3f1f4f gui=NONE
          \ ctermfg=255 ctermbg=235 cterm=NONE
highlight FoldColumn guifg=#ffffff guibg=#2f1f2f gui=bold
          \ ctermfg=253 ctermbg=53 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=#aacbde guibg=bg gui=NONE
          \ ctermfg=17 ctermbg=117 cterm=NONE
highlight DiffChange guifg=#998dbf guibg=bg gui=NONE
          \ ctermfg=58 ctermbg=215 cterm=NONE
highlight DiffDelete guifg=#a62c74 guibg=bg gui=NONE
          \ ctermfg=52 ctermbg=135 cterm=NONE
highlight DiffText guifg=#c9cbce guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
          \ ctermfg=30 ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
          \ ctermfg=69 ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
          \ ctermfg=142 ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
          \ ctermfg=90 ctermbg=bg cterm=NONE
" }}}2


highlight SignColumn guifg=fg guibg=#af3f5f gui=NONE
          \ ctermfg=52 ctermbg=198 cterm=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
          \ ctermfg=NONE ctermbg=198 cterm=NONE
highlight SpecialKey guifg=#554ffe guibg=NONE gui=NONE
          \ ctermfg=33 ctermbg=bg cterm=NONE



" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=16 ctermbg=189 cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=16 ctermbg=189 cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=15 ctermbg=21 cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=176 ctermbg=195 cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#cfafff gui=bold
      \ ctermfg=53 ctermbg=140 cterm=bold


" Toolbar: "{{{2
highlight ToolbarButton guifg=#5f5f8f guibg=#cfefff gui=bold
                \ ctermfg=17 ctermbg=153 cterm=NONE
highlight ToolbarLine guifg=fg guibg=#efcfff gui=NONE
                \ ctermfg=52 ctermbg=219 cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=236 ctermbg=252 cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=238 ctermbg=79 cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#af5fbf guibg=NONE gui=undercurl
          \ ctermfg=93 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#7f8fbf guibg=NONE gui=undercurl
          \ ctermfg=33 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#7fe9af guibg=NONE gui=undercurl
          \ ctermfg=29 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#bfaf7f guibg=NONE gui=undercurl
          \ ctermfg=172 ctermbg=bg cterm=undercurl


" Pmenu: "{{{2
highlight pmenu guifg=#2f2f2f guibg=#afafaf gui=NONE
          \ ctermfg=234 ctermbg=250 cterm=NONE
highlight PmenuSel guifg=#d2d2d2 guibg=#4f2f4f gui=NONE
          \ ctermfg=15 ctermbg=20 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
          \ ctermfg=234 ctermbg=250 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
          \ ctermfg=15 ctermbg=20 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfefff gui=NONE
          \ ctermfg=234 ctermbg=250 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
          \ ctermfg=234 ctermbg=250 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
          \ ctermfg=15 ctermbg=20 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
          \ ctermfg=234 ctermbg=250 cterm=NONE
highlight PmenuSbar guifg=#ffffff guibg=#4d2f4d gui=NONE
          \ ctermfg=231 ctermbg=55 cterm=NONE
highlight PmenuThumb guifg=#111111 guibg=#999999 gui=NONE
          \ ctermfg=231 ctermbg=240 cterm=NONE


" Tabline: "{{{2
highlight TabLine guifg=#000000 guibg=#cccccc gui=NONE
          \ ctermfg=235 ctermbg=250 cterm=NONE
highlight TabLineFill guifg=#aaaaaa guibg=#dddddd gui=NONE
          \ ctermfg=247 ctermbg=253  cterm=NONE
highlight TabLineSel guifg=#cccccc guibg=#1a3b6f gui=NONE
          \ ctermfg=15 ctermbg=20 cterm=NONE


" Tabpanel: "{{{2
highlight TabPanel guifg=#000000 guibg=#cccccc gui=NONE
          \ ctermfg=235 ctermbg=250 cterm=NONE
highlight TabPanelFill guifg=#aaaaaa guibg=#dddddd gui=NONE
          \ ctermfg=247 ctermbg=253  cterm=NONE
highlight TabPanelSel guifg=#cccccc guibg=#1a3b6f gui=NONE
          \ ctermfg=15 ctermbg=20 cterm=NONE
highlight TabPanelTitle guifg=#000000 guibg=#efefff gui=NONE
          \ ctermfg=235 ctermbg=252 cterm=NONE


" Cursor: "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
          \ ctermfg=15 ctermbg=189 cterm=NONE
highlight CursorColumn guifg=NONE guibg=bg gui=NONE
          \ ctermfg=15 ctermbg=237 cterm=NONE
highlight lCursor guifg=#000000 guibg=#7ea3a6 gui=NONE
          \ ctermfg=17 ctermbg=111 cterm=NONE
highlight Cursor guifg=#000000 guibg=#1f8f9f gui=NONE
          \ ctermfg=17 ctermbg=23 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
          \ ctermfg=NONE ctermbg=250 cterm=NONE



" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#ff425f gui=NONE
            \ ctermfg=16 ctermbg=197 cterm=NONE
endif

" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#2f2f5f gui=NONE
          \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight CursorLineNr guifg=#8f1f5f guibg=#efdfff gui=NONE
          \ ctermfg=57 ctermbg=16 cterm=bold
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



" #- syntax highlighting group -# "{{{1
highlight MatchParen guifg=#5f5f5f guibg=#7fafff gui=bold
          \ ctermfg=18 ctermbg=26 cterm=bold,underline
highlight comment guifg=#dfafff guibg=bg gui=NONE
          \ ctermfg=177 ctermbg=bg cterm=NONE
highlight Constant guifg=#aaeeaa guibg=bg gui=NONE
          \ ctermfg=162 ctermbg=bg cterm=NONE
highlight Special guifg=#deffed guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight Identifier guifg=#6fcfff guibg=bg gui=NONE
          \ ctermfg=45 ctermbg=bg cterm=NONE
highlight Statement guifg=#7fffef guibg=bg gui=NONE
          \ ctermfg=48 ctermbg=bg cterm=NONE
highlight PreProc guifg=#faadfe guibg=NONE gui=NONE
          \ ctermfg=213 ctermbg=bg cterm=NONE
highlight type guifg=#5fbfcf guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight underlined guifg=#669ffc guibg=NONE gui=underline
          \ ctermfg=27 ctermbg=bg cterm=underline
highlight Ignore guifg=#5f5f5f guibg=NONE gui=bold
          \ ctermfg=2 ctermbg=bg cterm=NONE
highlight Error guifg=#ff5faf guibg=bg gui=NONE
          \ ctermfg=9 ctermbg=bg cterm=NONE
highlight Todo guifg=#4e5ca0 guibg=#2f2f5f gui=bold
          \ ctermfg=161 ctermbg=233 cterm=bold,underline
highlight string guifg=#afffaf guibg=NONE gui=NONE
          \ ctermfg=183 ctermbg=bg cterm=NONE


" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


