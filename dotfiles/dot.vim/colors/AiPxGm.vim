" #- vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file

" #- Vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

" #- colorscheme name -#"{{{1
let g:colors_name = "AiPxGm"

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#aaaaaa guibg=#1f1f1f gui=NONE
          \ ctermfg=253 ctermbg=232 cterm=NONE
highlight SpecialKey guifg=#4f3fff guibg=NONE gui=NONE
          \ ctermfg=21 ctermbg=bg cterm=NONE
highlight NonText guifg=#4effaf guibg=#202020 gui=bold
          \ ctermfg=49 ctermbg=bg cterm=bold
highlight Directory guifg=#5fbfff guibg=NONE gui=NONE
          \ ctermfg=39 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#4878f5 guibg=NONE gui=NONE
          \ ctermfg=27 ctermbg=bg cterm=NONE
" search "{{{2
highlight IncSearch guifg=#000000 guibg=#cc88e1 gui=bold
          \ ctermfg=0 ctermbg=177 cterm=bold
highlight Search guifg=#000000 guibg=#4f88f1 gui=bold
          \ ctermfg=0 ctermbg=33 cterm=bold
"}}}2
highlight MoreMsg guifg=#ffffff guibg=#2f2f2f gui=NONE
          \ ctermfg=251 ctermbg=236 cterm=NONE
highlight ModeMsg guifg=#affff9 guibg=NONE gui=NONE
          \ ctermfg=121 ctermbg=NONE cterm=NONE
highlight LineNr guifg=#cfccb4 guibg=NONE gui=NONE
          \ ctermfg=138 ctermbg=NONE cterm=NONE
highlight CursorLineNr guifg=#cfccb4 guibg=NONE gui=bold
          \ ctermfg=138 ctermbg=NONE cterm=bold
highlight Question guifg=#6ab3b5 guibg=NONE gui=NONE
          \ ctermfg=23 ctermbg=NONE cterm=NONE
" statusline "{{{2
highlight StatusLine guifg=#202020 guibg=#bfbfbf gui=NONE
          \ ctermfg=236 ctermbg=251 cterm=NONE
highlight StatusLineNC guifg=#565234 guibg=#b2a089 gui=NONE
          \ ctermfg=237 ctermbg=180 cterm=NONE
"}}}2
highlight VertSplit guifg=#3059ff guibg=#0f0f0f gui=bold
          \ ctermfg=26 ctermbg=0 cterm=bold
highlight Title guifg=#72acf5 guibg=NONE gui=NONE
          \ ctermfg=30 ctermbg=bg cterm=NONE
" visual "{{{2
highlight Visual guifg=#ffeedd guibg=#2f3f5f gui=NONE
          \ ctermfg=225 ctermbg=17 cterm=NONE
highlight VisualNOS guibg=#aaeeee guifg=#3d3d3d gui=underline
          \ ctermfg=17 ctermbg=51 cterm=underline
"}}}2
highlight WarningMsg guifg=#ff3845 guibg=NONE gui=NONE
          \ ctermfg=197 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#dfdfdf guibg=#2f3f5f gui=NONE
          \ ctermfg=252 ctermbg=17 cterm=NONE
" fold "{{{2
highlight Folded guifg=#3f7fff guibg=#1f1f3f gui=NONE
          \ ctermfg=26 ctermbg=233 cterm=NONE
highlight FoldColumn guifg=#aaaaaa guibg=#0f2f4f gui=bold
          \ ctermfg=245 ctermbg=17 cterm=bold

" diff "{{{2
highlight DiffAdd guifg=#2f7fff guibg=NONE gui=NONE
          \ ctermfg=fg ctermbg=18 cterm=NONE
highlight DiffChange guifg=#ffff9f guibg=NONE gui=NONE
          \ ctermfg=fg ctermbg=221 cterm=NONE
highlight DiffDelete guifg=#f62c74 guibg=NONE gui=NONE
          \ ctermfg=fg ctermbg=196 cterm=NONE
highlight DiffText guifg=#c9cbce guibg=NONE gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
"}}}2
highlight SignColumn guifg=#afdfff guibg=NONE gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#c950ff guibg=NONE gui=NONE
          \ ctermfg=5 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#4f8fff guibg=NONE gui=NONE
          \ ctermfg=27 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#50ff82 guibg=NONE gui=NONE
          \ ctermfg=36 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#bbcf6f guibg=NONE gui=NONE
          \ ctermfg=180 ctermbg=bg cterm=NONE

" pmenu "{{{2
highlight Pmenu guifg=#aaaaaa guibg=#202020 gui=NONE
          \ ctermfg=248 ctermbg=0 cterm=NONE
highlight PmenuSel guifg=#cccccc guibg=#415676 gui=NONE
          \ ctermfg=252 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=NONE gui=bold
          \ ctermfg=fg ctermbg=17 cterm=NONE
highlight PmenuThumb guifg=#415676 guibg=NONE gui=reverse
          \ ctermfg=fg ctermbg=242 cterm=NONE

" tabline "{{{2
" highlight TabLine term=NONE gui=underline guifg=#000000 guibg=#afafaf
" highlight TabLineSel term=NONE gui=bold guifg=#ffffff guibg=#21569f
" highlight TabLineFill term=NONE gui=underline guifg=#415676 guibg=NONE
highlight TabLine guifg=#5f5f5f guibg=#bfbfbf gui=underline
          \ ctermfg=238 ctermbg=250 cterm=underline
highlight TabLineSel guifg=#ffffff guibg=#1f3f6f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#000000 guibg=#aaaaaa gui=underline
          \ ctermfg=232 ctermbg=244 cterm=underline

" cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
          \ ctermfg=252 ctermbg=245 cterm=NONE
highlight CursorLine guifg=NONE guibg=#2f3f5f gui=NONE
          \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#892f30 gui=NONE
          \ ctermfg=250 ctermbg=124 cterm=NONE
highlight Cursor guifg=#000000 guibg=#7fffa9 gui=NONE
          \ ctermfg=0 ctermbg=120 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#ff425f gui=NONE
          \ ctermfg=0 ctermbg=88 cterm=NONE
endif
"}}}2

" #- syntax highlighting group -#"{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
          \ ctermfg=253 ctermbg=232 cterm=NONE
highlight MatchParen guifg=#575757 guibg=#5f93cd gui=bold
          \ ctermfg=234 ctermbg=26 cterm=bold,underline
highlight comment guifg=#5088e1 guibg=NONE gui=NONE
          \ ctermfg=27 ctermbg=NONE cterm=NONE
highlight Constant guifg=#aa7777 guibg=NONE gui=NONE
          \ ctermfg=167 ctermbg=NONE cterm=NONE
highlight Identifier guifg=#879fff guibg=NONE gui=NONE
          \ ctermfg=69 ctermbg=NONE cterm=NONE
highlight Special guifg=#cfffff guibg=NONE gui=NONE
          \ ctermfg=147 ctermbg=NONE cterm=NONE
highlight Statement guifg=#85baff guibg=NONE gui=NONE
          \ ctermfg=117 ctermbg=NONE cterm=NONE
highlight PreProc guifg=#aaffff guibg=NONE gui=NONE
          \ ctermfg=81 ctermbg=NONE cterm=NONE
highlight type guifg=#61cf8f guibg=NONE gui=NONE
          \ ctermfg=79 ctermbg=NONE cterm=NONE
highlight underlined guifg=#6699cc guibg=NONE gui=NONE
          \ ctermfg=27 ctermbg=NONE cterm=NONE
highlight Ignore guifg=#a3ffa2 guibg=NONE gui=bold
          \ ctermfg=77 ctermbg=NONE cterm=bold
highlight Error guifg=#ff3845 guibg=NONE gui=NONE
          \ ctermfg=160 ctermbg=NONE cterm=NONE
highlight Todo guifg=#50a0ff guibg=NONE gui=bold,underline
          \ ctermfg=12 ctermbg=NONE cterm=bold,underline
highlight string guifg=#f0d8e6 guibg=NONE gui=NONE
          \ ctermfg=225 ctermbg=NONE cterm=NONE


" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
