" #- vim colorscheme file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Made at 2012-04-29
" Guicolorscheme file
" Improved my colorscheme Brews

" #- reset -#"{{{1
" First remove all existing highlighting.
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

" #- colorscheme name -#"{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#fdfdfd guibg=#303037 gui=NONE
          \ ctermfg=255 ctermbg=234 cterm=NONE
highlight SpecialKey guifg=#8f5fff guibg=NONE gui=bold
          \ ctermfg=12 ctermbg=bg cterm=bold
highlight NonText guifg=#8f8fff guibg=#303030 gui=bold
          \ ctermfg=69 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#cf3f8f guibg=bg gui=bold
          \ ctermfg=200 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#5f1f2f guibg=#cf8faf gui=underline
          \ ctermfg=88 ctermbg=177 cterm=underline
" Search "{{{2
highlight IncSearch guifg=#0f5f3f guibg=#3faf7f gui=underline
          \ ctermfg=22 ctermbg=42 cterm=bold,underline
highlight Search guifg=#5f0f3f guibg=#af3f7f gui=underline
          \ ctermfg=52 ctermbg=125 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#0f5f3f guibg=#3faf7f gui=underline
          \ ctermfg=22 ctermbg=36 cterm=underline
highlight ModeMsg guifg=#6f6f8f guibg=#cfcfff gui=underline
          \ ctermfg=243 ctermbg=253 cterm=underline
highlight LineNr  guifg=#c3bcb4 guibg=NONE gui=NONE
          \ ctermfg=249 ctermbg=NONE cterm=NONE
highlight CursorLineNr  guifg=#c3bcb4 guibg=NONE gui=NONE
          \ ctermfg=249 ctermbg=0 cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#0f3f5f guibg=#3f7faf gui=underline
          \ ctermfg=17 ctermbg=27 cterm=underline
" Statusline "{{{2
highlight StatusLine guifg=#aaaaaa guibg=#2f2f2f gui=NONE
          \ ctermfg=248 ctermbg=234 cterm=NONE
highlight StatusLineNC guifg=#6f6f8f guibg=#cfcfff gui=underline
          \ ctermfg=242 ctermbg=189 cterm=underline
highlight StatusLineTerm guifg=#aaaaaa guibg=#2f2f2f gui=underline
          \ ctermfg=248 ctermbg=234 cterm=NONE
highlight StatusLineTermNC guifg=#6f6f8f guibg=#cfcfff gui=underline
          \ ctermfg=242 ctermbg=189 cterm=underline

" terminal "{{{2
highlight Terminal guifg=#cfcfcf guibg=#00000f gui=NONE
                \ ctermfg=10 ctermbg=0 cterm=NONE
highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
                \ ctermfg=0 ctermbg=10 cterm=NONE
highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
                \ ctermfg=96 ctermbg=183 cterm=NONE


"}}}2
highlight Title guifg=#72dc95 guibg=NONE gui=underline
          \ ctermfg=120 ctermbg=bg cterm=underline
highlight VertSplit guifg=#1f5fdf guibg=#0f0f2f gui=NONE
          \ ctermfg=18 ctermbg=0 cterm=underline
" Visual "{{{2
highlight Visual guifg=fg guibg=#1f2f5f gui=NONE
          \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guibg=#aaeeee guifg=#3d3d3d gui=underline
          \ ctermfg=17 ctermbg=81 cterm=underline
"}}}2
highlight WarningMsg guifg=#5f2f0f guibg=#ff7f5f gui=underline
          \ ctermfg=130 ctermbg=9 cterm=underline
highlight WildMenu guifg=#cfcfcf guibg=#7f3f5f gui=underline
          \ ctermfg=252 ctermbg=125 cterm=underline
" Fold "{{{2
highlight Folded guifg=#cfcfff guibg=#1f1f2f gui=NONE
          \ ctermfg=250 ctermbg=233 cterm=NONE
highlight FoldColumn guifg=#8f8fff guibg=#1f1f2f gui=bold
          \ ctermfg=105 ctermbg=233 cterm=bold


" Diff "{{{2
highlight DiffAdd guifg=fg guibg=#5f8f4f gui=NONE
          \ ctermfg=NONE ctermbg=22 cterm=NONE
highlight DiffChange guifg=fg guibg=#ff8f4f gui=NONE
          \ ctermfg=NONE ctermbg=208 cterm=NONE
highlight DiffDelete guifg=fg guibg=#cf2f3f gui=NONE
          \ ctermfg=NONE ctermbg=124 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
"}}}2
highlight SignColumn guifg=#afafff guibg=bg gui=NONE
          \ ctermfg=147 ctermbg=bg cterm=NONE
" Spell "{{{2
highlight SpellBad guifg=#cf2f5f guibg=bg gui=NONE
          \ ctermfg=124 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#5f5fff guibg=bg gui=NONE
          \ ctermfg=27 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#5fff8f guibg=bg gui=NONE
          \ ctermfg=47 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#bfcf5f guibg=bg gui=NONE
          \ ctermfg=142 ctermbg=bg cterm=NONE


" Pmenu "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#afafff gui=NONE
          \ ctermfg=232 ctermbg=251 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#1f1f1f gui=NONE
          \ ctermfg=255 ctermbg=0 cterm=NONE
highlight PmenuSbar guifg=fg guibg=#1f1f2f gui=NONE
          \ ctermfg=fg ctermbg=234 cterm=NONE
highlight PmenuThumb guifg=#5f0f0f guibg=#8f2f2f gui=NONE
          \ ctermfg=fg ctermbg=124 cterm=NONE


" Tabline "{{{2
highlight TabLine guifg=#cccccc guibg=bg gui=underline
          \ ctermfg=250 ctermbg=234 cterm=underline
highlight TabLineSel guifg=#cccccc guibg=#2f3f5f gui=NONE
          \ ctermfg=250 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#415676 guibg=bg gui=underline
          \ ctermfg=24 ctermbg=234 cterm=underline

" Tabpanel "{{{2
highlight TabPanel guifg=#cccccc guibg=bg gui=NONE
          \ ctermfg=250 ctermbg=234 cterm=NONE
highlight TabPanelSel guifg=#cccccc guibg=#2f3f5f gui=NONE
          \ ctermfg=250 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#415676 guibg=bg gui=NONE
          \ ctermfg=24 ctermbg=234 cterm=NONE

" Cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
          \ ctermfg=234 ctermbg=238 cterm=NONE
highlight CursorLine guifg=NONE guibg=#3f3f3f gui=NONE
          \ ctermfg=NONE ctermbg=233 cterm=NONE
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
          \ ctermfg=255 ctermbg=253 cterm=NONE
highlight Cursor guifg=#0f0f0f guibg=#cfcfff gui=NONE
          \ ctermfg=232 ctermbg=253 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af2f5f gui=NONE
          \ ctermfg=0 ctermbg=88 cterm=NONE
endif


"}}}2


" #- Syntax highlighting group -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
          \ ctermfg=232 ctermbg=87 cterm=NONE
highlight MatchParen guifg=#002f4f guibg=#3f7faf gui=bold
          \ ctermfg=17 ctermbg=33 cterm=bold,underline
highlight comment guifg=#5f8fcf guibg=bg gui=NONE
          \ ctermfg=32 ctermbg=bg cterm=NONE
highlight Constant guifg=#cf2f5f guibg=bg gui=NONE
          \ ctermfg=197 ctermbg=bg cterm=NONE
highlight Special guifg=#cfffcf guibg=bg gui=NONE
          \ ctermfg=152 ctermbg=bg cterm=NONE
highlight Identifier guifg=#5fff8f guibg=bg gui=NONE
          \ ctermfg=41 ctermbg=bg cterm=NONE
highlight Statement guifg=#5f5fff guibg=bg gui=NONE
          \ ctermfg=12 ctermbg=bg cterm=NONE
highlight PreProc guifg=#ffaf8f guibg=bg gui=NONE
          \ ctermfg=209 ctermbg=bg cterm=NONE
highlight type guifg=#5fffaf guibg=bg gui=NONE
          \ ctermfg=47 ctermbg=bg cterm=NONE
highlight underlined guifg=#6699cc guibg=bg gui=underline
          \ ctermfg=33 ctermbg=bg cterm=underline
highlight Ignore guifg=#7f7f7f guibg=bg gui=bold
          \ ctermfg=240 ctermbg=bg cterm=bold
highlight Error guifg=#ff2f5f guibg=bg gui=NONE
          \ ctermfg=196 ctermbg=bg cterm=NONE
highlight Todo guifg=#a0a0ff guibg=bg gui=bold,underline
          \ ctermfg=153 ctermbg=bg cterm=bold,underline
highlight string guifg=#afafff guibg=bg gui=NONE
          \ ctermfg=147 ctermbg=bg cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


