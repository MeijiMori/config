" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" White and Black


"}}}1
" #- reset -# "{{{1
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif


" #- This colorscheme name -# "{{{1
" name: wab
let g:colors_name = expand('<sfile>:t:r')


" #- check -# "{{{1
let s:is_wab_t=1
if exists('g:' . 'is_wab')
  if g:is_wab == 'black'
    let s:is_wab_t=1
    set background=dark
  elseif g:is_wab == 'white'
    let s:is_wab_t=0
    set background=light
  endif
else
  let s:is_wab_t=0
endif


" #- Highlighting groups for various occasions -# "{{{1
if s:is_wab_t
  "Dark: "{{{2
  highlight Normal guifg=#cfcfcf guibg=#0f0f0f gui=NONE
        \ ctermfg=253 ctermbg=232 cterm=NONE
  highlight NonText guifg=#8f8f8f guibg=bg gui=bold
        \ ctermfg=244 ctermbg=bg cterm=bold
  highlight EndOfBuffer guifg=#afafaf guibg=bg gui=bold
        \ ctermfg=248 ctermbg=bg cterm=bold
  highlight Directory guifg=#8f8f8f guibg=bg gui=bold
        \ ctermfg=244 ctermbg=bg cterm=bold


  " Search: "{{{3
  highlight IncSearch guifg=#000000 guibg=#afafaf gui=bold,underline
        \ ctermfg=235 ctermbg=249 cterm=bold,underline
  highlight CurSearch guifg=#5f5f5f guibg=#dfdfdf gui=bold,underline
        \ ctermfg=239 ctermbg=253 cterm=bold,underline
  highlight Search guifg=#000000 guibg=#efefef gui=bold,underline
        \ ctermfg=234 ctermbg=15 cterm=bold,underline


  " Message: "{{{3
  highlight MoreMsg guifg=#2f2f2f guibg=#afafaf gui=NONE
        \ ctermfg=237 ctermbg=246 cterm=NONE
  highlight ModeMsg guifg=#0f0f0f guibg=#efefef gui=NONE
        \ ctermfg=237 ctermbg=255 cterm=NONE
  highlight MsgArea guifg=fg guibg=bg gui=NONE
        \ ctermfg=fg ctermbg=bg cterm=NONE
  highlight ErrorMsg guifg=#cfcfcf guibg=#3f3f3f gui=NONE
        \ ctermfg=248 ctermbg=235 cterm=NONE
  highlight WarningMsg guifg=#0f0f0f guibg=#efefef gui=NONE
        \ ctermfg=235 ctermbg=255 cterm=NONE
  highlight Question guifg=#3f3f3f guibg=#bfbfbf gui=NONE
        \ ctermfg=237 ctermbg=248 cterm=NONE
  highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
        \ ctermfg=237 ctermbg=248 cterm=NONE
  highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
        \ ctermfg=237 ctermbg=248 cterm=NONE
  highlight WildMenu guifg=#3f3f3f guibg=#ffffff gui=NONE
        \ ctermfg=235 ctermbg=255 cterm=NONE


  " LineNr: "{{{3
  highlight LineNr guifg=#1f1f1f guibg=#afafaf gui=NONE
        \ ctermfg=235 ctermbg=247 cterm=NONE
  highlight LineNrAbove guifg=#efefef guibg=#2f2f2f gui=NONE
        \ ctermfg=253 ctermbg=236 cterm=NONE
  highlight LineNrBelow guifg=#afafaf guibg=#2f2f2f gui=NONE
        \ ctermfg=251 ctermbg=233 cterm=NONE



  " Statusline "{{{3
  highlight StatusLine guifg=#afafaf guibg=#1f1f1f gui=NONE
        \ ctermfg=250 ctermbg=235 cterm=NONE
  highlight StatusLineNC guifg=#6f6f6f guibg=#cfcfcf gui=NONE
        \ ctermfg=238 ctermbg=253 cterm=NONE
  highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
        \ ctermfg=251 ctermbg=234 cterm=NONE
  highlight StatusLineTermNC guifg=#565234 guibg=#cfcfcf gui=NONE
        \ ctermfg=239 ctermbg=250 cterm=NONE


  "}}}3

  highlight VertSplit guifg=#3f3f3f guibg=#3f3f3f
        \ ctermfg=235 ctermbg=235 cterm=NONE
  highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
        \ ctermfg=235 ctermbg=235 cterm=NONE
  highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
        \ ctermfg=235 ctermbg=235 cterm=NONE
  highlight Title guifg=#5f5f5f guibg=#cfcfcf gui=bold,underline
        \ ctermfg=241 ctermbg=252 cterm=bold,underline


  " Visual: "{{{3
  highlight Visual guifg=#8f8f8f guibg=#efefef gui=NONE
        \ ctermfg=246 ctermbg=254 cterm=NONE
  highlight VisualNOS guifg=#8f8f8f guibg=#dfdfdf gui=bold
        \ ctermfg=244 ctermbg=250 cterm=NONE



  " Fold: "{{{3
  highlight Folded guifg=#afafaf guibg=#1f1f1f gui=NONE
        \ ctermfg=248 ctermbg=234 cterm=NONE
  highlight FoldColumn guifg=#bfbfbf guibg=#0f0f0f gui=bold
        \ ctermfg=244 ctermbg=16 cterm=bold



  " Diff: "{{{3
  highlight DiffAdd guifg=bg guibg=#bfffbf gui=NONE
        \ ctermfg=23 ctermbg=121 cterm=NONE
  highlight DiffChange guifg=bg guibg=#ffffbf gui=NONE
        \ ctermfg=100 ctermbg=184 cterm=NONE
  highlight DiffDelete guifg=bg guibg=#ffbfbf gui=NONE
        \ ctermfg=52 ctermbg=204 cterm=NONE
  highlight DiffText guifg=fg guibg=bg gui=NONE
        \ ctermfg=fg ctermbg=bg cterm=NONE
  highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
        \ ctermfg=72 ctermbg=bg cterm=NONE
  highlight Added guifg=#2faf3f guibg=bg gui=NONE
        \ ctermfg=33 ctermbg=bg cterm=NONE
  highlight Changed guifg=#af9f2f guibg=bg gui=NONE
        \ ctermfg=222 ctermbg=bg cterm=NONE
  highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
        \ ctermfg=198 ctermbg=bg cterm=NONE


  " }}}3


  highlight SignColumn guifg=#cfcfcf guibg=#3f3f3f gui=NONE
        \ ctermfg=255 ctermbg=235 cterm=NONE
  highlight Conceal guifg=#0f0f0f guibg=#dfdfdf gui=NONE
        \ ctermfg=235 ctermbg=250 cterm=NONE
  highlight SpecialKey guifg=#afafaf guibg=bg gui=NONE
        \ ctermfg=251 ctermbg=bg cterm=NONE


  " Spell: "{{{3
  highlight SpellBad guifg=#2f2f2f guibg=bg gui=undercurl
  highlight SpellCap guifg=#8f8f8f guibg=bg gui=undercurl
  highlight SpellRare guifg=#5f5f5f guibg=bg gui=undercurl
  highlight SpellLocal guifg=#afafaf guibg=bg gui=undercurl


  " Popup: "{{{3
  highlight MessageWindow guifg=#2f2f2f guibg=#cfcfcf gui=NONE
        \ ctermfg=236 ctermbg=251 cterm=NONE
  highlight PopupNotification guifg=#2f2f2f guibg=#efefef gui=NONE
        \ ctermfg=236 ctermbg=255 cterm=NONE
  highlight PopupSelected guifg=#5f5f5f guibg=#efefef gui=bold
        \ ctermfg=247 ctermbg=231 cterm=NONE


  " Menu: "{{{3
  highlight Menu guifg=#2f2f2f guibg=#cfcfcf gui=None
        \ ctermfg=238 ctermbg=248 cterm=NONE


  " Quickfix: "{{{3
  highlight QuickFixLine guifg=#0f0f0f guibg=#cfcfcf gui=bold
        \ ctermfg=234 ctermbg=252 cterm=bold


  " Toolbar: "{{{3
  highlight ToolbarButton guifg=#5f5f8f guibg=#cfefff gui=bold
        \ ctermfg=238 ctermbg=248 cterm=NONE
  highlight ToolbarLine guifg=fg guibg=#efcfff gui=NONE
        \ ctermfg=235 ctermbg=247 cterm=NONE


  " Tooltip: "{{{3
  highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
        \ ctermfg=235 ctermbg=255 cterm=NONE


  " Scrollbar: "{{{3
  highlight Scrollbar guifg=#2f2f2f guibg=#afafaf gui=None
        \ ctermfg=235 ctermbg=250 cterm=NONE


  " Pmenu: "{{{3
  highlight Pmenu guifg=#0f0f0f guibg=#efefef gui=NONE
        \ ctermfg=236 ctermbg=255 cterm=NONE
  highlight PmenuSel guifg=#ffffff guibg=#0f0f0f gui=NONE
        \ ctermfg=255 ctermbg=16 cterm=NONE
  highlight PmenuExtra guifg=#0f0f0f guibg=#dfdfdf gui=NONE
        \ ctermfg=236 ctermbg=255 cterm=NONE
  highlight PmenuExtraSel guifg=#ffffff guibg=#3f3f3f gui=NONE
        \ ctermfg=255 ctermbg=16 cterm=NONE
  highlight PmenuKind guifg=#0f0f0f guibg=#dfdfdf gui=NONE
        \ ctermfg=236 ctermbg=255 cterm=NONE
  highlight PmenuKindSel guifg=#ffffff guibg=#3f3f3f gui=NONE
        \ ctermfg=255 ctermbg=16 cterm=NONE
  highlight PmenuMatch guifg=#0f0f0f guibg=#efefef gui=NONE
        \ ctermfg=236 ctermbg=255 cterm=NONE
  highlight PmenuMatchLead guifg=#0f0f0f guibg=#afafaf gui=NONE
        \ ctermfg=236 ctermbg=255 cterm=NONE
  highlight PmenuMatchSel guifg=#ffffff guibg=#0f0f0f gui=NONE
        \ ctermfg=255 ctermbg=16 cterm=NONE
  highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
        \ ctermfg=236 ctermbg=255 cterm=NONE
  highlight PmenuSbar guifg=#cfcfcf guibg=#000000 gui=NONE
        \ ctermfg=255 ctermbg=240 cterm=NONE
  highlight PmenuThumb guifg=#000000 guibg=#4f4f4f gui=NONE
        \ ctermfg=255 ctermbg=233 cterm=NONE



  " Tabline: "{{{3
  highlight TabLine guifg=#cfcfcf guibg=#1f1f1f gui=underline
        \ ctermfg=250 ctermbg=233 cterm=underline
  highlight TabLineFill guifg=#ffffff guibg=#1f1f1f gui=underline
        \ ctermfg=255 ctermbg=233 cterm=underline
  highlight TabLineSel guifg=#cfcfcf guibg=#000000 gui=underline
        \ ctermfg=15 ctermbg=16 cterm=underline


  " Tabpanel: "{{{3
  highlight TabPanel guifg=#cfcfcf guibg=#1f1f1f gui=NONE
        \ ctermfg=250 ctermbg=233 cterm=NONE
  highlight TabPanelFill guifg=#ffffff guibg=#1f1f1f gui=NONE
        \ ctermfg=255 ctermbg=233 cterm=NONE
  highlight TabPanelSel guifg=#cfcfcf guibg=#000000 gui=NONE
        \ ctermfg=15 ctermbg=16 cterm=NONE
  highlight TabPanelTitle guifg=#ffffff guibg=#2f2f2f gui=underline
        \ ctermfg=250 ctermbg=245 cterm=underline


  " Cursor: "{{{3
  highlight ColorColumn guifg=#000000 guibg=#8f8f8f gui=NONE
        \ ctermfg=235 ctermbg=246 cterm=NONE
  highlight CursorColumn guifg=#000000 guibg=#afafaf gui=NONE
        \ ctermfg=232 ctermbg=249 cterm=NONE
  highlight lCursor guifg=#2f2f2f guibg=#ffffff gui=NONE
        \ ctermfg=242 ctermbg=255 cterm=NONE
  highlight Cursor guifg=#000000 guibg=#afafaf gui=NONE
        \ ctermfg=242 ctermbg=249 cterm=NONE
  highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
        \ ctermfg=242 ctermbg=249 cterm=NONE


  " IME status color for cursor "{{{4
  if has('multi_byte_ime') || has('xim')
    highlight CursorIM gui=NONE guifg=#cfcfcf guibg=#afafaf
          \ ctermfg=16 ctermbg=88 cterm=NONE
  endif


  " Cursorline: "{{{3
  highlight CursorLine guifg=NONE guibg=#2f2f2f gui=NONE
        \ ctermfg=NONE ctermbg=235 cterm=NONE
  highlight CursorLineNr guifg=#5f5f5f guibg=#efefef gui=NONE
        \ ctermfg=238 ctermbg=254 cterm=NONE
  highlight CursorLineSign guifg=#7f7f7f guibg=#cfcfcf gui=bold
        \ ctermfg=245 ctermbg=252 cterm=NONE
  highlight CursorLineFold guifg=NONE guibg=#6f6f6f gui=bold
        \ ctermfg=251 ctermbg=239 cterm=NONE


  " Terminal: "{{{3
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




else
  " Light: "{{{2
  highlight Normal guifg=#000000 guibg=#ffffff gui=NONE
        \ ctermfg=235 ctermbg=15 cterm=NONE
  highlight NonText guifg=#7f7f7f guibg=bg gui=bold
        \ ctermfg=244 ctermbg=bg cterm=bold
  highlight EndOfBuffer guifg=#7f7f7f guibg=bg gui=bold
        \ ctermfg=249 ctermbg=bg cterm=bold
  highlight Directory guifg=#3f3f3f guibg=bg gui=bold
        \ ctermfg=240 ctermbg=bg cterm=bold


  " Search: "{{{3
  highlight IncSearch guifg=#000000 guibg=#afafaf gui=bold,underline
        \ ctermfg=232 ctermbg=250 cterm=bold,underline
  highlight CurSearch guifg=#5f5f0f guibg=#efefef gui=bold,underline
        \ ctermfg=241 ctermbg=252 cterm=bold,underline
  highlight Search guifg=#cfcfcf guibg=#000000 gui=bold,underline
        \ ctermfg=248 ctermbg=233 cterm=bold,underline


  " Message: "{{{3
  highlight MoreMsg guifg=#2f2f2f guibg=#efefef gui=NONE
        \ ctermfg=234 ctermbg=254 cterm=NONE
  highlight ModeMsg guifg=#2f2f2f guibg=#ffffff gui=NONE
        \ ctermfg=238 ctermbg=231 cterm=NONE
  highlight MsgArea guifg=fg guibg=bg gui=NONE
        \ ctermfg=fg ctermbg=bg cterm=NONE
  highlight ErrorMsg guifg=#0f0f0f guibg=#ffffff gui=NONE
        \ ctermfg=238 ctermbg=15 cterm=NONE
  highlight WarningMsg guifg=#0f0f0f guibg=#efefef gui=NONE
        \ ctermfg=236 ctermbg=255 cterm=NONE
  highlight Question guifg=#3f3f3f guibg=#8f8f8f gui=NONE
        \ ctermfg=238 ctermbg=246 cterm=NONE
  highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
        \ ctermfg=236 ctermbg=255 cterm=NONE
  highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
        \ ctermfg=236 ctermbg=255 cterm=NONE
  highlight WildMenu guifg=#ffffff guibg=#5f5f5f gui=NONE
        \ ctermfg=15 ctermbg=235 cterm=NONE


  " LineNr: "{{{3
  highlight LineNr guifg=#1f1f1f guibg=NONE gui=NONE
        \ ctermfg=235 ctermbg=15 cterm=NONE
  highlight LineNrAbove guifg=#6f6f6f guibg=NONE gui=NONE
        \ ctermfg=248 ctermbg=255 cterm=NONE
  highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
        \ ctermfg=239 ctermbg=255 cterm=NONE



  " Statusline: "{{{3
  highlight StatusLine guifg=#5f5f5f guibg=#efefff gui=NONE
        \ ctermfg=239 ctermbg=189 cterm=NONE
  highlight StatusLineNC guifg=#6f6f6f guibg=#cfcfcf gui=NONE
        \ ctermfg=239 ctermbg=251 cterm=NONE
  highlight StatusLineTerm guifg=#0f0f0f guibg=#efefef gui=NONE
        \ ctermfg=239 ctermbg=255 cterm=NONE
  highlight StatusLineTermNC guifg=#5f5f5f guibg=#ffffff gui=bold
        \ ctermfg=239 ctermbg=15 cterm=NONE


  "}}}3


  highlight VertSplit guifg=bg guibg=bg gui=bold
        \ ctermfg=189 ctermbg=189 cterm=NONE
  highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
        \ ctermfg=255 ctermbg=189 cterm=NONE
  highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
        \ ctermfg=255 ctermbg=189 cterm=NONE
  highlight Title guifg=#5f5f5f guibg=#cfcfcf gui=bold,underline
        \ ctermfg=238 ctermbg=248 cterm=bold,underline


  " Visual: "{{{3
  highlight Visual guifg=#cfcfcf guibg=#101010 gui=NONE
        \ ctermfg=15 ctermbg=16 cterm=NONE
  highlight VisualNOS guifg=#cfcfcf guibg=#101010 gui=bold,underline
        \ ctermfg=252 ctermbg=234 cterm=bold,underline



  " Fold: "{{{3
  highlight Folded guifg=#8f8f8f guibg=#efefff gui=NONE
        \ ctermfg=249 ctermbg=255 cterm=NONE
  highlight FoldColumn guifg=#8f8f8f guibg=#dfdfef gui=bold
        \ ctermfg=245 ctermbg=254 cterm=bold


  " Diff: "{{{3
  highlight DiffAdd guifg=fg guibg=#efefff gui=NONE
        \ ctermfg=22 ctermbg=150 cterm=NONE
  highlight DiffChange guifg=fg guibg=#efdfff gui=NONE
        \ ctermfg=100 ctermbg=185 cterm=NONE
  highlight DiffDelete guifg=fg guibg=#cfcfff gui=bold
        \ ctermfg=52 ctermbg=218 cterm=NONE
  highlight DiffText guifg=fg guibg=bg gui=NONE
        \ ctermfg=fg ctermbg=bg cterm=NONE
  highlight DiffTextAdd guifg=#8f8f8f guibg=bg gui=NONE
        \ ctermfg=72 ctermbg=bg cterm=NONE
  highlight Added guifg=#2faf3f guibg=bg gui=NONE
        \ ctermfg=27 ctermbg=bg cterm=NONE
  highlight Changed guifg=#af9f2f guibg=bg gui=NONE
        \ ctermfg=178 ctermbg=bg cterm=NONE
  highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
        \ ctermfg=89 ctermbg=bg cterm=NONE


  " }}}3


  highlight SignColumn guifg=fg guibg=#efefff gui=NONE
        \ ctermfg=232 ctermbg=189 cterm=NONE
  highlight Conceal guifg=NONE guibg=#afafaf gui=NONE
        \ ctermfg=16 ctermbg=248 cterm=NONE
  highlight SpecialKey guifg=#8f8f8f guibg=bg gui=NONE
        \ ctermfg=248 ctermbg=bg cterm=NONE


  " Spell: "{{{3
  highlight SpellBad guifg=#2f2f2f guibg=bg gui=undercurl
  highlight SpellCap guifg=#8f8f8f guibg=bg gui=undercurl
  highlight SpellRare guifg=#5f5f5f guibg=bg gui=undercurl
  highlight SpellLocal guifg=#afafaf guibg=bg gui=undercurl


  " Popup: "{{{3
  highlight MessageWindow guifg=#2f2f2f guibg=#efefff gui=NONE
        \ ctermfg=238 ctermbg=189 cterm=NONE
  highlight PopupNotification guifg=#2f2f2f guibg=#ffffff gui=NONE
        \ ctermfg=238 ctermbg=189 cterm=NONE
  highlight PopupSelected guifg=#ffffff guibg=#3f3f3f gui=bold
        \ ctermfg=15 ctermbg=236 cterm=bold


  " Menu: "{{{3
  highlight Menu guifg=#2f2f2f guibg=#cfcfcf gui=NONE
        \ ctermfg=238 ctermbg=250 cterm=NONE


  " Quickfix: "{{{3
  highlight QuickFixLine guifg=#0f0f0f guibg=#efefff gui=bold
        \ ctermfg=238 ctermbg=255 cterm=bold


  " Toolbar: "{{{3
  highlight ToolbarButton guifg=#5f5f5f guibg=#efefff gui=bold
        \ ctermfg=239 ctermbg=255 cterm=bold
  highlight ToolbarLine guifg=fg guibg=#ffffff gui=NONE
        \ ctermfg=239 ctermbg=231 cterm=NONE


  " Tooltip: "{{{3
  highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
        \ ctermfg=239 ctermbg=189 cterm=bold


  " Scrollbar: "{{{3
  highlight Scrollbar guifg=#0f0f0f guibg=#8f8f8f gui=NONE
        \ ctermfg=250 ctermbg=242 cterm=NONE


  " Pmenu "{{{3
  highlight Pmenu guifg=#cfcfcf guibg=#0f0f0f gui=NONE
        \ ctermfg=253 ctermbg=233 cterm=NONE
  highlight PmenuExtra guifg=#ffffff guibg=#3f3f3f gui=NONE
        \ ctermfg=253 ctermbg=233 cterm=NONE
  highlight PmenuExtraSel guifg=#0f0f0f guibg=#ffffff gui=NONE
        \ ctermfg=16 ctermbg=255 cterm=NONE
  highlight PmenuMatch guifg=#0f0f0f guibg=#cfcfcf gui=NONE
        \ ctermfg=253 ctermbg=233 cterm=NONE
  highlight PmenuMatchLead guifg=#0f0f0f guibg=#ffffff gui=NONE
        \ ctermfg=253 ctermbg=233 cterm=NONE
  highlight PmenuMatchSel guifg=#000000 guibg=#ffffff gui=NONE
        \ ctermfg=253 ctermbg=233 cterm=NONE
  highlight ComplMatchIns guifg=#3f3f3f guibg=#efefff gui=NONE
        \ ctermfg=253 ctermbg=233 cterm=NONE
  highlight PmenuSel guifg=#0f0f0f guibg=#ffffff gui=NONE
        \ ctermfg=16 ctermbg=255 cterm=NONE
  highlight PmenuSbar guifg=#cfcfcf guibg=#3f3f3f gui=NONE
        \ ctermfg=15 ctermbg=238 cterm=NONE
  highlight PmenuThumb guifg=#cfcfcf guibg=#8f8f8f gui=NONE
        \ ctermfg=15 ctermbg=248 cterm=NONE


  " Tabline: "{{{3
  highlight TabLine guifg=#5f5f5f guibg=#efefff gui=underline
        \ ctermfg=245 ctermbg=255 cterm=underline
  highlight TabLineFill guifg=#1f1f1f guibg=#cfcfff gui=bold,underline
        \ ctermfg=235 ctermbg=189 cterm=bold,underline
  highlight TabLineSel guifg=#ffffff guibg=#3f3f3f gui=underline
        \ ctermfg=15 ctermbg=236 cterm=underline


  " Tabpanel: "{{{3
  highlight TabPanel guifg=#1f1f1f guibg=#cfcfff gui=NONE
        \ ctermfg=245 ctermbg=255 cterm=underline
  highlight TabPanelFill guifg=#1f1f1f guibg=#dfdfff gui=NONE
        \ ctermfg=245 ctermbg=189 cterm=NONE
  highlight TabPanelSel guifg=#ffffff guibg=#1f1f2f gui=NONE
        \ ctermfg=15 ctermbg=236 cterm=NONE
  highlight TabPanelTitle guifg=#5f5f5f guibg=#dfdfff gui=underline
        \ ctermfg=246 ctermbg=189 cterm=underline


  " Cursor: "{{{3
  highlight ColorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
        \ ctermfg=252 ctermbg=236 cterm=NONE
  highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
        \ ctermfg=252 ctermbg=236 cterm=NONE
  highlight lCursor guifg=#0f0f0f guibg=#afafaf gui=NONE
        \ ctermfg=16 ctermbg=247 cterm=NONE
  highlight Cursor guifg=#ffffff guibg=#5f5f5f gui=NONE
        \ ctermfg=15 ctermbg=240 cterm=NONE
  highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
        \ ctermfg=15 ctermbg=240 cterm=NONE


  " IME status color for cursor "{{{4
  if has('multi_byte_ime') || has('xim')
    highlight CursorIM guifg=#0f0f0f guibg=#afafaf gui=NONE
        \ ctermfg=231 ctermbg=52 cterm=NONE
  endif


  " Cursorline: "{{{3
  highlight CursorLine guifg=NONE guibg=#efefff gui=NONE
        \ ctermfg=NONE ctermbg=189 cterm=NONE
  highlight CursorLineNr guifg=#8f8f8f guibg=#dfdfdf gui=NONE
        \ ctermfg=250 ctermbg=254 cterm=NONE
  highlight CursorLineFold guifg=NONE guibg=#cfcfcf gui=bold
        \ ctermfg=236 ctermbg=244 cterm=bold
  highlight CursorLineSign guifg=NONE guibg=#efefef gui=bold
        \ ctermfg=235 ctermbg=250 cterm=NONE


  " terminal: "{{{3
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


endif

" #- Syntax highlighting groups -# "{{{1
if s:is_wab_t
  " Dark: "{{{2
  highlight MatchParen guifg=#000000 guibg=#ffffff gui=bold,underline
        \ ctermfg=235 ctermbg=255 cterm=bold,underline
  highlight comment guifg=#8f8f8f guibg=bg gui=NONE
        \ ctermfg=249 ctermbg=bg cterm=NONE
  highlight Constant guifg=#9f9f9f guibg=bg gui=NONE
        \ ctermfg=246 ctermbg=bg cterm=NONE
  highlight Special guifg=#bfbfbf guibg=bg gui=NONE
        \ ctermfg=250 ctermbg=bg cterm=NONE
  highlight Identifier guifg=#afafaf guibg=bg gui=NONE
        \ ctermfg=248 ctermbg=bg cterm=NONE
  highlight Statement guifg=#efefef guibg=bg gui=NONE
        \ ctermfg=254 ctermbg=bg cterm=NONE
  highlight PreProc guifg=#6f6f6f guibg=bg gui=NONE
        \ ctermfg=244 ctermbg=bg cterm=NONE
  highlight type guifg=#5f5f5f guibg=bg gui=NONE
        \ ctermfg=240 ctermbg=bg cterm=NONE
  highlight underlined guifg=#3f3f3f guibg=#cfcfcf gui=bold,underline
        \ ctermfg=238 ctermbg=251 cterm=bold,underline
  highlight Ignore guifg=#cfcfcf guibg=bg gui=bold
        \ ctermfg=248 ctermbg=bg cterm=bold
  highlight Error guifg=#0f0f0f guibg=#afafaf gui=NONE
        \ ctermfg=237 ctermbg=250 cterm=NONE
  highlight Todo guifg=#5f5f5f guibg=#dfdfdf gui=bold,underline
        \ ctermfg=239 ctermbg=252 cterm=bold,underline
  highlight String guifg=#afafaf guibg=bg gui=NONE
        \ ctermfg=248 ctermbg=bg cterm=NONE
else
  "Light: "{{{2
  highlight MatchParen guifg=#000000 guibg=#cfcfff gui=bold,underline
        \ ctermfg=237 ctermbg=189 cterm=bold,underline
  highlight comment guifg=#3f3f3f guibg=bg gui=NONE
        \ ctermfg=238 ctermbg=bg cterm=NONE
  highlight Constant guifg=#9f9f9f guibg=bg gui=NONE
        \ ctermfg=246 ctermbg=bg cterm=NONE
  highlight Special guifg=#bfbfbf guibg=bg gui=NONE
        \ ctermfg=248 ctermbg=bg cterm=NONE
  highlight Identifier guifg=#afafaf guibg=bg gui=NONE
        \ ctermfg=250 ctermbg=bg cterm=NONE
  highlight Statement guifg=#7f7f7f guibg=bg gui=NONE
        \ ctermfg=244 ctermbg=bg cterm=NONE
  highlight PreProc guifg=#6f6f6f guibg=bg gui=NONE
        \ ctermfg=243 ctermbg=bg cterm=NONE
  highlight type guifg=#5f5f5f guibg=bg gui=NONE
        \ ctermfg=242 ctermbg=bg cterm=NONE
  highlight underlined guifg=#8f8f8f guibg=#cfcfcf gui=bold,underline
        \ ctermfg=245 ctermbg=252 cterm=bold,underline
  highlight Ignore guifg=#0c0c0c guibg=bg gui=bold
        \ ctermfg=235 ctermbg=bg cterm=NONE
  highlight Error guifg=#0f0f0f guibg=#afafaf gui=NONE
        \ ctermfg=234 ctermbg=247 cterm=NONE
  highlight Todo guifg=#7f7f7f guibg=#dfdfdf gui=bold,underline
        \ ctermfg=241 ctermbg=250 cterm=bold,underline
  highlight String guifg=#5f5f5f guibg=bg gui=NONE
        \ ctermfg=241 ctermbg=bg cterm=NONE
endif


" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


