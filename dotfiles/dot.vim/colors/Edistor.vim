" #- vim colorscheme file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[<(*)>]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file

" #- color scheme reset -# "{{{1
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme theme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')


" #- highligt groups for various occasions -# "{{{1
highlight Normal guifg=#000000 guibg=#fbf5fb gui=NONE
                \ ctermfg=232 ctermbg=231 cterm=NONE
highlight NonText guifg=#6d29ea guibg=#ffffff gui=bold
                \ ctermfg=25 ctermbg=255 cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#1e64ae guibg=bg gui=bold
                \ ctermfg=17 ctermbg=bg cterm=bold
" Search: "{{{2
highlight IncSearch guifg=#8f3f0f guibg=#ffaf0f gui=bold,underline
                \ ctermfg=53 ctermbg=129 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#002f7f guibg=#1f8fff gui=bold,underline
                \ ctermfg=17 ctermbg=27 cterm=bold,underline


" Message: "{{{2
highlight MoreMsg guifg=#1f2f5f guibg=#7f7fff gui=underline
                \ ctermfg=17 ctermbg=27 cterm=underline
highlight ModeMsg guifg=#5f2f3f guibg=#ff7f7f gui=underline
                \ ctermfg=52 ctermbg=9 cterm=underline
highlight MsgArea guifg=#0f5f5f guibg=#fff0f5 gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#5f2f0f guibg=#ffaf8f gui=underline
                \ ctermfg=94 ctermbg=209 cterm=underline
highlight WarningMsg guifg=#db7bda guibg=#fbe0ff gui=NONE
                \ ctermfg=206 ctermbg=225 cterm=NONE
highlight Question guifg=#0f7f3f guibg=#7fcf7f gui=underline
                \ ctermfg=22 ctermbg=41 cterm=underline
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#1f2f5f guibg=#dfdfff gui=underline
                \ ctermfg=17 ctermbg=123 cterm=underline


" LineNr: "{{{2
highlight LineNr guifg=#9e7105 guibg=NONE gui=NONE
                \ ctermfg=130 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#fdfdfd guibg=#1f293c gui=NONE
                \ ctermfg=255 ctermbg=233 cterm=NONE
highlight StatusLineNC guifg=#606080 guibg=#c8c8d8 gui=NONE
                \ ctermfg=243 ctermbg=255 cterm=NONE
highlight StatusLineTerm guifg=#1f293c guibg=#f8e0ff gui=NONE
                \ ctermfg=52 ctermbg=225 cterm=NONE
highlight StatusLineTermNC guifg=#606080 guibg=#c8c8d8 gui=NONE
                \ ctermfg=243 ctermbg=255 cterm=NONE
" }}}2
highlight VertSplit guifg=#9d887c guibg=#3a3b3c gui=NONE
                \ ctermfg=33 ctermbg=232 cterm=NONE
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#b568a9 guibg=bg gui=underline
                \ ctermfg=161 ctermbg=bg cterm=underline
" Visual: "{{{2
highlight Visual guifg=#ffffff guibg=#0f3f6f gui=NONE
                \ ctermfg=8 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#2f2f2f guibg=#8f8fff gui=underline,bold
                \ ctermfg=234 ctermbg=24 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#0b1958 guibg=#b3bce1 gui=NONE
                \ ctermfg=17 ctermbg=63 cterm=NONE
highlight FoldColumn guifg=#3150a6 guibg=#ffedfa gui=bold
                \ ctermfg=17 ctermbg=225 cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=fg guibg=#afffaf gui=NONE
                \ ctermfg=fg ctermbg=154 cterm=NONE
highlight DiffChange guifg=fg guibg=#ffffaf gui=NONE
                \ ctermfg=fg ctermbg=228 cterm=NONE
highlight DiffDelete guifg=fg guibg=#ffafaf gui=NONE
                \ ctermfg=fg ctermbg=213 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
                \ ctermfg=22 ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
                \ ctermfg=24 ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
                \ ctermfg=130 ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
                \ ctermfg=52 ctermbg=bg cterm=NONE
" }}}2

highlight SignColumn guifg=fg guibg=#afafaf gui=NONE
                \ ctermfg=232 ctermbg=247 cterm=NONE
highlight Conceal guifg=NONE guibg=#c0355f gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight SpecialKey guifg=#0f8f8f guibg=bg gui=NONE
                \ ctermfg=36 ctermbg=bg cterm=NONE


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
      \ ctermfg=fg ctermbg=219 cterm=NONE


" Toolbar: "{{{2
highlight ToolbarButton guifg=#3f1f8f guibg=#afafff gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ToolbarLine guifg=#5f0f0f guibg=#df3fcf gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE




" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#795099 guibg=bg gui=undercurl
                \ ctermfg=129 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#506399 guibg=bg gui=undercurl
                \ ctermfg=21 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#509982 guibg=bg gui=undercurl
                \ ctermfg=35 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#998c50 guibg=bg gui=undercurl
                \ ctermfg=142 ctermbg=bg cterm=undercurl


" Pmenu: "{{{2
highlight Pmenu guifg=#dedede guibg=#0f1f30 gui=NONE
                \ ctermfg=253 ctermbg=232 cterm=NONE
highlight PmenuSel guifg=#eeeeee guibg=#2f3f7f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
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
highlight PmenuSbar guifg=#aaaaaa guibg=#5f6f8f gui=NONE
                \ ctermfg=fg ctermbg=26 cterm=NONE
highlight PmenuThumb guifg=#3d3f3d guibg=#000000 gui=NONE
                \ ctermfg=fg ctermbg=233 cterm=NONE

" Tabline: "{{{2
highlight TabLine guifg=#9d887c guibg=#3a3b3c gui=NONE
                \ ctermfg=245 ctermbg=236 cterm=NONE
highlight TabLineSel guifg=#ffffff guibg=#2f3f8f gui=NONE
                \ ctermfg=231 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#5f4f3f guibg=#3a3b3c gui=bold,underline
                \ ctermfg=95 ctermbg=233 cterm=bold,underline


" Tabpanel: "{{{2
highlight TabPanel guifg=#9d887c guibg=#3a3b3c gui=NONE
                \ ctermfg=245 ctermbg=236 cterm=NONE
highlight TabPanelSel guifg=#ffffff guibg=#2f3f8f gui=NONE
                \ ctermfg=231 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#9f4f3f guibg=#3a3b3c gui=NONE
                \ ctermfg=95 ctermbg=233 cterm=NONE
highlight TabPanelTitle guifg=#000000 guibg=#efefff gui=underline
                \ ctermfg=232 ctermbg=244 cterm=NONE


" Cursor: "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
                \ ctermfg=NONE ctermbg=105 cterm=NONE
highlight CursorColumn guifg=NONE guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=121 cterm=NONE
highlight lCursor guifg=#000000 guibg=#fafbfb gui=NONE
                \ ctermfg=232 ctermbg=231 cterm=NONE
highlight Cursor guifg=#000000 guibg=#2f5fff gui=NONE
                \ ctermfg=16 ctermbg=18 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE


" Cursor color for IME status "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#8f1f3f gui=NONE
                \ ctermfg=16 ctermbg=125 cterm=NONE
endif


" Cursorline: "}}}2
highlight CursorLine guifg=NONE guibg=#d6efff gui=NONE
                \ ctermfg=NONE ctermbg=121 cterm=NONE
highlight CursorLineNr guifg=#af0f0f guibg=#cfffff gui=NONE
                \ ctermfg=178 ctermbg=195 cterm=bold
highlight CursorLineFold guifg=NONE guibg=#cfcfff gui=bold
                \ ctermfg=93 ctermbg=16 cterm=bold
highlight CursorLineSign guifg=NONE guibg=#8faf8f gui=bold
                \ ctermfg=93 ctermbg=17 cterm=bold


" Terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=fg guibg=bg gui=NONE
              \ ctermfg=fg ctermbg=bg gui=NONE
  " Terminal color
  let g:terminal_ansi_colors = [
    \ "#0c0c0c", "#850f1f", "#13710e", "#819c00",
    \ "#00378a", "#881798", "#3a96dd", "#8f8f8f",
    \ "#767676", "#872836", "#16960c", "#6a7f84",
    \ "#3b789f", "#94005e", "#61d6d6", "#989898"
    \ ]
endif



" #- Syntax highighting group -# "{{{1
highlight MatchParen guifg=#0f0f0f guibg=#ffcf0f gui=bold,underline
                \ ctermfg=94 ctermbg=136 cterm=bold,underline
highlight comment guifg=#289b32 guibg=bg gui=NONE
                \ ctermfg=22 ctermbg=bg cterm=NONE
highlight Constant guifg=#ab1e1e guibg=bg gui=NONE
                \ ctermfg=125 ctermbg=bg cterm=NONE
highlight Special guifg=#0c7348 guibg=bg gui=NONE
                \ ctermfg=35 ctermbg=bg cterm=NONE
highlight Identifier guifg=#144ec3 guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Statement guifg=#ff0080 guibg=bg gui=NONE
                \ ctermfg=197 ctermbg=bg cterm=NONE
highlight PreProc guifg=#ff66ff guibg=bg gui=NONE
                \ ctermfg=206 ctermbg=bg cterm=NONE
highlight type guifg=#008040 guibg=bg gui=NONE
                \ ctermfg=28 ctermbg=bg cterm=NONE
highlight underlined guifg=#0e8655 guibg=bg gui=underline
                \ ctermfg=28 ctermbg=bg cterm=underline
highlight Ignore guifg=#0f4f5f guibg=bg gui=bold
                \ ctermfg=22 ctermbg=bg cterm=bold
highlight Error guifg=#ff0f3f guibg=#fff0fe gui=NONE
                \ ctermfg=124 ctermbg=225 cterm=NONE
highlight Todo guifg=#009a7a guibg=#bce5f5 gui=bold,underline
                \ ctermfg=22 ctermbg=78 cterm=bold,underline
highlight string guifg=#ff00ff guibg=bg gui=NONE
                \ ctermfg=13 ctermbg=bg cterm=NONE
highlight function guifg=#3a45b1 guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


