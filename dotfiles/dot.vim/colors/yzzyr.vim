" #- vim colorscheme file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[<(*)>]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file
" Refer to my xyzzy theme


" #- color scheme reset -# "{{{1
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif


" #- This colorscheme theme name -# "{{{1
" name: yzzyr
let g:colors_name = expand('<sfile>:t:r')


" #- highligt groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#0a0f10 gui=NONE
                \ ctermfg=250 ctermbg=232 cterm=NONE
highlight NonText guifg=#3f3fff guibg=bg gui=bold
                \ ctermfg=63 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=63 ctermbg=NONE cterm=bold
highlight Directory guifg=#3f2fcf guibg=bg gui=bold
                \ ctermfg=57 ctermbg=bg cterm=bold


" Search: "{{{2
highlight IncSearch guifg=#2f1f4f guibg=#6f5faf gui=bold,underline
                \ ctermfg=53 ctermbg=99 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=100 ctermbg=221 cterm=bold,underline
highlight Search guifg=#4f1f2f guibg=#af5f6f gui=bold,underline
                \ ctermfg=52 ctermbg=205 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#000f2f guibg=#3f3fcf gui=underline
                \ ctermfg=17 ctermbg=69 cterm=underline
highlight ModeMsg guifg=#2f000f guibg=#cf3f3f gui=underline
                \ ctermfg=52 ctermbg=124 cterm=underline
highlight MsgArea guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#5f2f0f guibg=#ffaf8f gui=underline
                \ ctermfg=94 ctermbg=216 cterm=underline
highlight WarningMsg guifg=#bf5fbf guibg=#efcfcf gui=underline
                \ ctermfg=124 ctermbg=224 cterm=underline
highlight Question guifg=#0f3f0f guibg=#3faf3f gui=underline
                \ ctermfg=22 ctermbg=115 cterm=underline
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#cfcfcf guibg=#1f2f5f gui=underline
                \ ctermfg=15 ctermbg=18 cterm=underline



" LineNr: "{{{2
highlight LineNr guifg=#3f8f6f guibg=NONE gui=NONE
                \ ctermfg=35 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=92 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=245 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#0f1a1f gui=NONE
                \ ctermfg=255 ctermbg=233 cterm=NONE
highlight StatusLineNC guifg=#606080 guibg=#c8c8d8 gui=underline
                \ ctermfg=244 ctermbg=253 cterm=underline
highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
                \ ctermfg=250 ctermbg=235 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
                \ ctermfg=240 ctermbg=189 cterm=bold


" }}}2


highlight VertSplit guifg=#4f2f5f guibg=#1f1f1f gui=bold
                \ ctermfg=53 ctermbg=233 cterm=bold
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#b568a9 guibg=#0f0f2f gui=underline
                \ ctermfg=128 ctermbg=233 cterm=underline



" Visual: "{{{2
highlight Visual guifg=#dfdfdf guibg=#1f2f4f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight VisualNOS guifg=#2f2f2f guibg=#8f8fff gui=bold,underline
                \ ctermfg=17 ctermbg=105 cterm=bold,underline



" Fold: "{{{2
highlight Folded guifg=#cfcfff guibg=#000f0f gui=NONE
                \ ctermfg=251 ctermbg=0 cterm=NONE
highlight FoldColumn guifg=#3f3f5f guibg=#000f0f gui=bold
                \ ctermfg=238 ctermbg=0 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=#1f3f1f guibg=#4f9f4f gui=NONE
                \ ctermfg=23 ctermbg=35 cterm=NONE
highlight DiffChange guifg=#3f3f1f guibg=#9f9f4f gui=NONE
                \ ctermfg=58 ctermbg=179 cterm=NONE
highlight DiffDelete guifg=#3f1f1f guibg=#9f4f4f gui=bold
                \ ctermfg=52 ctermbg=170 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
                \ ctermfg=30 ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
                \ ctermfg=220 ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
                \ ctermfg=197 ctermbg=bg cterm=NONE
" }}}2



highlight SignColumn guifg=#0f0f0f  guibg=#8f8f8f gui=NONE
                \ ctermfg=236 ctermbg=247 cterm=NONE
highlight Conceal guifg=#a65774  guibg=bg gui=NONE
                \ ctermfg=52 ctermbg=125 cterm=NONE
highlight SpecialKey guifg=#8f5fff guibg=bg gui=NONE
                \ ctermfg=135 ctermbg=bg cterm=NONE


" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=235 ctermbg=189 cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=235 ctermbg=189 cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=15 ctermbg=19 cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=22 ctermbg=73 cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#cfafff gui=bold
      \ ctermfg=52 ctermbg=225 cterm=bold


" Toolbar: "{{{2
highlight ToolbarButton guifg=#5f5f8f guibg=#cfefff gui=bold
                \ ctermfg=27 ctermbg=153 cterm=NONE
highlight ToolbarLine guifg=fg guibg=#efcfff gui=NONE
                \ ctermfg=52 ctermbg=205 cterm=NONE


" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=232 ctermbg=255 cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=27 ctermbg=74 cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#795099 guibg=bg gui=undercurl
                \ ctermfg=98 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#506399 guibg=bg gui=undercurl
                \ ctermfg=179 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#509982 guibg=bg gui=undercurl
                \ ctermfg=78 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#998c50 guibg=bg gui=undercurl
                \ ctermfg=136 ctermbg=bg cterm=undercurl


" Pmenu: "{{{2
highlight Pmenu guifg=#dedede guibg=#0f1f30 gui=NONE
                \ ctermfg=252 ctermbg=234 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=252 ctermbg=234 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfefff gui=NONE
                \ ctermfg=252 ctermbg=234 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
                \ ctermfg=252 ctermbg=234 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
                \ ctermfg=252 ctermbg=19 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
                \ ctermfg=252 ctermbg=19 cterm=NONE
highlight PmenuSel guifg=#eeeeee guibg=#2f3f7f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight PmenuSbar guifg=#afafff guibg=#afafaf gui=NONE
                \ ctermfg=251 ctermbg=247 cterm=NONE
highlight PmenuThumb guifg=#3d3f3d guibg=#2f8f5f gui=NONE
                \ ctermfg=16 ctermbg=35 cterm=NONE


" Tabline: "{{{2
highlight TabLine guifg=#3f3f8f guibg=#0a000f gui=NONE
                \ ctermfg=63 ctermbg=232 cterm=NONE
highlight TabLineFill guifg=#3f5f6f guibg=#0a000f gui=bold,underline
                \ ctermfg=67 ctermbg=16 cterm=bold,underline
highlight TabLineSel guifg=#cfcfcf guibg=#3f3f5f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE



" Tabpanel: "{{{2
highlight TabPanel guifg=#afafcf guibg=#0a000f gui=NONE
                \ ctermfg=63 ctermbg=232 cterm=NONE
highlight TabPanelFill guifg=#3f5f6f guibg=#0a000f gui=bold,NONE
                \ ctermfg=67 ctermbg=16 cterm=bold,NONE
highlight TabPanelSel guifg=#cfcfcf guibg=#0f2f8f gui=NONE
                \ ctermfg=15 ctermbg=19 cterm=NONE
highlight TabPanelTitle guifg=#000000 guibg=#efefff gui=NONE
                \ ctermfg=232 ctermbg=244 cterm=NONE
highlight TabPanelSelMark guifg=#000000 guibg=#cfcfff gui=NONE
                \ ctermfg=232 ctermbg=244 cterm=NONE



" Cursor: "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
                \ ctermfg=240 ctermbg=189 cterm=NONE
highlight CursorColumn guifg=NONE guibg=bg gui=NONE
                \ ctermfg=255 ctermbg=189 cterm=NONE
highlight lCursor guifg=#000000 guibg=#fafbfb gui=NONE
                \ ctermfg=232 ctermbg=15 cterm=NONE
highlight Cursor guifg=#0f0f0f guibg=#afafff gui=NONE
                \ ctermfg=16 ctermbg=189 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE



" Cursor color for IME status "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#8f1f3f gui=NONE
                \ ctermfg=255 ctermbg=52 cterm=NONE
endif


" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#1f0f1f gui=NONE
                \ ctermfg=NONE ctermbg=233 cterm=NONE
highlight CursorLineNr guifg=#9f4f7f guibg=#af8fff gui=NONE
                \ ctermfg=88 ctermbg=183 cterm=bold
highlight CursorLineSign guifg=NONE guibg=#8faf8f gui=bold
                \ ctermfg=255 ctermbg=108 cterm=bold
highlight CursorLineFold guifg=NONE guibg=#cfcfff gui=bold
                \ ctermfg=255 ctermbg=189 cterm=bold



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




" #- Syntax highighting group -# "{{{1
highlight MatchParen guifg=#2f0f5f guibg=#8f63ad gui=bold,underline
                \ ctermfg=52 ctermbg=135 cterm=bold,underline
highlight comment guifg=#2f5faf guibg=bg gui=NONE
                \ ctermfg=26 ctermbg=bg cterm=NONE
highlight Constant guifg=#af2f5f guibg=bg gui=NONE
                \ ctermfg=125 ctermbg=bg cterm=NONE
highlight Special guifg=#afafff guibg=bg gui=NONE
                \ ctermfg=111 ctermbg=bg cterm=NONE
highlight Identifier guifg=#cf4f9f guibg=bg gui=NONE
                \ ctermfg=169 ctermbg=bg cterm=NONE
highlight Statement guifg=#ff7f6f guibg=bg gui=NONE
                \ ctermfg=203 ctermbg=bg cterm=NONE
highlight PreProc guifg=#5f5fff guibg=bg gui=NONE
                \ ctermfg=63 ctermbg=bg cterm=NONE
highlight Type guifg=#3fcf8f guibg=bg gui=NONE
                \ ctermfg=41 ctermbg=bg cterm=NONE
highlight underlined guifg=#0f3f0f guibg=#2f7f4f gui=underline
                \ ctermfg=22 ctermbg=79 cterm=underline
highlight Ignore guifg=#2f2f2f guibg=bg gui=bold
                \ ctermfg=238 ctermbg=bg cterm=bold
highlight Error guifg=#ff0f3f guibg=bg gui=NONE
                \ ctermfg=196 ctermbg=bg cterm=NONE
highlight Todo guifg=#5f6f8f guibg=#cfcfff gui=bold,underline
                \ ctermfg=63 ctermbg=252 cterm=bold,underline
highlight String guifg=#cf3f3f guibg=bg gui=NONE
                \ ctermfg=162 ctermbg=bg cterm=NONE


" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


