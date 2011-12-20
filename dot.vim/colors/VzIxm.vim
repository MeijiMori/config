" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date
" Guicolorscheme file


" #- Vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
if version >= 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -# "{{{1
let g:colors_name = "VzIxm"

"#- Highlighting groups for various occasions -# "{{{1
highlight Normal ctermbg=black ctermfg=white gui=NONE guifg=#fdfdfd guibg=#303030
highlight SpecialKey term=bold ctermfg=LightBlue gui=NONE guifg=#759f9e guibg=NONE
highlight NonText term=NONE ctermfg=LightBlue gui=NONE guifg=#ffffff guibg=#383838
highlight Directory term=bold ctermfg=LightCyan gui=bold guifg=#5787a6 guibg=bg
highlight ErrorMsg term=standout ctermbg=DarkBlue ctermfg=White gui=NONE guibg=bg guifg=#ffaaff
" search "{{{
"highlight IncSearch term=reverse cterm=reverse gui=NONE guibg=#704461 guifg=#000000
highlight IncSearch term=reverse cterm=reverse gui=NONE guifg=#000000 guibg=#6f8faf
highlight Search term=reverse ctermbg=white ctermfg=Black gui=NONE guifg=#111111 guibg=#ff8faf
" }}}
highlight MoreMsg term=NONE ctermfg=LightGreen gui=NONE guifg=#99ff99 guibg=#30303f
highlight ModeMsg term=bold cterm=bold ctermfg=white gui=NONE guifg=#fffeee guibg=#30303f
highlight LineNr term=underline ctermbg=black gui=NONE ctermfg=white guifg=#60656f guibg=NONE
highlight Question term=standout ctermfg=LightGreen gui=NONE guifg=#53e6a9 guibg=bg
" statusline "{{{
"highlight StatusLine term=reverse,bold cterm=reverse,bold gui=reverse,bold
highlight StatusLine ctermbg=black ctermfg=white gui=NONE guifg=#ffffff guibg=#32353b
highlight StatusLineNC term=reverse cterm=reverse gui=NONE guifg=#3f3f37 guibg=#52514c
" }}}
highlight Title term=bold ctermfg=LightMagenta gui=NONE guifg=#2fd4c6 guibg=bg
"highlight VertSplit term=reverse cterm=reverse gui=NONE guifg=#aaaaaa guibg=#363636
highlight VertSplit term=reverse cterm=reverse gui=NONE guifg=#aaaaaa guibg=#2f2f30
" visual "{{{
highlight Visual term=reverse ctermbg=blue gui=NONE guifg=#cfcfcf guibg=#1f3f6f
highlight VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold guibg=#aaeeee guifg=#3d3d3d
" }}}
highlight WarningMsg term=standout ctermfg=LightRed gui=NONE guifg=#ef5faf guibg=bg
"highlight WildMenu term=standout ctermbg=Yellow ctermfg=Black gui=NONE guifg=#6380c5 guibg=#3d3d3d
highlight WildMenu term=standout ctermbg=Yellow ctermfg=Black gui=NONE guifg=#3f50cf guibg=#cfcfcf
" fold "{{{
highlight Folded term=standout ctermbg=LightGrey ctermfg=DarkBlue gui=NONE guifg=#bfbfcf guibg=#2f2f30
highlight FoldColumn term=standout ctermbg=LightGrey ctermfg=DarkBlue gui=bold guifg=#4f6dc3 guibg=#2f2f30
" }}}
" diff "{{{
highlight DiffAdd term=bold ctermbg=DarkBlue gui=NONE guifg=#aacbde guibg=bg
highlight DiffChange term=bold ctermbg=DarkMagenta gui=NONE guifg=#998dbf guibg=bg
highlight DiffDelete term=bold ctermfg=Blue ctermbg=DarkCyan gui=bold guifg=#a62c74 guibg=bg
highlight DiffText term=reverse cterm=bold ctermbg=Red gui=bold guifg=#c9cbce guibg=bg
" }}}
highlight SignColumn term=NONE gui=NONE guibg=bg guifg=#a65774
" spell "{{{
highlight SpellBad term=NONE gui=NONE guifg=#af8fbf guibg=bg
highlight SpellCap term=NONE gui=NONE guifg=#8f9fbf guibg=bg
highlight SpellRare term=NONE gui=NONE guifg=#8fcfbf guibg=bg
highlight SpellLocal term=NONE gui=NONE guifg=#cfbf8f guibg=bg
" }}}
" pmenu "{{{
"highlight pmenu guifg=#a4a9a4 guibg=#3d3f3d
highlight Pmenu gui=NONE guifg=#5f5f5f guibg=#cfcfcf
highlight PmenuSel gui=NONE guifg=#d2d2d2 guibg=#5f385f
highlight PmenuSbar gui=NONE guifg=#9c9c9c guibg=#4d2f4d
highlight PmenuThumb gui=NONE guifg=#3d3f3d guibg=#1f1f2f
" }}}
"tabline "{{{
highlight TabLine term=NONE gui=underline guifg=#995050 guibg=bg
highlight TabLineSel term=NONE gui=underline guifg=#675090 guibg=bg
highlight TabLineFill term=NONE gui=underline guifg=#769950 guibg=bg
" }}}
" cursor "{{{
highlight CursorColumn term=reverse ctermbg=Black guibg=bg
"highlight CursorLine ctermbg=magenta gui=NONE guifg=NONE guibg=#2a2f30
highlight CursorLine ctermbg=magenta gui=NONE guifg=NONE guibg=#432230
highlight Cursor gui=NONE guifg=#000000 guibg=#00ee99
highlight ColorColumn term=reverse ctermbg=Black gui=NONE guifg=#0088ff guibg=bg
"IME status color for cursor
if has('multi_byte_ime')
  highlight CursorIM gui=NONE guifg=#000000 guibg=#ffb6c1
endif
" }}}

" #- Syntax highlighting group -# "{{{1
highlight lCursor gui=NONE guibg=#7ea3a6 guifg=#a68d7e
highlight MatchParen gui=bold guifg=#2f2f4f guibg=#cf8faf
highlight Constant term=underline ctermfg=Magenta gui=NONE guifg=#aaeeaa guibg=bg
highlight comment term=bold gui=NONE guifg=#646464
highlight Identifier gui=NONE guifg=#9cb79c guibg=bg
highlight Special term=bold ctermfg=LightRed gui=NONE guifg=#deffed guibg=bg
if &t_Co > 8
  highlight Statement term=bold cterm=bold ctermfg=Yellow guifg=bg guibg=bg
endif
highlight Statement gui=NONE guifg=#c4a76a guibg=bg
highlight PreProc gui=NONE guifg=#ffadfe guibg=bg
highlight type gui=NONE guifg=#81a09a guibg=bg
highlight underlined gui=underline guifg=#66af9c guibg=#303f3f
highlight Ignore ctermfg=DarkGrey gui=NONE guifg=#8f8f8f guibg=bg
highlight Error gui=bold guifg=#a04f7e guibg=bg
highlight Todo gui=bold guifg=#4e5ca0 guibg=#23252f
highlight string gui=NONE guifg=#ffc8ff guibg=bg

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
