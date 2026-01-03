" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file

" #- Syntax reset -# "{{{1
" First remove all existing highlighting.
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

" #- colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- hihlighting groups for various occasions -# "{{{1
highlight Normal guifg=#ffffff guibg=#00000f gui=NONE
                \ ctermfg=7 ctermbg=232 cterm=NONE
highlight NonText guifg=#1fffcf guibg=#101f1f gui=NONE
                \ ctermfg=42 ctermbg=NONE cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#2a2fff guibg=bg gui=bold
                \ ctermfg=21 ctermbg=NONE cterm=bold


" #- Search: -# "{{{2
highlight IncSearch guifg=#00000f guibg=#0f8f5f gui=bold
                \ ctermfg=16 ctermbg=29 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#ffffff guibg=#0f1f4f gui=bold
                \ ctermfg=7 ctermbg=17 cterm=bold,underline


" #- Message: -# "{{{2
highlight MoreMsg guifg=#0f5f2f guibg=#7fcf8f gui=NONE
                \ ctermfg=22 ctermbg=84 cterm=underline
highlight ModeMsg guifg=#0f2f5f guibg=#7f8fcf gui=NONE
                \ ctermfg=16 ctermbg=27 cterm=underline
highlight ErrorMsg guifg=#ff3f8f guibg=bg gui=NONE
                \ ctermfg=197 ctermbg=NONE cterm=NONE
highlight MsgArea guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight WarningMsg guifg=#ff2f5f guibg=bg gui=NONE
                \ ctermfg=197 ctermbg=bg cterm=NONE
highlight Question guifg=#2f8f5f guibg=#afcfcf gui=NONE
                \ ctermfg=22 ctermbg=114 cterm=underline
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#cfcfff guibg=#0f0f1f gui=NONE
                \ ctermfg=245 ctermbg=234 cterm=NONE


" #- LineNr: -# "{{{2
highlight LineNr guifg=#ffcfaf guibg=NONE gui=NONE
                \ ctermfg=216 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE


" #- Statusline: -# "{{{2
highlight StatusLine guifg=#cfcfff guibg=#0f0f1f gui=NONE
                \ ctermfg=250 ctermbg=233 cterm=NONE
highlight StatusLineNC guifg=#5f5f3f guibg=#bfafcf gui=NONE
                \ ctermfg=59 ctermbg=248 cterm=NONE
highlight StatusLineTerm guifg=#000f2f guibg=#cfccff gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight StatusLineTermNc guifg=#002f2f guibg=#8fafcf gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
"}}}2

highlight VertSplit guifg=#c2bfa5 guibg=bg gui=NONE
                \ ctermfg=7 ctermbg=232 cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#22935f guibg=bg gui=NONE
                \ ctermfg=35 ctermbg=bg cterm=NONE
" #- Visual: -# "{{{2
highlight Visual guifg=#cfcfcf guibg=#000f2f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#3d3d3d guibg=#cfcfcf gui=underline,bold
                \ ctermfg=235 ctermbg=250 cterm=bold,underline


" #- Fold: -# "{{{2
highlight Folded guifg=#cfcfcf guibg=#0a0f1f gui=NONE
                \ ctermfg=249 ctermbg=232 cterm=NONE
highlight FoldColumn guifg=#2f1fcf guibg=bg gui=bold
                \ ctermfg=21 ctermbg=232 cterm=bold

" #- Diff: -# "{{{2
highlight DiffAdd guifg=#0f0f0f guibg=#aacbde gui=NONE
                \ ctermfg=fg ctermbg=35 cterm=NONE
highlight DiffChange guifg=#0f0f0f guibg=#998dbf gui=NONE
                \ ctermfg=fg ctermbg=136 cterm=NONE
highlight DiffDelete guifg=#0f0f0f guibg=#af2f7f gui=bold
                \ ctermfg=fg ctermbg=125 cterm=NONE
highlight DiffText guifg=#0f0f0f guibg=#c9cbce gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
                \ ctermfg=35 ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
                \ ctermfg=226 ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
                \ ctermfg=196 ctermbg=bg cterm=NONE
"}}}

highlight SignColumn guifg=fg guibg=#1f1f1f gui=NONE
                \ ctermfg=0 ctermbg=249 cterm=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight SpecialKey guifg=#5842ff guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=NONE cterm=NONE


" #- Popup: -# "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE


" #- Menu: -# "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=fg ctermbg=bg cterm=NONE


" #- Quickfix: -# "{{{2
highlight QuickFixLine guifg=#0f0f0f guibg=#cfafff gui=bold
      \ ctermfg=fg ctermbg=bg cterm=NONE


" #- Toolbar: -# "{{{2
highlight ToolbarButton guifg=#5f5f8f guibg=#cfefff gui=bold
                \ ctermfg=180 ctermbg=bg cterm=NONE
highlight ToolbarLine guifg=fg guibg=#efcfff gui=NONE
                \ ctermfg=180 ctermbg=bg cterm=NONE


" #- Tooltip: -# "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" #- Scrollbar: -# "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" #- Spell -# "{{{2
highlight SpellBad term=undercurl gui=undercurl guibg=bg guifg=#795099
                \ ctermfg=56 ctermbg=bg cterm=undercurl
highlight SpellCap term=undercurl gui=undercurl guibg=bg guifg=#506399
                \ ctermfg=26 ctermbg=bg cterm=undercurl
highlight SpellRare term=undercurl gui=undercurl guibg=bg guifg=#509982
                \ ctermfg=36 ctermbg=bg cterm=undercurl
highlight SpellLocal term=undercurl gui=undercurl guibg=bg guifg=#998c50
                \ ctermfg=142 ctermbg=bg cterm=undercurl


" #- Pmenu -# "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#bfbfff gui=NONE
                \ ctermfg=233 ctermbg=250 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#0f1f4f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
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
highlight PmenuSbar guifg=fg guibg=#00001f gui=NONE
                \ ctermfg=fg ctermbg=234 cterm=NONE
highlight PmenuThumb guifg=fg guibg=#2f0f1f gui=NONE
                \ ctermfg=fg ctermbg=124 cterm=NONE
" }}}
" #- Tabline: -# "{{{2
highlight TabLine guifg=#5f5f5f guibg=#cfcfff gui=underline
                \ ctermfg=238 ctermbg=250 cterm=underline
highlight TabLineSel guifg=#cccccf guibg=#0f1f3f gui=NONE
                \ ctermfg=fg ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#5f2f3f guibg=#cfcfcf gui=underline
                \ ctermfg=125 ctermbg=250 cterm=underline

" #- Tabpanel: -# "{{{2
highlight TabPanel guifg=#5f5f5f guibg=#cfcfff gui=NONE
                \ ctermfg=238 ctermbg=250 cterm=NONE
highlight TabPanelSel guifg=#cccccf guibg=#0f1f3f gui=NONE
                \ ctermfg=fg ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#5f2f3f guibg=#cfcfcf gui=NONE
                \ ctermfg=125 ctermbg=250 cterm=NONE
highlight TabPanelTitle guifg=#000000 guibg=#efefff gui=NONE
                \ ctermfg=232 ctermbg=244 cterm=NONE


" #- Cursor -# "{{{2
highlight CursorColumn guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=NONE ctermbg=0 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
                \ ctermfg=fg ctermbg=22 cterm=NONE
highlight Cursor guifg=#0f0f0f guibg=#ff8f5f gui=NONE
                \ ctermfg=fg ctermbg=22 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE


"IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#8f0f2f gui=NONE
                \ ctermfg=fg ctermbg=52 cterm=NONE
endif


" #- Cursorline: -# "{{{2
highlight CursorLine guifg=NONE guibg=#0f1a4f gui=NONE
                \ ctermfg=NONE ctermbg=233 cterm=NONE
highlight CursorLineNr guifg=#ffcfaf guibg=#0f0f2f gui=NONE
                \ ctermfg=232 ctermbg=252 cterm=bold
highlight CursorLineFold guifg=NONE guibg=#cfcfff gui=bold
                \ ctermfg=93 ctermbg=16 cterm=bold
highlight CursorLineSign guifg=NONE guibg=#8faf8f gui=bold
                \ ctermfg=93 ctermbg=16 cterm=bold


" #- Terminal -# {{{2
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

" #- syntax highlighting group -# "{{{1
highlight MatchParen guifg=#000000 guibg=#0faf5f gui=bold
                \ ctermfg=22 ctermbg=47 cterm=bold,underline
highlight comment guifg=#2f8f5f guibg=bg gui=NONE
                \ ctermfg=28 ctermbg=bg cterm=NONE
highlight Constant guifg=#3faf8f guibg=bg gui=NONE
                \ ctermfg=41 ctermbg=bg cterm=NONE
highlight Special guifg=#cfcfff guibg=bg gui=NONE
                \ ctermfg=247 ctermbg=bg cterm=NONE
highlight Identifier guifg=#2f5fff guibg=bg gui=NONE
                \ ctermfg=26 ctermbg=bg cterm=NONE
highlight Statement guifg=#3f4fff guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight PreProc guifg=#cc5c5c guibg=bg gui=NONE
                \ ctermfg=208 ctermbg=bg cterm=NONE
highlight type guifg=#af0f5f guibg=bg gui=NONE
                \ ctermfg=197 ctermbg=bg cterm=NONE
highlight underlined guifg=#5f5f5f guibg=#cfcfcf gui=underline,bold
                \ ctermfg=241 ctermbg=249 cterm=bold,underline
highlight Ignore guifg=#047f75 guibg=bg gui=NONE
                \ ctermfg=29 ctermbg=bg cterm=NONE
highlight Error guifg=#ff2f5f guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
highlight Todo guifg=#8f3fff guibg=#bfbfff gui=bold,underline
                \ ctermfg=99 ctermbg=249 cterm=bold,underline
highlight string guifg=#ffaf3f guibg=bg gui=NONE
                \ ctermfg=172 ctermbg=bg cterm=NONE
" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


