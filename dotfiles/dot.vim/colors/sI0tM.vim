" #- vim color file -# "{{{1
" Note: "{{{2
" hilight ZenkakuSpace /　/
" matchparen ({[*]})
" This colorscheme is refer to RiALM


" #- Vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif


" #- colorscheme name -# "{{{1
" name: sI0tM
let colors_name = expand('<sfile>:t:r')


" #- highlighting groups various ooccasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#0f1f3f gui=NONE
          \ ctermfg=252 ctermbg=17 cterm=NONE
highlight NonText guifg=#3fafff guibg=bg gui=bold
          \ ctermfg=39 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#2f8fff guibg=bg gui=bold
          \ ctermfg=38 ctermbg=bg cterm=bold
highlight Directory guifg=#2f5fff guibg=bg gui=bold
          \ ctermfg=27 ctermbg=bg cterm=bold


" Search: "{{{2
highlight IncSearch guifg=#5f1f3f guibg=#cf5f8f gui=bold,underline
          \ ctermfg=52 ctermbg=200 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
          \ ctermfg=58 ctermbg=221 cterm=bold,underline
highlight Search guifg=#0f1f3f guibg=#2f8fff gui=bold,underline
          \ ctermfg=17 ctermbg=75 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#0f3f6f guibg=#2f7fbf gui=underline
          \ ctermfg=17 ctermbg=33 cterm=underline
highlight ModeMsg guifg=#3f3f3f guibg=#afafaf gui=underline
          \ ctermfg=239 ctermbg=250 cterm=underline
highlight MsgArea guifg=#ffffff guibg=#1f2f5f gui=NONE
          \ ctermfg=fg ctermbg=18 cterm=NONE
highlight ErrorMsg guifg=#3f1f0f guibg=#ffafcf gui=underline
          \ ctermfg=52 ctermbg=200 cterm=underline
highlight WarningMsg guifg=#af1f3f guibg=#cf5fff gui=underline
          \ ctermfg=136 ctermbg=222 cterm=underline
highlight Question guifg=#2f5f3f guibg=#0fbf8f gui=underline
          \ ctermfg=22 ctermbg=72 cterm=underline
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#ffffff guibg=#0f3faf gui=bold,underline
          \ ctermfg=15 ctermbg=19 cterm=underline


" LineNr: "{{{2
highlight LineNr guifg=#2fd99d guibg=NONE gui=NONE
          \ ctermfg=43 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=197 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=248 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#ffffff guibg=#1f2f5f gui=NONE
          \ ctermfg=255 ctermbg=16 cterm=NONE
highlight StatusLineNC guifg=#4f3f5f guibg=#bfafcf gui=NONE
          \ ctermfg=59 ctermbg=138 cterm=NONE
highlight StatusLineTerm guifg=#0f2f8f guibg=#afcfff gui=NONE
          \ ctermfg=25 ctermbg=153 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
          \ ctermfg=96 ctermbg=183 cterm=NONE


" }}}2


highlight VertSplit guifg=#5f5fff guibg=bg gui=NONE
          \ ctermfg=62 ctermbg=bg cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
          \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
          \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#3f8f5f guibg=#cfcfff gui=bold,underline
          \ ctermfg=25 ctermbg=255 cterm=bold,underline


" Visual: "{{{2
highlight Visual guifg=#ffffff guibg=#1f2f8f gui=NONE
          \ ctermfg=15 ctermbg=19 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#0f2f5f gui=underline,bold
          \ ctermfg=15 ctermbg=27 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#0f0f3f guibg=#8f9fff gui=NONE
          \ ctermfg=17 ctermbg=111 cterm=NONE
highlight FoldColumn guifg=#1f8fff guibg=#1a2a5a gui=bold
          \ ctermfg=27 ctermbg=bg cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=#1f3f2f guibg=#5fcfaf gui=NONE
          \ ctermfg=22 ctermbg=77 cterm=NONE
highlight DiffChange guifg=#2f3f1f guibg=#cfaf5f gui=NONE
          \ ctermfg=58 ctermbg=178 cterm=NONE
highlight DiffDelete guifg=#3f2f1f guibg=#cf5faf gui=NONE
          \ ctermfg=52 ctermbg=133 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
          \ ctermfg=41 ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
          \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
          \ ctermfg=179 ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
          \ ctermfg=161 ctermbg=bg cterm=NONE


" }}}2


highlight SignColumn guifg=#ffffff guibg=#1f3fcf gui=NONE
          \ ctermfg=250 ctermbg=27 cterm=bold
highlight Conceal guifg=#ffffff guibg=#efef0f gui=NONE
          \ ctermfg=100 ctermbg=228 cterm=bold
highlight SpecialKey guifg=#5f5fff guibg=NONE gui=NONE
          \ ctermfg=63 ctermbg=bg cterm=NONE


" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=235 ctermbg=189 cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=235 ctermbg=189 cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=15 ctermbg=20 cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=17 ctermbg=75 cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f3f guibg=#8fcfff gui=bold
      \ ctermfg=17 ctermbg=27 cterm=bold


" Toolbar: "{{{2
highlight ToolbarButton guifg=#0f0f0f guibg=#8f8fff gui=NONE
                \ ctermfg=53 ctermbg=141 cterm=NONE
highlight ToolbarLine guifg=#0f0f0f guibg=#5f8fff gui=NONE
                \ ctermfg=17 ctermbg=69 cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#ffffff guibg=#2f2f8f gui=None
                \ ctermfg=15 ctermbg=27 cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=17 ctermbg=43 cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#cf5fdf guibg=bg gui=undercurl
          \ ctermfg=126 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#5f9fff guibg=bg gui=undercurl
          \ ctermfg=27 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#5fff8f guibg=bg gui=undercurl
          \ ctermfg=47 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#ffcf5f guibg=bg gui=undercurl
          \ ctermfg=226 ctermbg=bg cterm=undercurl


" Pmenu: "{{{2
highlight pmenu guifg=#0f0f0f guibg=#afafcf gui=NONE
          \ ctermfg=235 ctermbg=250 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
          \ ctermfg=235 ctermbg=250 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
          \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuKind guifg=#0f0f0f guibg=#cfcfff gui=NONE
          \ ctermfg=235 ctermbg=250 cterm=NONE
highlight PmenuKindSel guifg=#ffffff guibg=#003f8f gui=NONE
          \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#efefef gui=NONE
          \ ctermfg=235 ctermbg=250 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
          \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
          \ ctermfg=235 ctermbg=250 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
          \ ctermfg=235 ctermbg=250 cterm=NONE
highlight PmenuSel guifg=#ffffff guibg=#0f3f8f gui=NONE
          \ ctermfg=15 ctermbg=19 cterm=NONE
highlight pmenuSbar guifg=fg guibg=#0f1f2f gui=NONE
          \ ctermfg=250 ctermbg=235 cterm=NONE
highlight PmenuThumb guifg=#ffffff guibg=#0f7f3f gui=NONE
          \ ctermfg=15 ctermbg=29 cterm=NONE


" Tabline: "{{{2
highlight TabLine guifg=#cfcfcf guibg=#0f1f3f gui=underline
          \ ctermfg=250 ctermbg=17 cterm=underline
highlight TabLineFill guifg=#ff3f5f guibg=#0f1f3f gui=bold
          \ ctermfg=198 ctermbg=17 cterm=bold
highlight TabLineSel guifg=#ffffff guibg=#15308f gui=NONE
          \ ctermfg=15 ctermbg=27 cterm=NONE


" Tabpanel: "{{{2
highlight TabPanel guifg=#cfcfcf guibg=#0f0f3f gui=NONE
                \ ctermfg=250 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#ff0fff guibg=#0f0f4f gui=NONE
                \ ctermfg=198 ctermbg=17 cterm=NONE
highlight TabPanelSel guifg=#ffffff guibg=#0f3f8f gui=NONE
                \ ctermfg=15 ctermbg=27 cterm=NONE
highlight TabPanelTitle guifg=#ffffff guibg=#0f3faf gui=NONE
                \ ctermfg=252 ctermbg=75 cterm=NONE


" Cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
          \ ctermfg=226 ctermbg=189 cterm=NONE
highlight CursorColumn guifg=NONE guibg=grey40 gui=NONE
          \ ctermfg=NONE ctermbg=248 cterm=NONE
highlight lCursor guifg=#000000 guibg=#5fcfaf gui=NONE
          \ ctermfg=22 ctermbg=43 cterm=NONE
highlight Cursor guifg=#000000 guibg=#2f9f5f gui=NONE
          \ ctermfg=16 ctermbg=35 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
          \ ctermfg=NONE ctermbg=250 cterm=NONE


" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#bfbfbf guibg=#5f0f3f gui=NONE
          \ ctermfg=16 ctermbg=124 cterm=NONE
endif


" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#1f2f7f gui=NONE
          \ ctermfg=NONE ctermbg=20 cterm=NONE
highlight CursorLineNr guifg=#0f0fff guibg=#afafff gui=NONE
          \ ctermfg=17 ctermbg=69 cterm=NONE
highlight CursorLineSign guifg=#0f0f0f guibg=#8faf8f gui=bold
          \ ctermfg=23 ctermbg=78 cterm=bold
highlight CursorLineFold guifg=#0f0f3f guibg=#cfcfff gui=bold
          \ ctermfg=236 ctermbg=255 cterm=bold


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
highlight MatchParen guifg=#3f3f5f guibg=#8f8fff gui=underline
          \ ctermfg=17 ctermbg=63 cterm=underline,bold
highlight comment guifg=#3fafff guibg=bg gui=NONE
          \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Constant guifg=#7fffaf guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight Special guifg=#deffed guibg=bg gui=NONE
          \ ctermfg=159 ctermbg=bg cterm=NONE
highlight Identifier guifg=#ffbf9f guibg=bg gui=NONE
          \ ctermfg=215 ctermbg=bg cterm=NONE
highlight Statement guifg=#2fcfaf guibg=bg gui=NONE
          \ ctermfg=36 ctermbg=bg cterm=NONE
highlight PreProc guifg=#af2fff guibg=bg gui=NONE
          \ ctermfg=129 ctermbg=bg cterm=NONE
highlight type guifg=#5fcfaf guibg=bg gui=NONE
          \ ctermfg=40 ctermbg=bg cterm=NONE
highlight underlined guifg=#56efcc guibg=bg gui=underline
          \ ctermfg=50 ctermbg=bg cterm=underline
highlight Ignore guifg=#1fafff guibg=bg gui=bold
          \ ctermfg=20 ctermbg=bg cterm=bold
highlight Error guifg=#fd4899 guibg=bg gui=NONE
          \ ctermfg=9 ctermbg=bg cterm=NONE
highlight Todo guifg=#af7fcf guibg=#cfcfff gui=bold,underline
          \ ctermfg=124 ctermbg=189 cterm=bold,underline
highlight string guifg=#2f8fff guibg=bg gui=NONE
          \ ctermfg=33 ctermbg=bg cterm=NONE


" #- User -# "{{{1
highlight User1 guifg=#afafaf guibg=#2f2f2f gui=NONE
                \ ctermfg=251 ctermbg=236 cterm=NONE
highlight User2 guifg=#0f0f3f guibg=#0f3f8f gui=NONE
                \ ctermfg=17 ctermbg=27 cterm=NONE
highlight User3 guifg=#0f3f0f guibg=#0f8f3f gui=NONE
                \ ctermfg=22 ctermbg=35 cterm=NONE
highlight User4 guifg=#3f2f0f guibg=#8f3f0f gui=NONE
                \ ctermfg=174 ctermbg=94 cterm=NONE
highlight User5 guifg=#3f0f0f guibg=#8f0f3f gui=NONE
                \ ctermfg=88 ctermbg=125 cterm=NONE
highlight User6 guifg=#5f5f0f guibg=#8f8f0f gui=NONE
                \ ctermfg=94 ctermbg=229 cterm=NONE
highlight User7 guifg=#5f0f5f guibg=#8f3f8f gui=NONE
                \ ctermfg=88 ctermbg=201 cterm=NONE
highlight User8 guifg=#3f5f3f guibg=#8f8f5f gui=NONE
                \ ctermfg=130 ctermbg=222 cterm=NONE
highlight User9 guifg=#5f5f5f guibg=#afafcf gui=NONE
                \ ctermfg=244 ctermbg=189 cterm=NONE
" #- END: -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


