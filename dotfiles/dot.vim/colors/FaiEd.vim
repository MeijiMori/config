" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date
" Guicolorscheme file

" #- Vim color file reset -#{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -#{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#fdfdfd guibg=#10101f gui=NONE
          \ ctermfg=255 ctermbg=232 cterm=NONE
highlight SpecialKey guifg=#6f5fff guibg=bg gui=NONE
          \ ctermfg=26 ctermbg=bg cterm=NONE
highlight NonText guifg=#4eafff guibg=#0a0c1f gui=NONE
          \ ctermfg=39 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#3a85d2 guibg=bg gui=NONE
          \ ctermfg=25 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#f84865 guibg=bg gui=NONE
          \ ctermfg=9 ctermbg=bg cterm=NONE
" search "{{{2
highlight IncSearch guifg=#10101f guibg=#cc88e1 gui=bold
          \ ctermfg=53 ctermbg=99 cterm=bold,underline
highlight Search guifg=#10101f guibg=#5088e1 gui=bold
          \ ctermfg=17 ctermbg=12 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#95d5d9 guibg=#25252f gui=NONE
          \ ctermfg=85 ctermbg=234 cterm=NONE
highlight ModeMsg guifg=#ffffff guibg=#25252f gui=NONE
          \ ctermfg=255 ctermbg=234 cterm=NONE
highlight LineNr guifg=#c3bcb4 guibg=NONE gui=NONE
          \ ctermfg=252 ctermbg=bg cterm=NONE
highlight CursorLineNr guifg=#c3bcb4 guibg=NONE gui=NONE
          \ ctermfg=bg ctermbg=250 cterm=bold
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#6ab395 guibg=#25252f gui=NONE
          \ ctermfg=41 ctermbg=234 cterm=NONE
" statusline "{{{2
highlight StatusLine guifg=bg guibg=#dfdfdf gui=NONE
          \ ctermfg=236 ctermbg=253 cterm=NONE
highlight StatusLineNC guifg=#564234 guibg=#b2a089 gui=NONE
          \ ctermfg=235 ctermbg=181 cterm=NONE
"}}}2
highlight VertSplit guifg=#4f5fdf guibg=#0f0f0f gui=NONE
          \ ctermfg=21 ctermbg=bg cterm=NONE
highlight Title guifg=#72dc95 guibg=NONE gui=NONE
          \ ctermfg=35 ctermbg=bg cterm=NONE
" visual "{{{2
highlight Visual guifg=#cfcfcf guibg=#0f1f3f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#3d3d3d guibg=#aaeeee gui=underline
          \ ctermfg=17 ctermbg=81 cterm=underline
"}}}2
highlight WarningMsg guifg=#fc4765 guibg=bg gui=NONE
          \ ctermfg=196 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#cfcfcf guibg=#0f0f2f gui=NONE
          \ ctermfg=255 ctermbg=232 cterm=NONE
" fold "{{{2
highlight Folded guifg=#3f7fdf guibg=#0a0c1f gui=NONE
          \ ctermfg=25 ctermbg=232 cterm=NONE
highlight FoldColumn guifg=#4f6dcf guibg=#0a0c1f gui=bold
          \ ctermfg=26 ctermbg=232 cterm=bold

" diff "{{{2
highlight DiffAdd guifg=#afdfff guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=29 cterm=NONE
highlight DiffChange guifg=#cf8fff guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=136 cterm=NONE
highlight DiffDelete guifg=#f62c74 guibg=bg gui=bold
          \ ctermfg=NONE ctermbg=52 cterm=NONE
highlight DiffText guifg=#f9fbfe guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=bg cterm=NONE
"}}}2
highlight SignColumn guifg=#f65774 guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#af5fbf guibg=bg gui=NONE
          \ ctermfg=56 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#7f6fbf guibg=bg gui=NONE
          \ ctermfg=33 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#7fcfaf guibg=bg gui=NONE
          \ ctermfg=36 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#bfaf5f guibg=bg gui=NONE
          \ ctermfg=142 ctermbg=bg cterm=NONE

" pmenu "{{{2
highlight Pmenu guifg=#cccccd guibg=bg gui=NONE
          \ ctermfg=255 ctermbg=16 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#0f1f3f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=#404040 gui=NONE
          \ ctermfg=fg ctermbg=238 cterm=NONE
highlight PmenuThumb guifg=#415676 guibg=#0f0f0f gui=NONE
          \ ctermfg=fg ctermbg=15 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#7f7f7f guibg=#bfbfbf gui=underline
          \ ctermfg=241 ctermbg=254 cterm=underline
highlight TabLineSel guifg=#ffffff guibg=#0f3f5f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#415676 guibg=#9f9f9f gui=underline
          \ ctermfg=236 ctermbg=244 cterm=underline

" tabpanel "{{{2
highlight TabPanel guifg=#7f7f7f guibg=#bfbfbf gui=NONE
          \ ctermfg=241 ctermbg=254 cterm=NONE
highlight TabPanelSel guifg=#ffffff guibg=#0f3f5f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#415676 guibg=#9f9f9f gui=NONE
          \ ctermfg=236 ctermbg=244 cterm=NONE

" cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
          \ ctermfg=252 ctermbg=235 cterm=NONE
highlight CursorLine guifg=NONE guibg=#2f3f6f gui=NONE
          \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
          \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight Cursor guifg=#afafaf guibg=#0f1f3f gui=NONE
          \ ctermfg=NONE ctermbg=17 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#bfbfbf guibg=#ffb6c1 gui=NONE
          \ ctermfg=NONE ctermbg=196 cterm=NONE
endif

" }}}2
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



" #- syntax highlighting group -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
          \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight MatchParen guifg=#0f0f0f guibg=#1f2faf gui=bold
          \ ctermfg=240 ctermbg=21 cterm=bold,underline
highlight comment guifg=#4d79ff guibg=bg gui=NONE
          \ ctermfg=26 ctermbg=bg cterm=NONE
highlight Constant guifg=#7dd97b guibg=bg gui=NONE
          \ ctermfg=42 ctermbg=bg cterm=NONE
highlight Special guifg=#aeffed guibg=bg gui=NONE
          \ ctermfg=123 ctermbg=bg cterm=NONE
highlight Identifier guifg=#ccb0d7 guibg=bg gui=NONE
          \ ctermfg=177 ctermbg=bg cterm=NONE
"highlight Statement guifg=#9be188 guibg=bg gui=NONE
highlight Statement guifg=#94de92 guibg=bg gui=NONE
          \ ctermfg=42 ctermbg=bg cterm=NONE
"highlight PreProc guifg=#b871b7 guibg=bg gui=NONE
highlight PreProc guifg=#b871b7 guibg=bg gui=NONE
          \ ctermfg=170 ctermbg=bg cterm=NONE
highlight type guifg=#71c9af guibg=bg gui=NONE
          \ ctermfg=35 ctermbg=bg cterm=NONE
highlight underlined guifg=#568cff guibg=bg gui=underline
          \ ctermfg=25 ctermbg=bg cterm=underline
highlight Ignore guifg=#047f75 guibg=bg gui=NONE
          \ ctermfg=23 ctermbg=bg cterm=bold
highlight Error guifg=#f04f7e guibg=bg gui=NONE
          \ ctermfg=197 ctermbg=bg cterm=NONE
highlight Todo guifg=#3268ca guibg=bg gui=NONE
          \ ctermfg=26 ctermbg=250 cterm=bold,underline
highlight string guifg=#ffc8e6 guibg=bg gui=NONE
          \ ctermfg=213 ctermbg=bg cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
