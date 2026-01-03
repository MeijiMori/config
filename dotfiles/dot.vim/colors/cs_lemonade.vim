" Vim colorscheme file "{{{1
" NOTE: "{{{2
" sakura02
" Created by  with ThemeCreator (https://github.com/mswift42/themecreator)
" + edit

" init: {{{2
highlight clear

if exists("syntax on")
  syntax reset
endif
set t_Co=256

" Name: {{{1
" name cs_lemonade
let g:colors_name = expand("<sfile>:t:r")


" Defile colorset: {{{1
" Define reusable colorvariables.
let s:bg="#f1e6ad"
let s:fg="#000000"
let s:fg2="#141414"
let s:fg3="#292929"
let s:fg4="#3d3d3d"
let s:bg2="#ded49f"
let s:bg3="#cac191"
let s:bg4="#b7af83"
let s:keyword="#0b69b7"
let s:builtin="#8c2f81"
let s:const= "#329481"
let s:comment="#323796"
let s:func="#0c6d0a"
let s:str="#2337c7"
let s:type="#f59055"
let s:var="#846237"
let s:warning="#ff2828"
let s:warning2="#ff8800"

" Highlighting groups for various occasions "{{{1
execute 'highlight Normal                        guifg='s:fg' guibg='s:bg
execute 'highlight Normal                        ctermfg=235 ctermbg=229 cterm=NONE'
execute 'highlight SpecialKey                    guifg=#2f9faf guibg=bg gui=NONE'
execute 'highlight Specialkey                    ctermfg=71 ctermbg=bg cterm=NONE'
execute 'highlight NonText                       guifg='s:bg4' guibg='s:bg2
execute 'highlight NonText                       ctermfg=244 ctermbg=186 cterm=bold'
execute 'highlight EndOfBuffer                   guifg=#5f8faf guibg=#efe5df gui=NONE'
execute 'highlight EndOfBuffer                   ctermfg=117 ctermbg=15 cterm=bold'
execute 'highlight Directory                     guifg=#cf3f5f guibg=bg gui=bold'
execute 'highlight Directory                     ctermfg=161 ctermbg=bg cterm=bold'


" Search: "{{{2
execute 'highlight IncSearch                     guifg=#0f0f8f guibg=#cfcfff gui=underline'
execute 'highlight IncSearch                     ctermfg=17 ctermbg=189 cterm=underline'
execute 'highlight Search                        guifg=#0f0f0f guibg=#ff8f8f gui=underline'
execute 'highlight Search                        ctermfg=94 ctermbg=208 cterm=underline'
execute 'highlight CurSearch                     guifg=#0f0f0f guibg=#8f8fff gui=underline'
execute 'highlight CurSearch                     ctermfg=17 ctermbg=105 cterm=underline'


" Message "{{{2
execute 'highlight ErrorMsg                      guifg='s:warning' guibg=bg'  ' gui=bold'
execute 'highlight ErrorMsg                      ctermfg=197 ctermbg=bg cterm=bold'
execute 'highlight WarningMsg                    guifg='s:fg' guibg='s:warning2
execute 'highlight WarningMsg                    ctermfg=58 ctermbg=215 cterm=bold'
execute 'highlight ModeMsg                       guifg=#0f0f0f guibg=#efefff gui=underline'
execute 'highlight ModeMsg                       ctermfg=235 ctermbg=15 cterm=underline'
execute 'highlight MoreMsg                       guifg=#8f5fff guibg=#efefff gui=underline'
execute 'highlight MoreMsg                       ctermfg=62 ctermbg=15 cterm=underline'
execute 'highlight MsgArea                       guifg=#0f3f5f guibg=bg gui=NONE'
execute 'highlight MsgArea                       ctermfg=fg ctermbg=bg cterm=NONE'
execute 'highlight Question                      guifg=#af5f2f guibg=bg gui=underline'
execute 'highlight Question                      ctermfg=95 ctermbg=bg cterm=underline'
execute 'highlight WildMenu                      guifg=fg guibg=#efefff gui=underline'
execute 'highlight WildMenu                      ctermfg=236 ctermbg=15 cterm=underline'
execute 'highlight Menu                          guifg=fg guibg=#cfcfdf gui=underline'
execute 'highlight Menu                          ctermfg=236 ctermbg=255 cterm=underline'
execute 'highlight MessageWindow                 guifg=fg guibg=#cfcfdf gui=NONE'
execute 'highlight MessageWindow                 ctermfg=237 ctermbg=189 cterm=underline'


" Linenr: "{{{2
execute 'highlight LineNr                        guifg='s:fg2' guibg='s:bg2
execute 'highlight LineNr                        ctermfg=237 ctermbg=186 cterm=NONE'
execute 'highlight LineNrAbove                   guifg=#8f8fff guibg=bg gui=NONE'
execute 'highlight LineNrAbove                   ctermfg=249 ctermbg=bg cterm=NONE'
execute 'highlight LineNrBelow                   guifg=#8f8fff guibg=bg gui=NONE'
execute 'highlight LineNrBelow                   ctermfg=251 ctermbg=bg cterm=NONE'
execute 'highlight CursorLineNr                  guifg=#ff6f4f guibg='s:bg2
execute 'highlight CursorLineNr                  ctermfg=203 ctermbg=131 cterm=NONE'


" Stautsline: "{{{2
execute 'highlight StatusLine                    guifg='s:fg2' guibg='s:bg3' gui=NONE'
execute 'highlight StatusLine                    ctermfg=237 ctermbg=186 cterm=NONE'
execute 'highlight StatusLineNC                  guifg=#0f0f0f guibg=#efefff gui=NONE'
execute 'highlight StatusLineNC                  ctermfg=237 ctermbg=231 cterm=NONE'
execute 'highlight StatusLineTerm                guifg=#0f0f0f guibg=#ffefff gui=NONE'
execute 'highlight StatusLineTerm                ctermfg=237 ctermbg=225 cterm=NONE'
execute 'highlight StatusLineTermNC              guifg=#0f0f0f guibg=#efffff gui=NONE'
execute 'highlight StatusLineTermNC              ctermfg=237 ctermbg=195 cterm=NONE'


"}}}2


execute 'highlight VertSplit                     guifg=bg guibg=#fff5f0 gui=NONE'
execute 'highlight VertSplit                     ctermfg=255 ctermbg=230 cterm=NONE'
execute 'highlight Title                         guifg=#0f0f0f guibg=bg  gui=bold,underline'
execute 'highlight Title                         ctermfg=237 ctermbg=230 cterm=bold,underline'


" Visual: "{{{2
execute 'highlight Visual                        guifg=#cfcfcf guibg=#0f2f5f gui=NONE'
execute 'highlight Visual                        ctermfg=15 ctermbg=19 cterm=NONE'
execute 'highlight VisualNOS                     guifg=#cfcfcf guibg=#0f2f5f gui=NONE'
execute 'highlight VisualNOS                     ctermfg=15 ctermbg=19 cterm=NONE'


" Fold: "{{{2
execute 'highlight Folded                        guifg='s:fg4 ' guibg=#efd89f gui=NONE'
execute 'highlight Folded                        ctermfg=241 ctermbg=222 cterm=NONE'
execute 'highlight FoldColumn                    guifg=fg guibg=#efe0af gui=NONE'
execute 'highlight FoldColumn                    ctermfg=241 ctermbg=229 cterm=NONE'


" Diff: "{{{2
execute 'highlight DiffAdd                       guifg=fg guibg=#5fcf8f gui=NONE'
execute 'highlight DiffAdd                       ctermfg=16 ctermbg=78 cterm=NONE'
execute 'highlight DiffChange                    guifg=fg guibg=#ffefaf'
execute 'highlight DiffChange                    ctermfg=16 ctermbg=221 cterm=NONE'
execute 'highlight DiffDelete                    guifg=fg guibg=#cf5f8f gui=NONE'
execute 'highlight DiffDelete                    ctermfg=16 ctermbg=161 cterm=NONE'
execute 'highlight DiffText                      guifg=fg guibg=bg gui=NONE'
execute 'highlight DiffText                      ctermfg=fg ctermbg=bg cterm=NONE'
execute 'highlight DiffTextAdd                   guifg=#0f8f2f guibg=bg gui=NONE'
execute 'highlight DiffTextAdd                   ctermfg=35 ctermbg=bg cterm=NONE'
execute 'highlight Added                         guifg=#3faf5f guibg=bg gui=NONE'
execute 'highlight Added                         ctermfg=25 ctermbg=bg cterm=NONE'
execute 'highlight Change                        guifg=fg guibg=#ffefaf'
execute 'highlight Change                        ctermfg=172 ctermbg=bg cterm=NONE'
execute 'highlight Removed                       guifg=#cf5f8f guibg=bg gui=NONE'
execute 'highlight Removed                       ctermfg=88 ctermbg=bg cterm=NONE'
"}}}2


execute 'highlight SignColumn                    guifg=#0f0f0f guibg=#ffcf8f gui=NONE'
execute 'highlight SignColumn                    ctermfg=3 ctermbg=222 cterm=NONE'
execute 'highlight ColorColumn                   guibg='s:bg2
execute 'highlight ColorColumn                   ctermfg=235 ctermbg=145 cterm=NONE'


" Spell: "{{{2
execute 'highlight SpellBad                      guifg=fg guibg=bg gui=undercurl'
execute 'highlight SpellBad                      ctermfg=52 ctermbg=219 cterm=NONE'
execute 'highlight SpellCap                      guifg=fg guibg=bg gui=underdouble'
execute 'highlight SpellCap                      ctermfg=17 ctermbg=195 cterm=NONE'
execute 'highlight SpellLocal                    guifg=fg guibg=bg gui=underdotted'
execute 'highlight SpellLocal                    ctermfg=58 ctermbg=143 cterm=NONE'
execute 'highlight SpellRare                     guifg=fg guibg=bg gui=strikethrough'
execute 'highlight SpellRare                     ctermfg=52 ctermbg=196 cterm=NONE'


" Pmenu: "{{{2
execute 'highlight Pmenu                         guifg=#0f0f0f guibg=#afafef gui=NONE'
execute 'highlight Pmenu                         ctermfg=16 ctermbg=147 cterm=NONE'
execute 'highlight PmenuExtra                    guifg=#0f0f0f guibg=#f0f0f0 gui=NONE'
execute 'highlight PmenuExtra                    ctermfg=238 ctermbg=15 cterm=NONE'
execute 'highlight PmenuExtraSel                 guifg=#ffffff guibg=#00003f gui=NONE'
execute 'highlight PmenuExtraSel                 ctermfg=15 ctermbg=17 cterm=NONE'
execute 'highlight PmenuKind                     guifg=#0f0fff guibg=#afafef gui=NONE'
execute 'highlight PmenuKind                     ctermfg=17 ctermbg=147 cterm=NONE'
execute 'highlight PmenuKindSel                  guifg=#ffffff guibg=#3f5fff gui=NONE'
execute 'highlight PmenuKindSel                  ctermfg=15 ctermbg=33 cterm=NONE'
execute 'highlight PmenuMatch                    guifg=#0f0f0f guibg=#f0f0f0 gui=NONE'
execute 'highlight PmenuMatch                    ctermfg=16 ctermbg=15 cterm=NONE'
execute 'highlight PmenuMatchSel                 guifg=#ffffff guibg=#00005f gui=NONE'
execute 'highlight PmenuMatchSel                 ctermfg=15 ctermbg=17 cterm=NONE'
execute 'highlight PmenuSbar                     guifg=fg      guibg=#f0f0f0 gui=NONE'
execute 'highlight PmenuSbar                     ctermfg=16 ctermbg=255 cterm=NONE'
execute 'highlight PmenuSel                      guifg=#ffffff guibg=#3f5fff gui=NONE'
execute 'highlight PmenuSel                      ctermfg=15 ctermbg=20 cterm=NONE'
execute 'highlight PmenuThumb                    guifg=fg      guibg=#e1e6ae gui=NONE'
execute 'highlight PmenuThumb                    ctermfg=16 ctermbg=230 cterm=NONE'
execute 'highlight ComplMatchIns                 guifg=fg      guibg=#efefff gui=NONE'
execute 'highlight ComplMatchIns                 ctermfg=16 ctermbg=189 cterm=NONE'


" Tabline: "{{{2
execute 'highlight TabLine                       guifg=#0f0f0f guibg=#ffefff gui=NONE'
execute 'highlight TabLine                       ctermfg=234 ctermbg=225 cterm=NONE'
execute 'highlight TabLineFill                   guifg=#1f3f3f guibg=#feefe0 gui=NONE'
execute 'highlight TabLineFill                   ctermfg=23 ctermbg=230 cterm=NONE'
execute 'highlight TabLineSel                    guifg=#0f0f0f guibg=#efe0ff gui=NONE'
execute 'highlight TabLineSel                    ctermfg=232 ctermbg=183 cterm=NONE'


" Tabpanel: "{{{2
execute 'highlight TabPanel                      guifg=#0f0f0f guibg=#ffefff gui=NONE'
execute 'highlight TabPanel                      ctermfg=234 ctermbg=225 cterm=NONE'
execute 'highlight TabPanelFill                  guifg=#0f0fff guibg=#feefe0 gui=NONE'
execute 'highlight TabPanelFill                  ctermfg=69 ctermbg=225 cterm=NONE'
execute 'highlight TabPanelTitle                 guifg=#0f0f0f guibg=#cecfff gui=NONE'
execute 'highlight TabPanelTitle                 ctermfg=235 ctermbg=153 cterm=NONE'
execute 'highlight TabPanelSel                   guifg=#0f0f0f guibg=#efe0ff gui=NONE'
execute 'highlight TabPanelSel                   ctermfg=232 ctermbg=183 cterm=NONE'


" Popup: "{{{2
execute 'highlight PopupNotification             guifg=#0f0f0f  guibg=#cfcfff gui=NONE'
execute 'highlight PopupNotification             ctermfg=236 ctermbg=189 cterm=NONE'
execute 'highlight PopupSelected                 guifg=#cfcfcf  guibg=#1f3fff gui=NONE'
execute 'highlight PopupSelected                 ctermfg=15 ctermbg=20 cterm=NONE'


" Cursor: "{{{2
execute 'highlight Cursor                        guifg=#0f0f0f guibg=#ffaf7f gui=NONE'
execute 'highlight Cursor                        ctermfg=232 ctermbg=215 cterm=NONE'
execute 'highlight CursorIM                      guifg=#0f0f0f guibg=#8fff1f gui=NONE'
execute 'highlight CursorIM                      ctermfg=232 ctermbg=52 cterm=NONE'
execute 'highlight lCursor                       guifg=#0f0f0f guibg=#ef0fff gui=NONE'
execute 'highlight lCursor                       ctermfg=232 ctermbg=129 cterm=NONE'
execute 'highlight CursorColumn                  guibg='s:bg2
execute 'highlight CursorColumn                  ctermfg=232 ctermbg=187 cterm=NONE'


" Cursorline: "{{{2
execute 'highlight CursorLine                    guibg='s:bg2
execute 'highlight CursorLine                    ctermfg=NONE ctermbg=187 cterm=NONE'
execute 'highlight CursorLineFold                guifg=fg guibg=#ffaf3f gui=NONE'
execute 'highlight CursorLineFold                ctermfg=232 ctermbg=214 cterm=NONE'
execute 'highlight CursorLineSign                guifg=fg guibg=#ffafff gui=NONE'
execute 'highlight CursorLineSign                ctermfg=232 ctermbg=219 cterm=NONE'


" Quickfixline: "{{{3
execute 'highlight QuickFixLine                  guifg=fg guibg=#ffaf5f gui=NONE'
execute 'highlight QuickFixLine                ctermfg=234 ctermbg=215 cterm=NONE'


" Scrollbar: "{{{2
execute 'highlight Scrollbar                     guifg=fg guibg=#efefff gui=NONE'
execute 'highlight Scrollbar                     ctermfg=232 ctermbg=255 cterm=NONE'


" terminal: "{{{2
if has('terminal')
  execute 'highlight Terminal                    guifg=fg guibg=bg gui=NONE'
  execute 'highlight Terminal                    ctermfg=fg ctermbg=bg cterm=NONE'

  " Terminal color
  let g:terminal_ansi_colors = [
    \ "#0c0c0c", "#850f1f", "#13710e", "#819c00",
    \ "#00378a", "#881798", "#3a96dd", "#8f8f8f",
    \ "#767676", "#872836", "#16960c", "#6a7f84",
    \ "#3b789f", "#94005e", "#61d6d6", "#989898"
    \ ]
endif


" Toolbar: "{{{2
execute 'highlight ToolbarButton                 guifg=#0f0f0f guibg=#efe0ff gui=NONE'
execute 'highlight ToolbarButton                 ctermfg=235 ctermbg=183 cterm=NONE'
execute 'highlight ToolbarLine                   guifg=#0f0f0f guibg=#eff0ff gui=NONE'
execute 'highlight ToolbarLine                   ctermfg=235 ctermbg=195 cterm=NONE'


" Syntax highlighting groups "{{{1
execute 'highlight Conceal                       guifg=fg guibg=#ffcf8f gui=NONE'
execute 'highlight Conceal                       ctermfg=235 ctermbg=88 cterm=NONE'
execute 'highlight MatchParen                    guifg=fg guibg=#8f8fff gui=bold,underline'
execute 'highlight MatchParen                    ctermfg=17 ctermbg=110 cterm=bold,underline'
execute 'highlight Comment                       guifg='s:comment
execute 'highlight Comment                       ctermfg=18 ctermbg=bg cterm=NONE'
execute 'highlight Constant                      guifg='s:const 'guibg=bg gui=bold'
execute 'highlight Constant                      ctermfg=30 ctermbg=bg cterm=bold'
execute 'highlight String                        guifg='s:str
execute 'highlight String                        ctermfg=20 ctermbg=bg cterm=NONE'
execute 'highlight Character                     guifg='s:const
execute 'highlight Character                     ctermfg=30 ctermbg=bg cterm=NONE'
execute 'highlight Number                        guifg='s:const
execute 'highlight Number                        ctermfg=30 ctermbg=bg cterm=NONE'
execute 'highlight Boolean                       guifg='s:const
execute 'highlight Boolean                       ctermfg=30 ctermbg=bg cterm=NONE'
execute 'highlight Float                         guifg='s:const
execute 'highlight Float                         ctermfg=30 ctermbg=bg cterm=NONE'
execute 'highlight Identifier                    guifg='s:type'  gui=bold'
execute 'highlight Identifier                    ctermfg=208 ctermbg=bg cterm=bold'
execute 'highlight Function                      guifg='s:func 'guibg=bg gui=bold'
execute 'highlight Function                      ctermfg=23 ctermbg=bg cterm=bold'
execute 'highlight Statement                     guifg='s:keyword 'guibg=bg gui=bold'
execute 'highlight Statement                     ctermfg=23 ctermbg=bg cterm=bold'
execute 'highlight Conditional                   guifg='s:keyword 'guibg=bg gui=bold'
execute 'highlight Conditional                   ctermfg=31 ctermbg=bg cterm=bold'
execute 'highlight Repeat                        guifg=#af2f5f guibg=bg gui=NONE'
execute 'highlight Repeat                        ctermfg=90 ctermbg=bg cterm=bold'
execute 'highlight Label                         guifg='s:var 'guibg=bg gui=bold'
execute 'highlight Label                         ctermfg=94 ctermbg=bg cterm=bold'
execute 'highlight Operator                      guifg='s:keyword 'guibg=bg gui=bold'
execute 'highlight Operator                      ctermfg=36 ctermbg=bg cterm=bold'
execute 'highlight Keyword                       guifg='s:keyword 'guibg=bg gui=bold'
execute 'highlight Keyword                       ctermfg=29 ctermbg=bg cterm=bold'
execute 'highlight Exception                     guifg=#2f5f8f guibg=bg gui=bold'
execute 'highlight Exception                     ctermfg=22 ctermbg=bg cterm=bold'
execute 'highlight PreProc                       guifg='s:keyword 'guibg=bg gui=bold'
execute 'highlight Preproc                       ctermfg=24 ctermbg=bg cterm=bold'
execute 'highlight Include                       guifg='s:keyword 'guibg=bg gui=NONE'
execute 'highlight Include                       ctermfg=33 ctermbg=bg cterm=bold'
execute 'highlight Define                        guifg='s:keyword
execute 'highlight Define                        ctermfg=92 ctermbg=bg cterm=bold'
execute 'highlight Macro                         guifg='s:keyword ' guibg=bg gui=NONE'
execute 'highlight Macro                         ctermfg=33 ctermbg=bg cterm=NONE'
execute 'highlight PreCondit                     guifg='s:keyword ' guibg=bg gui=NONE'
execute 'highlight PreCondit                     ctermfg=33 ctermbg=bg cterm=NONE'
execute 'highlight Type                          guifg='s:type 'guibg=bg gui=NONE'
execute 'highlight Type                          ctermfg=208 ctermbg=bg cterm=NONE'
execute 'highlight StorageClass                  guifg='s:type 'gui=NONE'
execute 'highlight StorageClass                  ctermfg=208 ctermbg=bg cterm=NONE'
execute 'highlight Structure                     guifg=#af8f5f guibg=bg gui=NONE'
execute 'highlight Structure                     ctermfg=137 ctermbg=bg cterm=NONE'
execute 'highlight Typedef                       guifg=#af8f5f guibg=bg gui=NONE'
execute 'highlight Typedef                       ctermfg=137 ctermbg=bg cterm=NONE'
execute 'highlight Special                       guifg=#8f3faf guibg=bg gui=NONE'
execute 'highlight Special                       ctermfg=54 ctermbg=bg cterm=NONE'
execute 'highlight Specialchar                   guifg=#8f3faf guibg=bg gui=NONE'
execute 'highlight Specialchar                   ctermfg=54 ctermbg=bg cterm=NONE'
execute 'highlight Tag                           guifg='s:keyword 'guibg=bg gui=bold'
execute 'highlight Tag                           ctermfg=30 ctermbg=bg cterm=bold'
execute 'highlight Delimiter                     guifg=#8f3faf guibg=bg gui=NONE'
execute 'highlight Delimiter                     ctermfg=94 ctermbg=bg cterm=NONE'
execute 'highlight SpecialComment                guifg=#8f3faf guibg=bg gui=NONE'
execute 'highlight SpecialComment                ctermfg=54 ctermbg=bg cterm=NONE'
execute 'highlight Debug                         guifg=#8f3faf guibg=bg gui=NONE'
execute 'highlight Debug                         ctermfg=94 ctermbg=bg cterm=NONE'
execute 'highlight Underlined                    guifg=#5f8fff guibg=bg gui=underline'
execute 'highlight Underlined                    ctermfg=33 ctermbg=bg cterm=underline'
execute 'highlight Ignore                        guifg=fg guibg=#8f8fff gui=underline'
execute 'highlight Ignore                        ctermfg=17 ctermbg=69 cterm=NONE'
execute 'highlight Error                         guifg=#cf0f0f guibg=#ffcfcf gui=NONE'
execute 'highlight Error                         ctermfg=52 ctermbg=225 cterm=NONE'
execute 'highlight Todo                          guifg=#0f8f0f guibg=bg gui=bold,underline'
execute 'highlight Todo                          ctermfg=29 ctermbg=bg cterm=NONE'


" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim



