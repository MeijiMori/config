" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen {[(*)]}
" highlighting ZenkakuSpace /　/

" #- First remove all existing highlighting. -# "{{{1
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#ffffff guibg=#0f0f0f gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
highlight SpecialKey guifg=#af2f5f guibg=bg gui=NONE
                \ ctermfg=125 ctermbg=bg cterm=NONE
highlight NonText guifg=#3f7fff guibg=bg gui=bold
                \ ctermfg=75 ctermbg=bg cterm=bold
highlight EndOfBuffers guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#5f8fcf guibg=bg gui=NONE
                \ ctermfg=75 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#cf2f4f guibg=NONE gui=NONE
                \ ctermfg=124 ctermbg=bg cterm=NONE
" search "{{{2
highlight IncSearch guifg=#000000 guibg=#8f9fff gui=NONE
                \ ctermfg=17 ctermbg=75 cterm=bold,underline
highlight Search guifg=#000000 guibg=#afcfff gui=NONE
                \ ctermfg=22 ctermbg=121 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#4f7faf guibg=bg gui=NONE
                \ ctermfg=32 ctermbg=bg cterm=NONE
highlight ModeMsg guifg=#2faf8f guibg=bg gui=NONE
                \ ctermfg=43 ctermbg=bg cterm=NONE
highlight LineNr guifg=#cfcfcf guibg=NONE gui=NONE
                \ ctermfg=251 ctermbg=bg cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight CursorLineNr guifg=#9f4f7f guibg=#af8fff gui=NONE
                \ ctermfg=197 ctermbg=189 cterm=bold
highlight Question guifg=#2fffcf guibg=bg gui=NONE
                \ ctermfg=49 ctermbg=bg cterm=NONE
" Statusline "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#1f1f2f gui=bold
                \ ctermfg=255 ctermbg=234 cterm=bold
highlight StatusLineNC guifg=#5f5f5f guibg=#0f0f1f gui=NONE
                \ ctermfg=240 ctermbg=233 cterm=NONE
" }}}2
highlight VertSplit guifg=#6f6f6f guibg=#dfdfdf gui=NONE
                \ ctermfg=248 ctermbg=255 cterm=NONE
highlight Title guifg=#5fcfaf guibg=bg gui=NONE
                \ ctermfg=121 ctermbg=bg cterm=NONE
" Visual "{{{2
highlight Visual guifg=#ffffff guibg=#1f2f5f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#ffffff guibg=#3f4f7f gui=bold,underline
                \ ctermfg=255 ctermbg=103 cterm=bold,underline
" }}}2
highlight WarningMsg guifg=#cf2f4f guibg=bg gui=NONE
                \ ctermfg=161 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#ffffff guibg=#0f2f5f gui=NONE
                \ ctermfg=161 ctermbg=bg cterm=NONE
" Fold "{{{2
highlight Folded guifg=#3f5faf guibg=#0f0f2f gui=NONE
                \ ctermfg=69 ctermbg=17 cterm=NONE
highlight FoldColumn guifg=#2f2f8f guibg=#0f0f2f gui=bold
                \ ctermfg=25 ctermbg=17 cterm=bold

" diff "{{{2
highlight DiffAdd guifg=#7fafff guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=123 cterm=NONE
highlight DiffChange guifg=#ff8faf guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=118 cterm=NONE
highlight DiffDelete guifg=#af5faf guibg=bg gui=bold
                \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight DiffText guifg=#cfcfcf guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=171 cterm=NONE
" }}}2
highlight SignColumn guifg=#cf4f8f guibg=bg gui=NONE
                \ ctermfg=200 ctermbg=bg cterm=NONE
highlight Conceal guifg=#cf4f8f guibg=bg gui=NONE
                \ ctermfg=124 ctermbg=20 cterm=NONE
" Spell "{{{2
highlight SpellBad guifg=#af5fcf guibg=bg gui=NONE
                \ ctermfg=134 ctermbg=bg cterm=underline
highlight SpellCap guifg=#6f7fff guibg=bg gui=NONE
                \ ctermfg=69 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#6fcf9f guibg=bg gui=NONE
                \ ctermfg=78 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#8fdf6f guibg=bg gui=NONE
                \ ctermfg=114 ctermbg=bg cterm=NONE

" Pmenu "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#cfcfcf gui=NONE
                \ ctermfg=232 ctermbg=255 cterm=NONE
highlight PmenuSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#cccccc guibg=#2f2f2f gui=NONE
                \ ctermfg=fg ctermbg=240 cterm=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#6f2f4f gui=NONE
                \ ctermfg=fg ctermbg=126 cterm=NONE

"tabline "{{{2
highlight TabLine guifg=#afafaf guibg=#4f4f4f gui=NONE
                \ ctermfg=255 ctermbg=237 cterm=NONE
highlight TabLineSel guifg=#dfdfdf guibg=#7f7f7f gui=NONE
                \ ctermfg=15 ctermbg=242 cterm=NONE
highlight TabLineFill guifg=#5f5f5f guibg=#3f3f3f gui=NONE
                \ ctermfg=241 ctermbg=235 cterm=NONE

"tabpanel "{{{2
highlight TabPanel guifg=#afafaf guibg=#4f4f4f gui=NONE
                \ ctermfg=255 ctermbg=237 cterm=NONE
highlight TabPanelSel guifg=#dfdfdf guibg=#7f7f7f gui=NONE
                \ ctermfg=15 ctermbg=242 cterm=NONE
highlight TabPanelFill guifg=#5f5f5f guibg=#3f3f3f gui=NONE
                \ ctermfg=241 ctermbg=235 cterm=NONE

" cursor "{{{2
highlight CursorColumn gui=NONE guifg=#000000 guibg=#2f2f2f
                \ ctermfg=0 ctermbg=8 cterm=NONE
highlight CursorLine gui=NONE guifg=NONE guibg=#2f2f3f
                \ ctermfg=NONE ctermbg=234 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=NONE ctermbg=18 cterm=NONE
highlight Cursor guifg=#000000 guibg=#cfcfcf gui=NONE
                \ ctermfg=0 ctermbg=255 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime')
  highlight CursorIM gui=NONE guifg=#000000 guibg=#af2f3f
                \ ctermfg=0 ctermbg=255 cterm=NONE
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


" #- syntax highlighting groups -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
                \ ctermfg=49 ctermbg=123 cterm=NONE
highlight MatchParen guifg=#3f3f3f guibg=#2f63ad gui=bold
                \ ctermfg=17 ctermbg=69 cterm=bold,underline
highlight comment guifg=#7f7f8f guibg=bg gui=NONE
                \ ctermfg=241 ctermbg=bg cterm=NONE
highlight Constant guifg=#5f8fff guibg=bg gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Special guifg=#bfbfbf guibg=bg gui=NONE
                \ ctermfg=246 ctermbg=bg cterm=NONE
highlight Identifier guifg=#6fcfbf guibg=bg gui=NONE
                \ ctermfg=87 ctermbg=bg cterm=NONE
highlight Statement guifg=#6f5fff guibg=bg gui=NONE
                \ ctermfg=63 ctermbg=bg cterm=NONE
highlight PreProc guifg=#afffcf guibg=bg gui=NONE
                \ ctermfg=121 ctermbg=bg cterm=NONE
highlight type guifg=#6fbfcf guibg=bg gui=NONE
                \ ctermfg=81 ctermbg=bg cterm=NONE
highlight underlined guifg=#3faf6f guibg=bg gui=underline
                \ ctermfg=41 ctermbg=bg cterm=NONE
highlight Ignore guifg=#7f7f7f guibg=bg gui=NONE
                \ ctermfg=242 ctermbg=bg cterm=NONE
highlight Error guifg=#ff4f8f guibg=bg gui=NONE
                \ ctermfg=204 ctermbg=bg cterm=NONE
highlight Todo guifg=#af2f5f guibg=#1f1f1f gui=bold,underline
                \ ctermfg=161 ctermbg=bg cterm=bold,underline
highlight string guifg=#cf8faf guibg=bg gui=NONE
                \ ctermfg=213 ctermbg=bg cterm=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
