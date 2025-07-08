" #- vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date
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

" #- highlighting groups for various occasions -#"{{{1
highlight Normal guifg=#cfcfcf guibg=#15151f gui=NONE
                \ ctermfg=15 ctermbg=232 cterm=NONE
highlight SpecialKey guifg=#3f3f7f guibg=bg gui=NONE
                \ ctermfg=8 ctermbg=bg cterm=NONE
highlight NonText guifg=#3333cc guibg=bg gui=NONE
                \ ctermfg=21 ctermbg=bg cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#5fc0ff guibg=bg gui=bold
                \ ctermfg=14 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#f84865 guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
" search "{{{2
highlight IncSearch guifg=#0f0f0f guibg=#cc88e1 gui=NONE
                \ ctermfg=52 ctermbg=133 cterm=bold,underline
highlight Search guifg=#0f0f0f guibg=#5088e1 gui=bold
                \ ctermfg=17 ctermbg=153 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#95d5d9 guibg=#20202f gui=NONE
                \ ctermfg=78 ctermbg=234 cterm=underline
highlight ModeMsg guifg=#c0a0ff guibg=#20202f gui=NONE
                \ ctermfg=250 ctermbg=234 cterm=underline
highlight LineNr guifg=#0f3f5f guibg=NONE gui=NONE
                \ ctermfg=21 ctermbg=NONE cterm=NONE
highlight CursorLineNr guifg=#0f3f5f guibg=NONE gui=NONE
                \ ctermfg=0 ctermbg=7 cterm=bold
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#6ab395 guibg=bg gui=NONE
                \ ctermfg=29 ctermbg=NONE cterm=underline
" statusline "{{{2
highlight StatusLine guifg=#9d887c guibg=#20252f gui=NONE
                \ ctermfg=223 ctermbg=234 cterm=NONE
highlight StatusLineNC guifg=#50555f guibg=#202020 gui=NONE
                \ ctermfg=244 ctermbg=235 cterm=NONE
" #- Terminal -# "{{{3
highlight StatusLineTerm guifg=#000f2f guibg=#cfccff gui=NONE
                \ ctermfg=11 ctermbg=bg cterm=NONE
highlight StatusLineTermNc guifg=#002f2f guibg=#8fafcf gui=NONE
                \ ctermfg=11 ctermbg=bg cterm=NONE
"}}}2
highlight VertSplit guifg=#4049d9 guibg=#0f0f0f gui=NONE
                \ ctermfg=27 ctermbg=232 cterm=NONE
highlight Title guifg=#72dc95 guibg=bg gui=NONE
                \ ctermfg=49 ctermbg=bg cterm=NONE
" visual "{{{2
highlight Visual guifg=#afafaf guibg=#1f1f3f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#3d3d3d guibg=#aaeeee gui=bold,underline
                \ ctermfg=255 ctermbg=17 cterm=bold,underline
"}}}2
highlight WarningMsg guifg=#f05595 guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=underline
highlight WildMenu guifg=#cccccc guibg=#34348f gui=NONE
                \ ctermfg=7 ctermbg=12 cterm=underline
" fold "{{{2
highlight Folded guifg=#3f5faf guibg=#0f0f0f gui=NONE
                \ ctermfg=21 ctermbg=232 cterm=NONE
highlight FoldColumn guifg=#3b54ec guibg=#0f0f1f gui=bold
                \ ctermfg=25 ctermbg=232 cterm=bold

" diff "{{{2
highlight DiffAdd guifg=#3f8fcf guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=42 cterm=NONE
highlight DiffChange guifg=#998dbf guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=166 cterm=NONE
highlight DiffDelete guifg=#a62c74 guibg=bg gui=bold
                \ ctermfg=NONE ctermbg=125 cterm=NONE
highlight DiffText guifg=#c9cbce guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
"}}}
highlight SignColumn term=NONE gui=NONE guibg=bg guifg=#a65774
                \ ctermfg=fg ctermbg=bg cterm=underline

" spell "{{{2
highlight SpellBad guifg=#795099 guibg=bg gui=NONE
                \ ctermfg=55 ctermbg=bg cterm=underline
highlight SpellCap guifg=#506399 guibg=bg gui=NONE
                \ ctermfg=26 ctermbg=bg cterm=underline
highlight SpellRare guifg=#509982 guibg=bg gui=NONE
                \ ctermfg=29 ctermbg=bg cterm=underline
highlight SpellLocal guifg=#998c50 guibg=bg gui=NONE
                \ ctermfg=100 ctermbg=bg cterm=underline

" pmenu "{{{2
highlight Pmenu guifg=#333333 guibg=#9f9faf gui=NONE
                \ ctermfg=235 ctermbg=251 cterm=NONE
highlight PmenuSel guifg=#afafaf guibg=#1f1f2f gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=#101010 gui=NONE
                \ ctermfg=fg ctermbg=232 cterm=NONE
highlight PmenuThumb guifg=#0f0f0f guibg=#213656 gui=NONE
                \ ctermfg=fg ctermbg=24 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#9d887c guibg=bg gui=NONE
                \ ctermfg=249 ctermbg=232 cterm=NONE
highlight TabLineSel guifg=#f0f0f0 guibg=#0f0f3f gui=NONE
                \ ctermfg=249 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#564234 guibg=bg gui=NONE
                \ ctermfg=138 ctermbg=232 cterm=NONE

" tabpanel "{{{2
highlight TabPanel guifg=#9d887c guibg=bg gui=NONE
                \ ctermfg=249 ctermbg=232 cterm=NONE
highlight TabPanelSel guifg=#f0f0f0 guibg=#0f0f3f gui=NONE
                \ ctermfg=249 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#564234 guibg=bg gui=NONE
                \ ctermfg=138 ctermbg=232 cterm=NONE

" cursor "{{{2
highlight CursorLine guifg=NONE guibg=#10101f gui=NONE
                \ ctermfg=NONE ctermbg=233 cterm=NONE
highlight Cursor guifg=#000000 guibg=#8f8f8f gui=NONE
                \ ctermfg=fg ctermbg=71 cterm=NONE
"IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af2f3f gui=NONE
                \ ctermfg=fg ctermbg=196 cterm=NONE
endif

"}}}2

" #- syntax highlighting group -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
                \ ctermfg=15 ctermbg=232 cterm=NONE
highlight MatchParen guifg=#2f2f2f guibg=#cf93cd gui=bold
                \ ctermfg=197 ctermbg=219 cterm=bold,underline
highlight comment guifg=#4077e1 guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Constant guifg=#55cf99 guibg=bg gui=NONE
                \ ctermfg=41 ctermbg=bg cterm=NONE
highlight Special guifg=#ccfcfc guibg=bg gui=NONE
                \ ctermfg=153 ctermbg=bg cterm=NONE
"highlight Identifier guifg=#df7f7f guibg=bg gui=NONE
highlight Identifier guifg=#c75a7f guibg=bg gui=NONE
                \ ctermfg=168 ctermbg=bg cterm=NONE
highlight Statement guifg=#735fff guibg=bg gui=NONE
                \ ctermfg=62 ctermbg=bg cterm=NONE
highlight PreProc guifg=#aaffff guibg=bg gui=NONE
                \ ctermfg=87 ctermbg=bg cterm=NONE
highlight type guifg=#5acf89 guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight underlined guifg=#6699cc guibg=#1f202f gui=underline
                \ ctermfg=33 ctermbg=234 cterm=underline
highlight Ignore guifg=#aaaaaa guibg=bg gui=bold
                \ ctermfg=248 ctermbg=bg cterm=bold
highlight Error guifg=#ff2050 guibg=bg gui=NONE
                \ ctermfg=196 ctermbg=bg cterm=NONE
highlight Todo guifg=#a0a0ff guibg=#1f203f gui=bold
                \ ctermfg=45 ctermbg=233 cterm=NONE
highlight string guifg=#f0d8e6 guibg=bg gui=NONE
                \ ctermfg=225 ctermbg=bg cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
