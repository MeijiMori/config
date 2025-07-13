" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}"
" highlighting ZenkakuSpace /@/
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
let g:colors_name=expand('<sfile>:t:r')

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#1f1f1f gui=NONE
                \ ctermfg=15 ctermbg=232 cterm=NONE
highlight SpecialKey guifg=#9acd32 guibg=bg gui=NONE
                \ ctermfg=112 ctermbg=bg cterm=NONE
highlight NonText guifg=#add8e6 guibg=#2f2f2f gui=NONE
                \ ctermfg=123 ctermbg=235 cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#3f3fff guibg=bg gui=bold
                \ ctermfg=63 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#4f1f1f guibg=#cf4f7f gui=underline
                \ ctermfg=52 ctermbg=207 cterm=underline
" search "{{{2
highlight IncSearch guifg=#0f2f4f guibg=#5f8faf gui=underline
                \ ctermfg=17 ctermbg=75 cterm=bold,underline
highlight Search guifg=#0f3f0f guibg=#5faf5f gui=underline
                \ ctermfg=22 ctermbg=48 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#0f5f2f guibg=#5faf7f gui=underline
                \ ctermfg=22 ctermbg=35 cterm=underline
highlight ModeMsg guifg=#2f2f2f guibg=#afafbf gui=underline
                \ ctermfg=0 ctermbg=247 cterm=underline
highlight LineNr guifg=#8fffaf guibg=NONE gui=NONE
                \ ctermfg=120 ctermbg=NONE cterm=NONE
highlight CursorLineNr guifg=#af8fff guibg=NONE gui=NONE
                \ ctermfg=147 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#1f2f5f guibg=#2f5f8f gui=underline
                \ ctermfg=17 ctermbg=27 cterm=underline
" statusline "{{{2
highlight StatusLine guifg=#afafff guibg=#2f2f3f gui=NONE
                \ ctermfg=245 ctermbg=233 cterm=NONE
highlight StatusLineNC guifg=#7f7f7f guibg=#c2bfd5 gui=NONE
                \ ctermfg=242 ctermbg=250 cterm=NONE
"}}}2
highlight VertSplit guifg=#7f7f7f guibg=#afafcf gui=NONE
                \ ctermfg=244 ctermbg=248 cterm=NONE
highlight Title guifg=#cd5c5c guibg=#0f0f0f gui=bold,underline
                \ ctermfg=202 ctermbg=0 cterm=bold,underline
" visual "{{{2
highlight Visual guifg=#cfcfcf guibg=#101a3f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f2f4f gui=bold,underline
                \ ctermfg=247 ctermbg=24 cterm=bold,underline
"}}}2
highlight WarningMsg guifg=#5f2f0f guibg=#ff7f6f gui=underline
                \ ctermfg=94 ctermbg=174 cterm=underline
highlight WildMenu guifg=#ffffff guibg=#0f1f3f gui=underline
                \ ctermfg=255 ctermbg=17 cterm=underline
" fold "{{{2
highlight Folded guifg=#2f2f2f guibg=#afafcf gui=NONE
                \ ctermfg=237 ctermbg=250 cterm=NONE
highlight FoldColumn guifg=#8f8faf guibg=NONE gui=bold
                \ ctermfg=246 ctermbg=NONE cterm=bold


" diff "{{{2
highlight DiffAdd guifg=#0f0f0f guibg=#8fcfcf gui=NONE
                \ ctermfg=NONE ctermbg=121 cterm=NONE
highlight DiffChange guifg=#0f0f0f guibg=#afff4f gui=NONE
                \ ctermfg=NONE ctermbg=193 cterm=NONE
highlight DiffDelete guifg=#0f0f0f guibg=#cf5faf gui=NONE
                \ ctermfg=NONE ctermbg=219 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=NONE cterm=NONE
" }}}2
highlight SignColumn guifg=#ffffb0 guibg=bg gui=NONE
                \ ctermfg=228 ctermbg=NONE cterm=NONE
highlight Conceal guifg=#ffffb0 guibg=bg gui=NONE
                \ ctermfg=228 ctermbg=165 cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#cf5faf guibg=bg gui=NONE
                \ ctermfg=133 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#af5fcf guibg=bg gui=NONE
                \ ctermfg=135 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#5fcfaf guibg=bg gui=NONE
                \ ctermfg=43 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#cfaf5f guibg=bg gui=NONE
                \ ctermfg=227 ctermbg=bg cterm=NONE


" pmenu "{{{2
highlight Pmenu guifg=#cfcfcf guibg=#0a0a0f gui=NONE
                \ ctermfg=231 ctermbg=232 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#cccccc guibg=#1f1f2f gui=NONE
                \ ctermfg=fg ctermbg=55 cterm=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#6f2f3f gui=NONE
                \ ctermfg=fg ctermbg=205 cterm=NONE


" tabline "{{{2
highlight TabLine guifg=#afafaf guibg=#0f0f1f gui=underline
                \ ctermfg=250 ctermbg=232 cterm=underline
highlight TabLineSel guifg=#cfcfff guibg=#0f1f3f gui=NONE
                \ ctermfg=252 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#af5faf guibg=#0f0f1f gui=NONE
                \ ctermfg=169 ctermbg=232 cterm=NONE


" tabpanel "{{{2
highlight TabPanel guifg=#afafaf guibg=#0f0f1f gui=NONE
                \ ctermfg=250 ctermbg=232 cterm=NONE
highlight TabPanelSel guifg=#cfcfff guibg=#0f1f3f gui=NONE
                \ ctermfg=252 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#af5faf guibg=#0f0f1f gui=NONE
                \ ctermfg=169 ctermbg=232 cterm=NONE


" cursor "{{{2
highlight CursorColumn guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=147 ctermbg=18 cterm=NONE
highlight CursorLine guifg=NONE guibg=#1f1f2f gui=NONE
                \ ctermfg=NONE ctermbg=233 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=NONE ctermbg=18 cterm=NONE
highlight Cursor guifg=#ffffff guibg=#1f5f3f gui=NONE
                \ ctermfg=255 ctermbg=48 cterm=NONE
"IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#cfcfcf guibg=#3f001f gui=NONE
                \ ctermfg=255 ctermbg=88 cterm=NONE
endif


" }}}2
" terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=fg guibg=bg gui=NONE
                  \ ctermfg=fg ctermbg=bg cterm=NONE
  highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
                  \ ctermfg=0 ctermbg=10 cterm=NONE
  highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
                  \ ctermfg=96 ctermbg=183 cterm=NONE

  " Terminal color
  let g:terminal_ansi_colors = [
        \ "#0c0c0c", "#c50f1f", "#13a10e", "#c19c00",
        \ "#0037da", "#881798", "#3a96dd", "#cccccc",
        \ "#767676", "#e74856", "#16c60c", "#eadf84",
        \ "#3b78ff", "#b4009e", "#61d6d6", "#e8e8e8"
        \ ]

endif


" #- Syntax highlighting group -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
                \ ctermfg=102 ctermbg=73 cterm=NONE
highlight MatchParen guifg=#0f3f5f guibg=#3f5f8f gui=bold,underline
                \ ctermfg=33 ctermbg=25 cterm=bold,underline
highlight comment guifg=#5f8fff guibg=bg gui=NONE
                \ ctermfg=75 ctermbg=bg cterm=NONE
highlight Constant guifg=#8f8fff guibg=bg gui=NONE
                \ ctermfg=105 ctermbg=bg cterm=NONE
highlight Special guifg=#ffdfaf guibg=bg gui=NONE
                \ ctermfg=186 ctermbg=bg cterm=NONE
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


