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
let g:colors_name = expand('<sfile>:t:r')


" #- highligt groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#0a0f10 gui=NONE
                \ ctermfg=250 ctermbg=232 cterm=NONE
highlight SpecialKey guifg=#8f5fff guibg=bg gui=NONE
                \ ctermfg=135 ctermbg=bg cterm=NONE
highlight NonText guifg=#3f3fff guibg=bg gui=bold
                \ ctermfg=27 ctermbg=bg cterm=bold
highlight EndOfBuffers guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#3f2fcf guibg=bg gui=bold
                \ ctermfg=57 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#5f2f0f guibg=#ffaf8f gui=underline
                \ ctermfg=57 ctermbg=bg cterm=bold
" search "{{{2
highlight IncSearch guifg=#2f1f4f guibg=#6f5faf gui=bold,underline
                \ ctermfg=53 ctermbg=105 cterm=bold,underline
highlight Search guifg=#4f1f2f guibg=#af5f6f gui=bold,underline
                \ ctermfg=52 ctermbg=132 cterm=bold,underline
" }}}2
highlight MoreMsg guifg=#000f2f guibg=#3f3fcf gui=underline
                \ ctermfg=17 ctermbg=27 cterm=underline
highlight ModeMsg guifg=#2f000f guibg=#cf3f3f gui=underline
                \ ctermfg=52 ctermbg=197 cterm=underline
highlight LineNr guifg=#3f8f6f guibg=NONE gui=NONE
                \ ctermfg=35 ctermbg=NONE cterm=NONE
highlight CursorLineNr guifg=#3f8f6f guibg=NONE gui=bold
                \ ctermfg=132 ctermbg=NONE cterm=bold
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight CursorLineNr guifg=#9f4f7f guibg=#af8fff gui=NONE
                \ ctermfg=197 ctermbg=189 cterm=bold
highlight Question guifg=#0f3f0f guibg=#3faf3f gui=underline
                \ ctermfg=22 ctermbg=47 cterm=underline
" statusline "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#0f1a1f gui=NONE
                \ ctermfg=255 ctermbg=233 cterm=NONE
highlight StatusLineNC guifg=#606080 guibg=#c8c8d8 gui=underline
                \ ctermfg=61 ctermbg=234 cterm=underline
" terminal "{{{3
highlight Terminal guifg=#cfcfcf guibg=#00000f gui=NONE
                \ ctermfg=10 ctermbg=0 cterm=NONE
highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
                \ ctermfg=0 ctermbg=10 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
                \ ctermfg=96 ctermbg=183 cterm=NONE
" }}}2
highlight VertSplit guifg=#4f2f5f guibg=#1f1f1f gui=bold
                \ ctermfg=53 ctermbg=233 cterm=bold
highlight Title guifg=#b568a9 guibg=#0f0f2f gui=underline
                \ ctermfg=171 ctermbg=234 cterm=underline
" visual "{{{2
highlight Visual guifg=#dfdfdf guibg=#1f2f4f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#2f2f2f guibg=#8f8fff gui=bold,underline
                \ ctermfg=17 ctermbg=105 cterm=bold,underline
" }}}2
highlight WarningMsg guifg=#bf5fbf guibg=#efcfcf gui=underline
                \ ctermfg=164 ctermbg=225 cterm=underline
highlight WildMenu guifg=#cfcfcf guibg=#1f2f5f gui=underline
                \ ctermfg=15 ctermbg=18 cterm=underline
" fold "{{{2
highlight Folded guifg=#cfcfff guibg=#000f0f gui=NONE
                \ ctermfg=251 ctermbg=0 cterm=NONE
highlight FoldColumn guifg=#3f3f5f guibg=#000f0f gui=bold
                \ ctermfg=238 ctermbg=0 cterm=bold


" diff "{{{2
highlight DiffAdd guifg=#1f3f1f guibg=#4f9f4f gui=NONE
                \ ctermfg=NONE ctermbg=35 cterm=NONE
highlight DiffChange guifg=#3f3f1f guibg=#9f9f4f gui=NONE
                \ ctermfg=NONE ctermbg=179 cterm=NONE
highlight DiffDelete guifg=#3f1f1f guibg=#9f4f4f gui=bold
                \ ctermfg=NONE ctermbg=170 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=NONE cterm=NONE
" }}}2
highlight SignColumn guifg=#a65774  guibg=bg gui=NONE
                \ ctermfg=132 ctermbg=NONE cterm=NONE
highlight Conceal guifg=#a65774  guibg=bg gui=NONE
                \ ctermfg=132 ctermbg=129 cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#795099 guibg=bg gui=NONE
                \ ctermfg=98 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#506399 guibg=bg gui=NONE
                \ ctermfg=179 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#509982 guibg=bg gui=NONE
                \ ctermfg=78 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#998c50 guibg=bg gui=NONE
                \ ctermfg=136 ctermbg=bg cterm=NONE


" pmenu "{{{2
highlight Pmenu guifg=#dedede guibg=#0f1f30 gui=NONE
                \ ctermfg=15 ctermbg=232 cterm=NONE
highlight PmenuSel guifg=#eeeeee guibg=#2f3f7f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#afafff guibg=#afafaf gui=NONE
                \ ctermfg=fg ctermbg=250 cterm=NONE
highlight PmenuThumb guifg=#3d3f3d guibg=#2f8f5f gui=NONE
                \ ctermfg=fg ctermbg=42 cterm=NONE


" tabline "{{{2
highlight TabLine guifg=#3f3f8f guibg=#0a000f gui=NONE
                \ ctermfg=63 ctermbg=232 cterm=NONE
highlight TabLineSel guifg=#cfcfcf guibg=#3f3f5f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#3f5f6f guibg=#0a000f gui=bold,underline
                \ ctermfg=67 ctermbg=16 cterm=bold,underline


" tabpanel "{{{2
highlight TabPanel guifg=#3f3f8f guibg=#0a000f gui=NONE
                \ ctermfg=63 ctermbg=232 cterm=NONE
highlight TabPanelSel guifg=#cfcfcf guibg=#3f3f5f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#3f5f6f guibg=#0a000f gui=bold,NONE
                \ ctermfg=67 ctermbg=16 cterm=bold,NONE


" cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
                \ ctermfg=15 ctermbg=0 cterm=NONE
highlight CursorLine guifg=NONE guibg=#1f0f1f gui=NONE
                \ ctermfg=NONE ctermbg=53 cterm=NONE
highlight CursorColumn guifg=NONE guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=231 cterm=NONE
highlight Cursor guifg=#cfcfcf guibg=#2f2f3f gui=NONE
                \ ctermfg=249 ctermbg=236 cterm=NONE
" Cursor color for IME status "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#8f1f3f gui=NONE
                \ ctermfg=232 ctermbg=52 cterm=NONE
endif
"}}}2


" #- Syntax highighting group -# "{{{1
highlight lCursor guifg=#000000 guibg=#fafbfb gui=NONE
                \ ctermfg=232 ctermbg=15 cterm=NONE
highlight MatchParen guifg=#2f0f5f guibg=#8f63ad gui=bold,underline
                \ ctermfg=53 ctermbg=63 cterm=bold,underline
highlight comment guifg=#2f5faf guibg=bg gui=NONE
                \ ctermfg=26 ctermbg=bg cterm=NONE
highlight Constant guifg=#af2f5f guibg=bg gui=NONE
                \ ctermfg=161 ctermbg=bg cterm=NONE
highlight Special guifg=#afafff guibg=bg gui=NONE
                \ ctermfg=153 ctermbg=bg cterm=NONE
highlight Identifier guifg=#cf4f9f guibg=bg gui=NONE
                \ ctermfg=198 ctermbg=bg cterm=NONE
highlight Statement guifg=#ff7f6f guibg=bg gui=NONE
                \ ctermfg=203 ctermbg=bg cterm=NONE
highlight PreProc guifg=#5f5fff guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight type guifg=#3fcf8f guibg=bg gui=NONE
                \ ctermfg=48 ctermbg=bg cterm=NONE
highlight underlined guifg=#0f3f0f guibg=#2f7f4f gui=underline
                \ ctermfg=22 ctermbg=79 cterm=underline
highlight Ignore guifg=#2f2f2f guibg=bg gui=bold
                \ ctermfg=238 ctermbg=bg cterm=NONE
highlight Error guifg=#ff0f3f guibg=bg gui=NONE
                \ ctermfg=196 ctermbg=bg cterm=NONE
highlight Todo guifg=#5f6f8f guibg=#cfcfff gui=bold,underline
                \ ctermfg=63 ctermbg=255 cterm=bold,underline
highlight string guifg=#cf3f3f guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE


" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


