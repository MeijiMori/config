" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen {[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file

" #- Vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- Colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#0c0a0f gui=NONE
          \ ctermfg=15 ctermbg=16 cterm=NONE
highlight SpecialKey guifg=#5f0fcf guibg=bg gui=NONE
          \ ctermfg=57 ctermbg=bg cterm=NONE
highlight NonText guifg=#3f0fff guibg=#1f0f1f gui=NONE
          \ ctermfg=27 ctermbg=bg cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#2f5fe0 guibg=bg gui=bold
          \ ctermfg=33 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#5f0f2f guibg=#cf5f7f gui=underline
          \ ctermfg=52 ctermbg=171 cterm=underline
" search "{{{2
highlight IncSearch guifg=#cfcfcf guibg=#3f5f1f gui=bold
          \ ctermfg=22 ctermbg=48 cterm=bold,underline
highlight Search guifg=#cfcfcf guibg=#2f1f5f gui=bold
          \ ctermfg=53 ctermbg=99 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#0f4f1f guibg=#5fcf7f gui=underline
          \ ctermfg=22 ctermbg=47 cterm=underline
highlight ModeMsg guifg=#1f0f4f guibg=#5f7fcf gui=underline
          \ ctermfg=17 ctermbg=12 cterm=underline
highlight LineNr guifg=#5f0f3f guibg=NONE gui=NONE
          \ ctermfg=53 ctermbg=NONE cterm=NONE
highlight CursorLineNr guifg=#5f0f3f guibg=NONE gui=NONE
          \ ctermfg=89 ctermbg=232 cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#3f3f0f guibg=#8f8f2f gui=underline
          \ ctermfg=89 ctermbg=232 cterm=NONE
" statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#101020 gui=underline
          \ ctermfg=250 ctermbg=232 cterm=underline
highlight StatusLineNC guifg=#565234 guibg=#c4b2ab gui=NONE
          \ ctermfg=95 ctermbg=139 cterm=NONE
"}}}2
highlight Title guifg=#72dc95 guibg=bg gui=underline
          \ ctermfg=83 ctermbg=bg cterm=underline
highlight VertSplit guifg=#7f1f5f guibg=#0f0f0f gui=bold
          \ ctermfg=53 ctermbg=16 cterm=bold
" visual "{{{2
highlight Visual guifg=#afafaf guibg=#1f0f2f gui=NONE
          \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f2f3f gui=bold,underline
          \ ctermfg=15 ctermbg=63 cterm=bold,underline
"}}}2
highlight WarningMsg guifg=#4f0f1f guibg=#cf5f7f gui=underline
          \ ctermfg=52 ctermbg=170 cterm=underline
highlight WildMenu guifg=#cfcfcf guibg=#0f6f1f gui=bold
          \ ctermfg=15 ctermbg=22 cterm=bold
" fold "{{{2
highlight Folded guifg=#9f9f9f guibg=#150f15 gui=NONE
          \ ctermfg=248 ctermbg=232 cterm=NONE
 highlight FoldColumn guifg=#1f7f8f guibg=#100f10 gui=bold
          \ ctermfg=30 ctermbg=232 cterm=bold

" diff "{{{2
highlight DiffAdd guifg=fg guibg=#0f8f3f gui=NONE
          \ ctermfg=NONE ctermbg=42 cterm=NONE
highlight DiffChange guifg=fg guibg=#5f6f00 gui=NONE
          \ ctermfg=NONE ctermbg=137 cterm=NONE
highlight DiffDelete guifg=fg guibg=#8f0f3f gui=bold
          \ ctermfg=NONE ctermbg=198 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
" }}}
highlight SignColumn guifg=#ffffb0 guibg=bg gui=NONE
          \ ctermfg=185 ctermbg=bg cterm=NONE
highlight Conceal guifg=#ffffb0 guibg=bg gui=NONE
          \ ctermfg=185 ctermbg=147 cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#ff2faf guibg=bg gui=underline
          \ ctermfg=162 ctermbg=bg cterm=underline
highlight SpellCap guifg=#2f5faf guibg=bg gui=NONE
          \ ctermfg=25 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#2fcf8f guibg=bg gui=NONE
          \ ctermfg=42 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#ffaf5f guibg=bg gui=NONE
          \ ctermfg=179 ctermbg=bg cterm=NONE

" pmenu "{{{2
highlight Pmenu guifg=#1f1f1f guibg=#afafcf gui=NONE
          \ ctermfg=236 ctermbg=252 cterm=NONE
highlight PmenuSel guifg=#bfbfbf guibg=#2f1f50 gui=NONE
          \ ctermfg=252 ctermbg=55 cterm=NONE
highlight PmenuSbar guifg=#cccccc guibg=#101020 gui=NONE
          \ ctermfg=fg ctermbg=17 cterm=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#1f2f5f gui=NONE
          \ ctermfg=fg ctermbg=27 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#9b9b9f guibg=#1f1f1f gui=underline
          \ ctermfg=244 ctermbg=233 cterm=underline
highlight TabLineSel guifg=#cfcfcf guibg=#1f2f5f gui=NONE
          \ ctermfg=250 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#7f7f7f guibg=#1f1f1f gui=bold,underline
          \ ctermfg=244 ctermbg=233 cterm=bold,underline

" tabpanel "{{{2
highlight TabPanel guifg=#9b9b9f guibg=#1f1f1f gui=NONE
          \ ctermfg=244 ctermbg=233 cterm=NONE
highlight TabPanelSel guifg=#cfcfcf guibg=#1f2f5f gui=NONE
          \ ctermfg=250 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#7f7f7f guibg=#1f1f1f gui=bold,NONE
          \ ctermfg=244 ctermbg=233 cterm=bold,NONE

" cursor "{{{2
highlight CursorColumn guifg=fg guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=0 cterm=NONE
highlight CursorLine guifg=NONE guibg=#2f0f2f gui=NONE
          \ ctermfg=NONE ctermbg=53 cterm=NONE
highlight ColorColumn guifg=fg guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=0 cterm=NONE
highlight Cursor guifg=#000000 guibg=#afafaf gui=NONE
          \ ctermfg=0 ctermbg=255 cterm=NONE
"IME status color for cursor "{{{3
if has('multi_byte_ime')
  highlight CursorIM guifg=#0f0f0f guibg=#8f0f2f gui=NONE
          \ ctermfg=0 ctermbg=88 cterm=NONE
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
highlight MatchParen guifg=#0f0f0f guibg=#3f2f8f gui=bold
          \ ctermfg=17 ctermbg=57 cterm=NONE
highlight comment guifg=#2f5faf guibg=bg gui=NONE
          \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Constant guifg=#8d549f guibg=bg gui=NONE
          \ ctermfg=134 ctermbg=bg cterm=NONE
highlight Special guifg=#aeffed guibg=bg gui=NONE
          \ ctermfg=123 ctermbg=bg cterm=NONE
highlight Identifier guifg=#ff8f5f guibg=bg gui=NONE
          \ ctermfg=173 ctermbg=bg cterm=NONE
highlight Statement guifg=#3faf5f guibg=bg gui=NONE
          \ ctermfg=41 ctermbg=bg cterm=NONE
highlight PreProc guifg=#2f21f7 guibg=bg gui=NONE
          \ ctermfg=21 ctermbg=bg cterm=NONE
highlight type guifg=#5faf8f guibg=bg gui=NONE
          \ ctermfg=43 ctermbg=bg cterm=NONE
highlight underlined guifg=#2fcf8f guibg=bg gui=underline
          \ ctermfg=42 ctermbg=bg cterm=underline
highlight Ignore guifg=#047f75 guibg=NONE gui=bold
          \ ctermfg=36 ctermbg=bg cterm=bold
highlight Error guifg=#8f0f2f guibg=#ff8faf gui=NONE
          \ ctermfg=52 ctermbg=218 cterm=NONE
highlight Todo guifg=#ff5f2a guibg=#000000 gui=bold,underline
          \ ctermfg=202 ctermbg=232 cterm=bold,underline
highlight string guifg=#5f6fcf guibg=bg gui=NONE
          \ ctermfg=111 ctermbg=bg cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim

