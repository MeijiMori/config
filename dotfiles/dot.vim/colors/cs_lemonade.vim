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
let s:type="#a59055"
let s:var="#846237"
let s:warning="#ff2828"
let s:warning2="#ff8800"

" Highlighting groups for various occasions "{{{1
execute 'highlight Normal                        guifg='s:fg' guibg='s:bg
execute 'highlight SpecialKey                    guifg=#2f9faf guibg=bg gui=NONE'
execute 'highlight NonText                       guifg='s:bg4' guibg='s:bg2
execute 'highlight EndOfBuffer                   guifg=#5f8faf guibg=#efe5df gui=NONE'
execute 'highlight Directory                     guifg=#cf3f5f guibg=bg gui=bold'
" search "{{{2
execute 'highlight IncSearch                     guifg=#0f0f8f guibg=#cfcfff gui=NONE'
execute 'highlight Search                        guifg=#0f0f0f guibg=#ff8f8f gui=underline'
execute 'highlight CurSearch                     guifg=#0f0f0f guibg=#8f8fff gui=underline'


" message "{{{2
execute 'highlight ErrorMsg                      guifg='s:warning' guibg=bg'  ' gui=bold'
execute 'highlight WarningMsg                    guifg='s:fg' guibg='s:warning2
execute 'highlight ModeMsg                       guifg=#0f0f0f guibg=#efefff gui=underline'
execute 'highlight MoreMsg                       guifg=#8f5fff guibg=#efefff gui=underline'
execute 'highlight MsgArea                       guifg=#0f3f5f guibg=bg gui=NONE'
execute 'highlight Question                      guifg=#af5f2f guibg=bg gui=underline'
execute 'highlight WildMenu                      guifg=fg guibg=#efefff gui=underline'
execute 'highlight Menu                          guifg=fg guibg=#cfcfdf gui=underline'
execute 'highlight MessageWindow                 guifg=fg guibg=#cfcfdf gui=NONE'
" linenr "{{{2
execute 'highlight LineNr                        guifg='s:fg2' guibg='s:bg2
execute 'highlight LineNrAbove                   guifg=#8f8fff guibg=bg gui=NONE'
execute 'highlight LineNrBelow                   guifg=#8f8fff guibg=bg gui=NONE'
execute 'highlight CursorLineNr                  guifg='s:fg' guibg='s:bg2


" stautsline "{{{2
execute 'highlight StatusLine                    guifg='s:fg2' guibg='s:bg3' gui=NONE'
execute 'highlight StatusLineNC                  guifg=#0f0f0f guibg=#efefff gui=NONE'
execute 'highlight StatusLineTerm                guifg=#0f0f0f guibg=#ffefff gui=NONE'
execute 'highlight StatusLineTermNC              guifg=#0f0f0f guibg=#efffff gui=NONE'
"}}}2
execute 'highlight VertSplit                     guifg=bg guibg=#fff5f0 gui=NONE'
execute 'highlight Title                         guifg=#0f0f0f guibg=bg  gui=bold,underline'
" visual "{{{2
execute 'highlight Visual                        guifg=#cfcfcf guibg=#0f2f5f gui=NONE'
execute 'highlight VisualNOS                     guifg=#cfcfcf guibg=#0f2f5f gui=NONE'
"}}}2
" fold "{{{2
execute 'highlight Folded                        guifg='s:fg4 ' guibg=#efd89f gui=NONE'
execute 'highlight FoldColumn                    guifg=fg guibg=#efe0af gui=NONE'
" diff "{{{2
execute 'highlight DiffAdd                       guifg=fg guibg=#5fcf8f gui=NONE'
execute 'highlight DiffChange                    guifg=fg guibg=#ffefaf'
execute 'highlight DiffDelete                    guifg=fg guibg=#cf5f8f gui=NONE'
execute 'highlight DiffText                      guifg=fg guibg=bg gui=NONE'
execute 'highlight DiffTextAdd                   guifg=#0f8f2f guibg=bg gui=NONE'
execute 'highlight Added                         guifg=#3faf5f guibg=bg gui=NONE'
execute 'highlight Change                        guifg=fg guibg=#ffefaf'
execute 'highlight Removed                       guifg=#cf5f8f guibg=bg gui=NONE'
"}}}2
execute 'highlight SignColumn                    guifg=#0f0f0f guibg='s:bg2 ' gui=NONE'
execute 'highlight ColorColumn                   guibg='s:bg2
" spell "{{{2
execute 'highlight SpellBad                      guifg=fg guibg=bg gui=undercurl'
execute 'highlight SspellCap                     guifg=fg guibg=bg gui=underdouble'
execute 'highlight SpellLocal                    guifg=fg guibg=bg gui=underdotted'
execute 'highlight SpellRare                     guifg=fg guibg=bg gui=strikethrough'


" pmenu "{{{2
execute 'highlight Pmenu                         guifg=#0f0f0f guibg=#afafef gui=NONE'
execute 'highlight PmenuExtra                    guifg=#0f0f0f guibg=#f0f0f0 gui=NONE'
execute 'highlight PmenuExtraSel                 guifg=#ffffff guibg=#00003f gui=NONE'
execute 'highlight PmenuKind                     guifg=#0f0fff guibg=#afafef gui=NONE'
execute 'highlight PmenuKindSel                  guifg=#ffffff guibg=#3f5fff gui=NONE'
execute 'highlight PmenuMatch                    guifg=#0f0f0f guibg=#f0f0f0 gui=NONE'
execute 'highlight PmenuMatchSel                 guifg=#ffffff guibg=#00005f gui=NONE'
execute 'highlight PmenuSbar                     guifg=fg      guibg=#f0f0f0 gui=NONE'
execute 'highlight PmenuSel                      guifg=#ffffff guibg=#3f5fff gui=NONE'
execute 'highlight PmenuThumb                    guifg=fg      guibg=#e1e6ae gui=NONE'
execute 'highlight ComplMatchIns                 guifg=fg      guibg=#efefff gui=NONE'

" tabline "{{{2
execute 'highlight TabLine                       guifg=#0f0f0f guibg=#ffefff gui=NONE'
execute 'highlight TabLineFill                   guifg=#1f3f3f guibg=#feefe0 gui=NONE'
execute 'highlight TabLineSel                    guifg=#0f0f0f guibg=#efe0ff gui=NONE'


" tabpanel "{{{2
execute 'highlight TabPanel                      guifg=#0f0f0f guibg=#ffefff gui=NONE'
execute 'highlight TabPanelFill                  guifg=#0f0fff guibg=#feefe0 gui=NONE'
execute 'highlight TabPanelSel                   guifg=#0f0f0f guibg=#efe0ff gui=NONE'


" popup "{{{2
execute 'highlight PopupNotification             guifg=#0f0f0f  guibg=#cfcfff gui=NONE'
execute 'highlight PopupSelected                 guifg=#cfcfcf  guibg=#1f3fff gui=NONE'


" cursor "{{{2
execute 'highlight Cursor                        guifg='s:bg' guibg='s:fg
execute 'highlight CursorIM                      guifg=#0f0f0f guibg=#ef0fff gui=NONE'
execute 'highlight lCursor                       guifg=#0f0f0f guibg=#ef0fff gui=NONE'
execute 'highlight CursorColumn                  guibg='s:bg2


" cursorline "{{{2
execute 'highlight CursorLine                    guibg='s:bg2
execute 'highlight CursorLineNr                  guifg='s:str' guibg='s:bg
execute 'highlight CursorLineFold                guifg=fg guibg=#ffaf3f gui=NONE'
execute 'highlight CursorLineSign                guifg=fg guibg=#ffafff gui=NONE'
" quickfixline "{{{3
execute 'highlight QuickFixLine                  guifg=fg guibg=#ffafff gui=NONE'


" scrollbar "{{{2
execute 'highlight Scrollvar                     guifg=fg guibg=#efefff gui=NONE'


" terminal: "{{{2
if has('terminal')
  highlight Terminal                             guifg=fg guibg=bg gui=NONE
  " Terminal color
  let g:terminal_ansi_colors = [
    \ "#0c0c0c", "#850f1f", "#13710e", "#819c00",
    \ "#00378a", "#881798", "#3a96dd", "#8f8f8f",
    \ "#767676", "#872836", "#16960c", "#6a7f84",
    \ "#3b789f", "#94005e", "#61d6d6", "#989898"
    \ ]
endif


" toolbar "{{{2
execute 'highlight ToolbarButton                 guifg=#0f0f0f guibg=#efe0ff gui=NONE'
execute 'highlight ToolbarLine                   guifg=#0f0f0f guibg=#eff0ff gui=NONE'


" Syntax highlighting groups "{{{1
execute 'highlight Conceal                       guifg=fg guibg=#ffcf8f gui=NONE'
execute 'highlight MatchParen                    guifg=fg guibg=#8f8fff gui=bold,underline'
execute 'highlight Comment                       guifg='s:comment
execute 'highlight Constant                      guifg='s:const 'guibg=bg gui=bold'
execute 'highlight String                        guifg='s:str
execute 'highlight Character                     guifg='s:const
execute 'highlight Number                        guifg='s:const
execute 'highlight Boolean                       guifg='s:const
execute 'highlight Float                         guifg='s:const
execute 'highlight Identifier                    guifg='s:type'  gui=bold'
execute 'highlight Function                      guifg='s:func 'guibg=bg gui=bold'
execute 'highlight Statement                     guifg='s:keyword 'guibg=bg gui=bold'
execute 'highlight Conditional                   guifg='s:keyword 'guibg=bg gui=bold'
execute 'highlight Repeat                        guifg=#af2f5f guibg=bg gui=NONE'
execute 'highlight Label                         guifg='s:var 'guibg=bg gui=bold'
execute 'highlight Operator                      guifg='s:keyword 'guibg=bg gui=bold'
execute 'highlight Keyword                       guifg='s:keyword 'guibg=bg gui=bold'
execute 'highlight Exception                     guifg=#2f5f8f guibg=bg gui=bold'
execute 'highlight PreProc                       guifg='s:keyword 'guibg=bg gui=bold'
execute 'highlight Include                       guifg='s:keyword 'guibg=bg gui=NONE'
execute 'highlight Define                        guifg='s:keyword
execute 'highlight Macro                         guifg='s:keyword ' guibg=bg gui=NONE'
execute 'highlight PreCondit                     guifg='s:keyword ' guibg=bg gui=NONE'
execute 'highlight Type                          guifg='s:type 'guibg=bg gui=NONE'
execute 'highlight StorageClass                  guifg='s:type 'gui=NONE'
execute 'highlight Structure                     guifg=#af8f5f guibg=bg gui=NONE'
execute 'highlight Typedef                       guifg=#af8f5f guibg=bg gui=NONE'
execute 'highlight Special                       guifg=#8f3faf guibg=bg gui=NONE'
execute 'highlight Specialchar                   guifg=#8f3faf guibg=bg gui=NONE'
execute 'highlight Tag                           guifg='s:keyword 'guibg=bg gui=bold'
execute 'highlight Delimiter                     guifg=#8f3faf guibg=bg gui=NONE'
execute 'highlight SpecialCommnet                guifg=#8f3faf guibg=bg gui=NONE'
execute 'highlight Debug                         guifg=#8f3faf guibg=bg gui=NONE'
execute 'highlight Underlined                    guifg=#5f8fff guibg=bg gui=underline'
execute 'highlight Ignore                        guifg=fg guibg=#8f8fff gui=underline'
execute 'highlight Error                         guifg=#cf0f0f guibg=#ffcfcf gui=NONE'
execute 'highlight Todo                          guifg=#0f8f0f guibg=bg gui=bold,underline'


" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
