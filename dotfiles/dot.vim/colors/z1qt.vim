" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Inspered K_Rider Eternal



" #- reset -# "{{{1
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#000000 guibg=#f0f0ff gui=NONE
                \ ctermfg=0 ctermbg=195 cterm=NONE
highlight SpecialKey guifg=#6f2f6f guibg=bg gui=NONE
                \ ctermfg=53 ctermbg=bg cterm=NONE
highlight NonText guifg=#5f33ff guibg=bg gui=NONE
                \ ctermfg=26 ctermbg=bg cterm=NONE
highlight EndOfBuffers guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#1f2f5f guibg=bg gui=bold
                \ ctermfg=18 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#cf2f4f guibg=#ffcfcf gui=NONE
                \ ctermfg=52 ctermbg=217 cterm=NONE
" Search "{{{2
highlight IncSearch guifg=#000000 guibg=#ff5f65 gui=bold
                \ ctermfg=52 ctermbg=124 cterm=bold,underline
highlight Search guifg=#000000 guibg=#5f8fff gui=bold
                \ ctermfg=17 ctermbg=25 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#2f4f7f guibg=#cfcfff gui=NONE
                \ ctermfg=17 ctermbg=75 cterm=NONE
highlight ModeMsg guifg=#2faf8f guibg=#cfffcf gui=NONE
                \ ctermfg=22 ctermbg=122 cterm=NONE
highlight LineNr guifg=#3f7faf guibg=NONE gui=NONE
                \ ctermfg=31 ctermbg=NONE cterm=NONE
highlight CursorLineNr guifg=#3f7faf guibg=NONE gui=NONE
                \ ctermfg=52 ctermbg=219 cterm=bold
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight CursorLineNr guifg=#9f4f7f guibg=#af8fff gui=NONE
                \ ctermfg=197 ctermbg=189 cterm=bold
highlight Question guifg=#2faf6f guibg=#cfffff gui=NONE
                \ ctermfg=22 ctermbg=120 cterm=NONE
" Statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#2f2f4f gui=NONE
                \ ctermfg=15 ctermbg=233 cterm=NONE
highlight StatusLineNC guifg=#6f6f6f guibg=#cfbfbf gui=NONE
                \ ctermfg=240 ctermbg=181 cterm=NONE
" }}}2
highlight VertSplit guifg=bg guibg=bg gui=bold
                \ ctermfg=bg ctermbg=bg cterm=bold
highlight Title guifg=#2f7f86 guibg=bg gui=underline
                \ ctermfg=29 ctermbg=bg cterm=underline
" Visual "{{{2
highlight Visual guifg=#ffffff guibg=#1f2f5f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#3f4f7f gui=bold,underline
                \ ctermfg=250 ctermbg=25 cterm=bold,underline
" }}}2
highlight WarningMsg guifg=#cf2f4f guibg=#ffdfff gui=NONE
                \ ctermfg=52 ctermbg=225 cterm=NONE
highlight WildMenu guifg=#ffffff guibg=#0f2f5f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
" Fold "{{{2
highlight Folded guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=233 ctermbg=152 cterm=NONE
highlight FoldColumn guifg=#0f1f5f guibg=#cfcfff gui=bold
                \ ctermfg=17 ctermbg=152 cterm=bold
" }}}2
" Diff "{{{2
highlight DiffAdd guifg=fg guibg=#bfffbf gui=NONE
                \ ctermfg=NONE ctermbg=121 cterm=NONE
highlight DiffChange guifg=fg guibg=#ffffbf gui=NONE
                \ ctermfg=NONE ctermbg=186 cterm=NONE
highlight DiffDelete guifg=fg guibg=#ffbfbf gui=bold
                \ ctermfg=NONE ctermbg=213 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=NONE cterm=NONE
" }}}2
highlight SignColumn guifg=#7f2f4f guibg=bg gui=NONE
                \ ctermfg=165 ctermbg=bg cterm=NONE
highlight Conceal guifg=#7f2f4f guibg=bg gui=NONE
                \ ctermfg=165 ctermbg=93 cterm=NONE
" Spell "{{{2
highlight SpellBad guifg=#af3f5f guibg=bg gui=NONE
                \ ctermfg=125 ctermbg=bg cterm=underline
highlight SpellCap guifg=#3f4f7f guibg=bg gui=NONE
                \ ctermfg=26 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#3f7f6f guibg=bg gui=NONE
                \ ctermfg=29 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#5faf3f guibg=bg gui=NONE
                \ ctermfg=77 ctermbg=bg cterm=NONE

" Pmenu "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=0 ctermbg=152 cterm=NONE
highlight PmenuSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#cccccc guibg=#2f2f2f gui=NONE
                \ ctermfg=fg ctermbg=235 cterm=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#6f2f4f gui=NONE
                \ ctermfg=fg ctermbg=89 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#cf3f8f guibg=#0f1f3f gui=NONE
                \ ctermfg=162 ctermbg=232 cterm=NONE
highlight TabLineSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
                \ ctermfg=253 ctermbg=18 cterm=NONE
highlight TabLineFill guifg=#3f5fff guibg=#0f1f3f gui=NONE
                \ ctermfg=25 ctermbg=233 cterm=NONE

" tabpanel "{{{2
highlight TabPanel guifg=#cf3f8f guibg=#0f1f3f gui=NONE
                \ ctermfg=162 ctermbg=232 cterm=NONE
highlight TabPanelSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
                \ ctermfg=253 ctermbg=18 cterm=NONE
highlight TabPanelFill guifg=#3f5fff guibg=#0f1f3f gui=NONE
                \ ctermfg=25 ctermbg=233 cterm=NONE

" cursor "{{{2
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
                \ ctermfg=0 ctermbg=234 cterm=NONE
highlight CursorLine guifg=NONE guibg=#dfefff gui=NONE
                \ ctermfg=NONE ctermbg=255 cterm=NONE
highlight ColourColumn guifg=#cfcfcf guibg=#1f2f6f gui=NONE
                \ ctermfg=0 ctermbg=205 cterm=NONE
highlight Cursor guifg=#cfcfcf guibg=#1f2f6f gui=NONE
                \ ctermfg=195 ctermbg=21 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af4f5f gui=NONE
                \ ctermfg=0 ctermbg=88 cterm=NONE
endif

" }}}2
" terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=fg guibg=bg gui=NONE
                  \ ctermfg=fg ctermbg=bg cterm=NONE
  highlight StatusLineTerm guifg=#0f3f8f guibg=#afcfff gui=NONE
                  \ ctermfg=0 ctermbg=10 cterm=NONE
  highlight StatusLineTermNC guifg=#8f7f5f guibg=#c0afcf gui=NONE
                  \ ctermfg=96 ctermbg=183 cterm=NONE
  " Terminal color
  let g:terminal_ansi_colors = [
        \ "#0c0c0c", "#c50f1f", "#13a10e", "#c19c00",
        \ "#0037da", "#881798", "#3a96dd", "#cccccc",
        \ "#767676", "#e74856", "#16c60c", "#eadf84",
        \ "#3b78ff", "#b4009e", "#61d6d6", "#e8e8e8"
        \ ]

endif



" #- Syntax highlighting groups -# "{{{1
highlight lCursor guifg=#2f2f2f guibg=#7ea3a6 gui=NONE
                \ ctermfg=60 ctermbg=73 cterm=NONE
highlight MatchParen guifg=#0f0f0f guibg=#2f2f8d gui=bold
                \ ctermfg=17 ctermbg=56 cterm=bold,underline
highlight comment guifg=#1f4faf guibg=bg gui=NONE
                \ ctermfg=26 ctermbg=bg cterm=NONE
highlight Constant guifg=#1f5f3f guibg=bg gui=NONE
                \ ctermfg=23 ctermbg=bg cterm=NONE
highlight Special guifg=#2f2f5f guibg=bg gui=NONE
                \ ctermfg=21 ctermbg=bg cterm=NONE
highlight Identifier guifg=#9f2f3f guibg=bg gui=NONE
                \ ctermfg=88 ctermbg=bg cterm=NONE
highlight Statement guifg=#4f5faf guibg=bg gui=NONE
                \ ctermfg=26 ctermbg=bg cterm=NONE
highlight PreProc guifg=#9f2faf guibg=bg gui=NONE
                \ ctermfg=127 ctermbg=bg cterm=NONE
highlight type guifg=#7f2f7f guibg=bg gui=NONE
                \ ctermfg=54 ctermbg=bg cterm=NONE
highlight underlined guifg=#3f5faf guibg=#cfcfff gui=bold,underline
                \ ctermfg=25 ctermbg=123 cterm=bold,underline
highlight Ignore guifg=#1f2f3f guibg=bg gui=bold
                \ ctermfg=233 ctermbg=bg cterm=bold
highlight Error guifg=#a04f7e guibg=#ffcfcf gui=NONE
                \ ctermfg=197 ctermbg=225 cterm=NONE
highlight Todo guifg=#af2f5f guibg=#cfcfff gui=bold,underline
                \ ctermfg=197 ctermbg=255 cterm=bold,underline
highlight String guifg=#8f4f2f guibg=bg gui=NONE
                \ ctermfg=130 ctermbg=bg cterm=NONE


" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
