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
let g:colors_name = expand('<sfile>:t:r')

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#000000 gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
highlight SpecialKey guifg=#6f2f6f guibg=bg gui=NONE
                \ ctermfg=53 ctermbg=bg cterm=NONE
highlight NonText guifg=#5f33ff guibg=bg gui=NONE
                \ ctermfg=26 ctermbg=bg cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#1f2f5f guibg=bg gui=bold
                \ ctermfg=23 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#cf2f4f guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
" Search "{{{2
highlight IncSearch guifg=#000000 guibg=#af2f35 gui=bold
                \ ctermfg=88 ctermbg=163 cterm=bold,underline
highlight Search guifg=#000000 guibg=#2f3faf gui=bold
                \ ctermfg=17 ctermbg=25 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#2f4f7f guibg=#cfcfff gui=NONE
                \ ctermfg=19 ctermbg=153 cterm=NONE
highlight ModeMsg guifg=#2faf8f guibg=#cfffcf gui=NONE
                \ ctermfg=41 ctermbg=158 cterm=NONE
highlight LineNr guifg=#3f7faf guibg=NONE gui=NONE
                \ ctermfg=111 ctermbg=NONE cterm=NONE
highlight CursorLineNr guifg=#3f7faf guibg=NONE gui=NONE
                \ ctermfg=31 ctermbg=16 cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#2faf6f guibg=#cfffff gui=NONE
                \ ctermfg=41 ctermbg=158 cterm=NONE
" Statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#2f2f4f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight StatusLineNC guifg=#6f6f6f guibg=#cfbfbf gui=NONE
                \ ctermfg=237 ctermbg=138 cterm=NONE
" }}}2
highlight VertSplit guifg=bg guibg=bg gui=bold
                \ ctermfg=0 ctermbg=0 cterm=NONE
highlight Title guifg=#2f7f86 guibg=bg gui=NONE
                \ ctermfg=29 ctermbg=bg cterm=NONE
" Visual "{{{2
highlight Visual guifg=#ffffff guibg=#1f2f5f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#3f4f7f gui=underline,bold
                \ ctermfg=145 ctermbg=69 cterm=underline,bold
" }}}2
highlight WarningMsg guifg=#cf2f4f guibg=bg gui=NONE
                \ ctermfg=197 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#ffffff guibg=#0f2f5f gui=NONE
                \ ctermfg=252 ctermbg=21 cterm=NONE
" Fold "{{{2
highlight Folded guifg=#2f3f8f guibg=#00000f gui=NONE
                \ ctermfg=26 ctermbg=16 cterm=NONE
highlight FoldColumn guifg=#0f1f5f guibg=#00000f gui=bold
                \ ctermfg=25 ctermbg=16 cterm=bold

" Diff "{{{2
highlight DiffAdd guifg=fg guibg=#bfffbf gui=NONE
                \ ctermfg=fg ctermbg=29 cterm=NONE
highlight DiffChange guifg=fg guibg=#ffffbf gui=NONE
                \ ctermfg=fg ctermbg=94 cterm=NONE
highlight DiffDelete guifg=fg guibg=#ffbfbf gui=bold
                \ ctermfg=fg ctermbg=124 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=NONE cterm=NONE
" }}}2
highlight SignColumn guifg=#7f2f4f guibg=bg gui=NONE
                \ ctermfg=125 ctermbg=bg cterm=NONE
highlight Conceal guifg=#7f2f4f guibg=bg gui=NONE
                \ ctermfg=125 ctermbg=bg cterm=NONE
" Spell "{{{2
highlight SpellBad guifg=#af3f5f guibg=bg gui=NONE
                \ ctermfg=133 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#3f4f7f guibg=bg gui=NONE
                \ ctermfg=63 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#3f7f6f guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#5faf3f guibg=bg gui=NONE
                \ ctermfg=41 ctermbg=bg cterm=NONE

" Pmenu "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#cfcfff gui=NONE
                \ ctermfg=232 ctermbg=147 cterm=NONE
highlight PmenuSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
                \ ctermfg=252 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#cccccc guibg=#2f2f2f gui=NONE
                \ ctermfg=fg ctermbg=240 cterm=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#6f2f4f gui=NONE
                \ ctermfg=fg ctermbg=125 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#cf3f8f guibg=#0f1f3f gui=NONE
                \ ctermfg=125 ctermbg=16 cterm=NONE
highlight TabLineSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
                \ ctermfg=15 ctermbg=18 cterm=NONE
highlight TabLineFill guifg=#3f5fff guibg=#0f1f3f gui=NONE
                \ ctermfg=12 ctermbg=16 cterm=NONE

" tabpanel "{{{2
highlight TabPanel guifg=#cf3f8f guibg=#0f1f3f gui=NONE
                \ ctermfg=125 ctermbg=16 cterm=NONE
highlight TabPanelSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
                \ ctermfg=15 ctermbg=18 cterm=NONE
highlight TabPanelFill guifg=#3f5fff guibg=#0f1f3f gui=NONE
                \ ctermfg=12 ctermbg=16 cterm=NONE

" cursor "{{{2
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
                \ ctermfg=NONE ctermbg=233 cterm=NONE
highlight CursorLine guifg=NONE guibg=#0f0f0f gui=NONE
                \ ctermfg=NONE ctermbg=0 cterm=NONE
highlight Cursor guifg=#cfcfcf guibg=#1f2f6f gui=NONE
                \ ctermfg=250 ctermbg=4 cterm=NONE

" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM gui=NONE guifg=#000000 guibg=#af4f5f
                \ ctermfg=250 ctermbg=88 cterm=NONE
endif



" terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=fg guibg=bg gui=NONE
                  \ ctermfg=fg ctermbg=bg cterm=NONE
  highlight StatusLineTerm guifg=#000f2f guibg=#cfccff gui=NONE
                  \ ctermfg=fg ctermbg=bg cterm=NONE
  highlight StatusLineTermNc guifg=#002f2f guibg=#8fafcf gui=NONE
                  \ ctermfg=fg ctermbg=bg cterm=NONE
  " Terminal color
  let g:terminal_ansi_colors = [
    \ "#0c0c0c", "#850f1f", "#13710e", "#819c00",
    \ "#00378a", "#881798", "#3a96dd", "#8f8f8f",
    \ "#767676", "#872836", "#16960c", "#6a7f84",
    \ "#3b789f", "#94005e", "#61d6d6", "#989898"
    \ ]
endif



" toolbar "{{{2
highlight ToolbarButton guifg=#3f1f8f guibg=#afafff gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ToolbarLine guifg=#5f0f0f guibg=#df3fcf gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE



" #- Syntax highlighting groups -# "{{{1
highlight lCursor guifg=#2f2f2f guibg=#7ea3a6 gui=NONE
                \ ctermfg=32 ctermbg=115 cterm=NONE
highlight MatchParen guifg=#0f0f0f guibg=#2f2f8d gui=bold
                \ ctermfg=16 ctermbg=57 cterm=bold,underline
highlight comment guifg=#1f4faf guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=NONE cterm=NONE
highlight Constant guifg=#1f5f3f guibg=bg gui=NONE
                \ ctermfg=29 ctermbg=NONE cterm=NONE
highlight Special guifg=#2f2f5f guibg=bg gui=NONE
                \ ctermfg=24 ctermbg=NONE cterm=NONE
highlight Identifier guifg=#9f2f3f guibg=bg gui=NONE
                \ ctermfg=168 ctermbg=NONE cterm=NONE
highlight Statement guifg=#4f5faf guibg=bg gui=NONE
                \ ctermfg=105 ctermbg=NONE cterm=NONE
highlight PreProc guifg=#9f2faf guibg=bg gui=NONE
                \ ctermfg=171 ctermbg=NONE cterm=NONE
highlight type guifg=#7f2f7f guibg=bg gui=NONE
                \ ctermfg=165 ctermbg=NONE cterm=NONE
highlight underlined guifg=#3f5faf guibg=#cfcfff gui=underline,bold
                \ ctermfg=111 ctermbg=189 cterm=bold,underline
highlight Ignore guifg=#1f2f3f guibg=bg gui=bold
                \ ctermfg=23 ctermbg=bg cterm=bold
highlight Error guifg=#a04f7e guibg=bg gui=NONE
                \ ctermfg=5 ctermbg=bg cterm=NONE
highlight Todo guifg=#af2f5f guibg=#afafff gui=underline,bold
                \ ctermfg=5 ctermbg=147 cterm=bold,underline
highlight String guifg=#8f4f2f guibg=bg gui=NONE
                \ ctermfg=130 ctermbg=bg cterm=NONE


" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
