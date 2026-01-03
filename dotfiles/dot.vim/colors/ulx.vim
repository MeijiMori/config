" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}"
" highlighting ZenkakuSpace /　/
" Gui colorscheme file


" #- reset -# "{{{1
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif


" #- Colorscheme name -# "{{{1
" name: ulx
let g:colors_name=expand('<sfile>:t:r')


" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#1f1f1f gui=NONE
                \ ctermfg=15 ctermbg=232 cterm=NONE
highlight NonText guifg=#add8e6 guibg=#2f2f2f gui=bold
                \ ctermfg=123 ctermbg=235 cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=69 ctermbg=NONE cterm=bold
highlight Directory guifg=#3f3fff guibg=bg gui=bold
                \ ctermfg=63 ctermbg=bg cterm=bold



" Search: "{{{2
highlight IncSearch guifg=#0f2f4f guibg=#5f8faf gui=underline
                \ ctermfg=52 ctermbg=205 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=136 ctermbg=220 cterm=bold,underline
highlight Search guifg=#0f3f0f guibg=#5faf5f gui=underline
                \ ctermfg=17 ctermbg=75 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#0f5f2f guibg=#5faf7f gui=underline
                \ ctermfg=22 ctermbg=35 cterm=underline
highlight ModeMsg guifg=#2f2f2f guibg=#afafbf gui=underline
                \ ctermfg=0 ctermbg=247 cterm=underline
highlight MsgArea guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#4f1f1f guibg=#cf4f7f gui=underline
                \ ctermfg=52 ctermbg=198 cterm=underline
highlight WarningMsg guifg=#5f2f0f guibg=#ff7f6f gui=underline
                \ ctermfg=94 ctermbg=226 cterm=underline
highlight Question guifg=#1f2f5f guibg=#2f5f8f gui=underline
                \ ctermfg=17 ctermbg=75 cterm=underline
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#ffffff guibg=#0f1f3f gui=underline
                \ ctermfg=255 ctermbg=17 cterm=underline


" LineNr: "{{{2
highlight LineNr guifg=#8fffaf guibg=NONE gui=NONE
                \ ctermfg=120 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=99 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=246 ctermbg=bg cterm=NONE



" Statusline: "{{{2
highlight StatusLine guifg=#afafff guibg=#2f2f3f gui=NONE
                \ ctermfg=153 ctermbg=234 cterm=NONE
highlight StatusLineNC guifg=#7f7f7f guibg=#c2bfd5 gui=NONE
                \ ctermfg=244 ctermbg=252 cterm=NONE
highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
                \ ctermfg=253 ctermbg=233 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
                \ ctermfg=95 ctermbg=103 cterm=NONE


"}}}2


highlight VertSplit guifg=#7f7f7f guibg=#afafcf gui=NONE
                \ ctermfg=240 ctermbg=246 cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#cd5c5c guibg=#0f0f0f gui=bold,underline
                \ ctermfg=166 ctermbg=0 cterm=bold,underline


" Visual: "{{{2
highlight Visual guifg=#cfcfcf guibg=#101a3f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f2f4f gui=bold,underline
                \ ctermfg=15 ctermbg=24 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#2f2f2f guibg=#afafcf gui=NONE
                \ ctermfg=237 ctermbg=189 cterm=NONE
highlight FoldColumn guifg=#8f8faf guibg=NONE gui=bold
                \ ctermfg=249 ctermbg=NONE cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=#0f0f0f guibg=#8fcfcf gui=NONE
                \ ctermfg=233 ctermbg=153 cterm=NONE
highlight DiffChange guifg=#0f0f0f guibg=#afff4f gui=NONE
                \ ctermfg=233 ctermbg=154 cterm=NONE
highlight DiffDelete guifg=#0f0f0f guibg=#cf5faf gui=NONE
                \ ctermfg=233 ctermbg=205 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
                \ ctermfg=29 ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
                \ ctermfg=178 ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
                \ ctermfg=198 ctermbg=bg cterm=NONE
" }}}2


highlight SignColumn guifg=#ffffff guibg=#1f3f3f gui=NONE
                \ ctermfg=255 ctermbg=23 cterm=NONE
highlight Conceal guifg=#ffffb0 guibg=bg gui=NONE
                \ ctermfg=241 ctermbg=236 cterm=NONE
highlight SpecialKey guifg=#9acd32 guibg=bg gui=NONE
                \ ctermfg=77 ctermbg=bg cterm=NONE


" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=235 ctermbg=189 cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=235 ctermbg=189 cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=15 ctermbg=19 cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=24 ctermbg=37 cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#cfafff gui=bold
      \ ctermfg=52 ctermbg=183 cterm=bold


" Toolbar: "{{{2
highlight ToolbarButton guifg=#5f5f8f guibg=#cfefff gui=bold
                \ ctermfg=27 ctermbg=153 cterm=bold
highlight ToolbarLine guifg=fg guibg=#efcfff gui=NONE
                \ ctermfg=88 ctermbg=219 cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=235 ctermbg=252 cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#cf5faf guibg=bg gui=undercurl
                \ ctermfg=133 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#af5fcf guibg=bg gui=undercurl
                \ ctermfg=135 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#5fcfaf guibg=bg gui=undercurl
                \ ctermfg=43 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#cfaf5f guibg=bg gui=undercurl
                \ ctermfg=227 ctermbg=bg cterm=undercurl


" Pmenu: "{{{2
highlight Pmenu guifg=#cfcfcf guibg=#0a0a0f gui=NONE
                \ ctermfg=231 ctermbg=16 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#cccccc guibg=#1f1f2f gui=NONE
                \ ctermfg=fg ctermbg=235 cterm=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#6f2f3f gui=NONE
                \ ctermfg=fg ctermbg=132 cterm=NONE


" Tabline: "{{{2
highlight TabLine guifg=#afafaf guibg=#0f0f1f gui=underline
                \ ctermfg=250 ctermbg=233 cterm=underline
highlight TabLineFill guifg=#af5faf guibg=#0f0f1f gui=NONE
                \ ctermfg=169 ctermbg=233 cterm=NONE
highlight TabLineSel guifg=#cfcfff guibg=#0f1f3f gui=NONE
                \ ctermfg=252 ctermbg=17 cterm=NONE


" Tabpanel: "{{{2
highlight TabPanel guifg=#afafaf guibg=#0f0f1f gui=NONE
                \ ctermfg=250 ctermbg=233 cterm=NONE
highlight TabPanelFill guifg=#af5faf guibg=#0f0f1f gui=NONE
                \ ctermfg=169 ctermbg=233 cterm=NONE
highlight TabPanelSel guifg=#cfcfff guibg=#0f1f3f gui=NONE
                \ ctermfg=252 ctermbg=17 cterm=NONE
highlight TabPanelTitle guifg=#000000 guibg=#efefff gui=NONE
                \ ctermfg=232 ctermbg=251 cterm=NONE


" Cursor: "{{{2
highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=NONE ctermbg=27 cterm=NONE
highlight CursorColumn guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=147 ctermbg=27 cterm=NONE
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
                \ ctermfg=23 ctermbg=151 cterm=NONE
highlight Cursor guifg=#ffffff guibg=#1f5f3f gui=NONE
                \ ctermfg=255 ctermbg=22 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE


"IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#cfcfcf guibg=#3f001f gui=NONE
                \ ctermfg=255 ctermbg=88 cterm=NONE
endif


" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#1f1f2f gui=NONE
      \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight CursorLineNr guifg=#af8fff guibg=NONE gui=NONE
      \ ctermfg=147 ctermbg=NONE cterm=NONE
highlight CursorLineSign guifg=NONE guibg=#8faf8f gui=bold
      \ ctermfg=253 ctermbg=109 cterm=bold
highlight CursorLineFold guifg=NONE guibg=#cfcfff gui=bold
      \ ctermfg=247 ctermbg=189 cterm=bold



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


" #- Syntax highlighting group -# "{{{1
highlight MatchParen guifg=#0f3f5f guibg=#3f5f8f gui=bold,underline
                \ ctermfg=17 ctermbg=68 cterm=bold,underline
highlight comment guifg=#5f8fff guibg=bg gui=NONE
                \ ctermfg=69 ctermbg=bg cterm=NONE
highlight Constant guifg=#8f8fff guibg=bg gui=NONE
                \ ctermfg=105 ctermbg=bg cterm=NONE
highlight Special guifg=#ffdfaf guibg=bg gui=NONE
                \ ctermfg=223 ctermbg=bg cterm=NONE
highlight Identifier guifg=#cf8fff guibg=bg gui=NONE
                \ ctermfg=177 ctermbg=bg cterm=NONE
highlight Statement guifg=#2fbf6f guibg=bg gui=NONE
                \ ctermfg=35 ctermbg=bg cterm=NONE
highlight PreProc guifg=#cf5f8f guibg=bg gui=NONE
                \ ctermfg=169 ctermbg=bg cterm=NONE
highlight Type guifg=#5f5fff guibg=bg gui=NONE
                \ ctermfg=63 ctermbg=bg cterm=NONE
highlight Underlined guifg=#80a0ff guibg=bg gui=underline
                \ ctermfg=111 ctermbg=bg cterm=underline
highlight Ignore guifg=#666666 guibg=bg gui=bold
                \ ctermfg=243 ctermbg=bg cterm=bold
highlight Error guifg=#f03f5e guibg=NONE gui=underline
                \ ctermfg=9 ctermbg=bg cterm=underline
highlight Todo guifg=#3f3f3f guibg=#afafff gui=bold,underline
                \ ctermfg=235 ctermbg=246 cterm=bold,underline
highlight string guifg=#ff5f5f guibg=bg gui=NONE
                \ ctermfg=209 ctermbg=bg cterm=NONE


" #- hl-User -# "{{{1
highlight User1 guifg=#3f3f3f guibg=#cfcfff gui=NONE
                \ ctermfg=232 ctermbg=250 cterm=NONE
highlight User2 guifg=#5f5f5f guibg=#afafff gui=NONE
                \ ctermfg=237 ctermbg=248 cterm=NONE
highlight User3 guifg=#afafff guibg=#2f2f3f gui=NONE
                \ ctermfg=247 ctermbg=235 cterm=NONE
highlight User4 guifg=#5f2f5f guibg=#cfafff gui=NONE
                \ ctermfg=165 ctermbg=183 cterm=NONE
highlight User5 guifg=#2f5f5f guibg=#afcfff gui=NONE
                \ ctermfg=121 ctermbg=158 cterm=NONE
highlight User6 guifg=#2f2f5f guibg=#5f5faf gui=NONE
                \ ctermfg=17 ctermbg=105 cterm=NONE
highlight User7 guifg=#5f2f2f guibg=#af5f5f gui=NONE
                \ ctermfg=124 ctermbg=168 cterm=NONE
highlight User8 guifg=#2f5f2f guibg=#5faf5f gui=NONE
                \ ctermfg=35 ctermbg=83 cterm=NONE
highlight User9 guifg=#5f5f2f guibg=#afaf5f gui=NONE
                \ ctermfg=53 ctermbg=141 cterm=NONE



" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


