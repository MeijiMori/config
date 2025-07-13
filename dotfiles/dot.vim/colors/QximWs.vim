" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file

" #- reset -# "{{{1
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#fdfdfd guibg=#1f1f2f gui=NONE
                \ ctermfg=15 ctermbg=234 cterm=NONE
highlight SpecialKey guifg=#5842ff guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight NonText guifg=#4e79c8 guibg=#10101f gui=NONE
                \ ctermfg=69 ctermbg=232 cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#3a85d2 guibg=bg gui=bold
                \ ctermfg=12 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#f84865 guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
" search "{{{2
highlight IncSearch guifg=#000000 guibg=#cc88e1 gui=bold
                \ ctermfg=52 ctermbg=171 cterm=bold,underline
highlight Search guifg=#000000 guibg=#5088e1 gui=bold
                \ ctermfg=17 ctermbg=123 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#95d5d9 guibg=#303030 gui=NONE
                \ ctermfg=78 ctermbg=235 cterm=NONE
highlight ModeMsg guifg=#ffffff guibg=#303030 gui=NONE
                \ ctermfg=15 ctermbg=235 cterm=NONE
highlight LineNr guifg=#ff8fa0 guibg=NONE gui=NONE
                \ ctermfg=203 ctermbg=bg cterm=NONE
highlight CursorLineNr guifg=#ff8fa0 guibg=NONE gui=NONE
                \ ctermfg=203 ctermbg=232 cterm=bold
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#6ab395 guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
" statusline "{{{2
highlight StatusLine guifg=#cfcfcf guibg=bg gui=NONE
                \ ctermfg=250 ctermbg=233 cterm=NONE
highlight StatusLineNC guifg=#5f5f5f guibg=#c4b2ab gui=NONE
                \ ctermfg=240 ctermbg=250 cterm=NONE
highlight VertSplit guifg=#4049d9 guibg=#202020 gui=NONE
                \ ctermfg=26 ctermbg=232 cterm=NONE
highlight Title guifg=#72dc95 guibg=NONE gui=NONE
                \ ctermfg=48 ctermbg=bg cterm=NONE
" visual "{{{2
highlight Visual guifg=#ffffff guibg=#1c5287 gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guibg=#aaeeee guifg=#3d3d3d gui=underline
                \ ctermfg=15 ctermbg=17 cterm=underline
"}}}2
highlight WarningMsg guifg=#bc4765 guibg=bg gui=NONE
                \ ctermfg=198 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#3a85d2 guibg=#2a2a2a gui=NONE
                \ ctermfg=12 ctermbg=232 cterm=NONE
" fold "{{{2
highlight Folded guifg=#cfcfcf guibg=#0f101f gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
highlight FoldColumn guifg=#3b54ec guibg=#0f101f gui=bold
                \ ctermfg=27 ctermbg=232 cterm=bold

"diff "{{{2
highlight DiffAdd guifg=#aacbde guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=22 cterm=NONE
highlight DiffChange guifg=#998dbf guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=208 cterm=NONE
highlight DiffDelete guifg=#a62c74 guibg=bg gui=bold
                \ ctermfg=NONE ctermbg=197 cterm=NONE
highlight DiffText guifg=#c9cbce guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
"}}}2
highlight SignColumn term=NONE gui=NONE guibg=bg guifg=#a65774
                \ ctermfg=fg ctermbg=bg cterm=NONE
" spell "{{{2
highlight SpellBad guibg=bg guifg=#795099 gui=NONE
                \ ctermfg=129 ctermbg=bg cterm=NONE
highlight SpellCap guibg=bg guifg=#506399 gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=NONE
highlight SpellRare guibg=bg guifg=#509982 gui=NONE
                \ ctermfg=35 ctermbg=bg cterm=NONE
highlight SpellLocal guibg=bg guifg=#998c50 gui=NONE
                \ ctermfg=172 ctermbg=bg cterm=NONE

" pmenu "{{{2
highlight Pmenu gui=NONE guifg=#cfcfcf guibg=#020f1f
                \ ctermfg=15 ctermbg=232 cterm=NONE
highlight PmenuSel gui=NONE guifg=#ccfcfa guibg=#2f3faf
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight PmenuSbar gui=NONE guifg=#9c9c9c guibg=#0f0f0f
                \ ctermfg=fg ctermbg=232 cterm=NONE
highlight PmenuThumb gui=NONE guifg=#0f0f0f guibg=#212656
                \ ctermfg=fg ctermbg=17 cterm=NONE

"tabline "{{{2
highlight TabLine guifg=#7b7b7b guibg=bg gui=underline
                \ ctermfg=245 ctermbg=232 cterm=underline
highlight TabLineSel guifg=#afafaf guibg=#0f2f5f gui=NONE
                \ ctermfg=250 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#415676 guibg=bg gui=underline
                \ ctermfg=24 ctermbg=232 cterm=underline

"tabpanel "{{{2
highlight TabPanel guifg=#7b7b7b guibg=bg gui=NONE
                \ ctermfg=245 ctermbg=232 cterm=NONE
highlight TabPanelSel guifg=#afafaf guibg=#0f2f5f gui=NONE
                \ ctermfg=250 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#415676 guibg=bg gui=NONE
                \ ctermfg=24 ctermbg=232 cterm=NONE

"cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
                \ ctermfg=NONE ctermbg=33 cterm=NONE
highlight CursorLine  guifg=NONE guibg=#3f3f3f gui=NONE
                \ ctermfg=NONE ctermbg=236 cterm=NONE
highlight CursorColumn guifg=NONE guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=33 cterm=NONE
highlight Cursor guifg=#000000 guibg=#ffffff gui=NONE
                \ ctermfg=232 ctermbg=255 cterm=NONE
"IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#bfbfbf guibg=#ffb6c1 gui=NONE
                \ ctermfg=232 ctermbg=196 cterm=NONE
endif

"}}}2
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
    \ "#0c0c0c", "#850f1f", "#13710e", "#819c00",
    \ "#00378a", "#881798", "#3a96dd", "#8f8f8f",
    \ "#767676", "#872836", "#16960c", "#6a7f84",
    \ "#3b789f", "#94005e", "#61d6d6", "#989898"
    \ ]
endif


" #- syntax highlighting group -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
                \ ctermfg=232 ctermbg=255 cterm=NONE
highlight MatchParen guifg=#575757 guibg=#5f93cd gui=bold
                \ ctermfg=232 ctermbg=33 cterm=bold,underline
highlight comment guifg=#509fff guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Constant guifg=#da7f7f guibg=bg gui=NONE
                \ ctermfg=202 ctermbg=bg cterm=NONE
highlight Special guifg=#faaafa guibg=bg gui=NONE
                \ ctermfg=213 ctermbg=bg cterm=NONE
highlight Identifier guifg=#77aa77 guibg=bg gui=NONE
                \ ctermfg=71 ctermbg=bg cterm=NONE
highlight Statement guifg=#7f70ff guibg=bg gui=NONE
                \ ctermfg=63 ctermbg=bg cterm=NONE
highlight PreProc guifg=#aaffff guibg=bg gui=NONE
                \ ctermfg=87 ctermbg=bg cterm=NONE
highlight type guifg=#71c9af guibg=bg gui=NONE
                \ ctermfg=80 ctermbg=bg cterm=NONE
highlight underlined guifg=#6699cc guibg=#232323 gui=NONE
                \ ctermfg=80 ctermbg=bg cterm=underline
highlight Ignore guifg=#fac08f guibg=NONE gui=bold
                \ ctermfg=216 ctermbg=bg cterm=bold
highlight Error guifg=#ff5050 guibg=bg gui=NONE
                \ ctermfg=196 ctermbg=bg cterm=NONE
highlight Todo guifg=#50a0ff guibg=bg gui=NONE
                \ ctermfg=25 ctermbg=147 cterm=bold,underline
highlight string guifg=#ffafff guibg=bg gui=NONE
                \ ctermfg=213 ctermbg=bg cterm=NONE

" #-  END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
