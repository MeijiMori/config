" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen {[(*)]}
" highlighting ZenkakuSpace /　/
" !date

" #- First remove all existing highlighting. -# "{{{1
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = "xyacs"

" #- Highlighting groups for various occasions -# "{{{1
hi Normal ctermbg=black ctermfg=white gui=NONE guifg=#ffffff guibg=#0f0f0f
hi SpecialKey term=bold ctermfg=LightBlue guifg=#af2f5f guibg=bg
hi NonText term=NONE ctermfg=LightBlue gui=bold guifg=#3f7fff guibg=bg
hi Directory term=bold ctermfg=LightCyan gui=NONE guifg=#5f8fcf guibg=bg
hi ErrorMsg term=standout ctermbg=DarkBlue ctermfg=White gui=NONE guifg=#cf2f4f guibg=NONE
hi IncSearch term=reverse cterm=reverse gui=NONE guifg=#000000 guibg=#8f9fff
hi Search term=reverse ctermbg=white ctermfg=Black gui=NONE guifg=#000000 guibg=#afcfff
hi MoreMsg term=NONE ctermfg=LightGreen gui=NONE guifg=#4f7faf guibg=bg
"hi def link ModeMsg PmenuSel
hi ModeMsg term=bold cterm=bold ctermfg=white gui=NONE guifg=#2faf8f guibg=bg
"hi LineNr term=underline ctermbg=black gui=NONE ctermfg=white guifg=#afaf8f guibg=NONE
hi LineNr term=underline ctermbg=black gui=NONE ctermfg=white guifg=#cfcfcf guibg=NONE
"hi def link Question MoreMsg
hi Question term=standout ctermfg=LightGreen gui=NONE guifg=#2fffcf guibg=bg
" Statusline "{{{
hi StatusLine ctermbg=black ctermfg=white gui=bold guifg=#cfcfcf guibg=#1f1f2f
hi StatusLineNC term=reverse cterm=reverse gui=NONE guifg=#5f5f5f guibg=#0f0f1f
" }}}
"hi VertSplit term=reverse cterm=reverse gui=NONE guifg=bg guibg=fg
hi VertSplit term=reverse cterm=reverse gui=NONE guifg=#6f6f6f guibg=#dfdfdf
hi Title term=bold ctermfg=LightMagenta gui=NONE guifg=#5fcfaf guibg=bg
" Visual "{{{
"hi Visual term=reverse ctermbg=blue gui=NONE guifg=#ffffff guibg=#0f2f4f
hi Visual term=reverse ctermbg=blue gui=NONE guifg=#ffffff guibg=#1f2f5f
hi VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold guifg=#ffffff guibg=#3f4f7f
" }}}
hi WarningMsg term=standout ctermfg=LightRed gui=NONE guifg=#cf2f4f guibg=bg
hi WildMenu term=standout ctermbg=Yellow ctermfg=Black gui=NONE guifg=#ffffff guibg=#0f2f5f
" Fold "{{{
hi Folded term=standout ctermbg=LightGrey ctermfg=DarkBlue gui=NONE guifg=#3f5faf guibg=#0f0f2f
hi FoldColumn term=standout ctermbg=LightGrey ctermfg=DarkBlue gui=bold guifg=#2f2f8f guibg=#0f0f2f
" }}}
" diff "{{{
hi DiffAdd term=bold ctermbg=DarkBlue gui=NONE guifg=#7fafff guibg=bg
hi DiffChange term=bold ctermbg=DarkMagenta gui=NONE guifg=#ff8faf guibg=bg
hi DiffDelete term=bold ctermfg=Blue ctermbg=DarkCyan gui=bold guifg=#af5faf guibg=bg
"hi DiffText term=reverse cterm=bold ctermbg=Red gui=bold guifg=#c9cbce guibg=bg
hi DiffText term=reverse cterm=bold ctermbg=Red gui=NONE guifg=#cfcfcf guibg=bg
" }}}
hi SignColumn term=NONE gui=NONE guifg=#cf4f8f guibg=bg
" Spell "{{{
hi SpellBad term=NONE gui=NONE guifg=#af5fcf guibg=bg
hi SpellCap term=NONE gui=NONE guifg=#6f7fff guibg=bg
hi SpellRare term=NONE gui=NONE guifg=#6fcf9f guibg=bg
hi SpellLocal term=NONE gui=NONE guifg=#8fdf6f guibg=bg
" }}}
" Pmenu "{{{
hi Pmenu gui=NONE guifg=#0f0f0f guibg=#cfcfcf
hi PmenuSel gui=NONE guifg=#dfdfdf guibg=#1f2f5f
hi PmenuSbar gui=NONE guifg=#cccccc guibg=#2f2f2f
hi PmenuThumb gui=NONE guifg=#aaaaaa guibg=#6f2f4f
" }}}
"tabline "{{{
hi TabLine term=NONE gui=NONE guifg=#afafaf guibg=#4f4f4f
"hi TabLineSel term=NONE gui=NONE guifg=#dfdfdf guibg=#1f2f5f
hi TabLineSel term=NONE gui=NONE guifg=#dfdfdf guibg=#7f7f7f
hi TabLineFill term=NONE gui=NONE guifg=#5f5f5f guibg=#3f3f3f
"}}}
" cursor "{{{
hi CursorColumn gui=NONE guifg=#000000 guibg=#2f2f2f
hi CursorLine ctermbg=magenta gui=NONE guifg=NONE guibg=#2f2f3f
hi Cursor gui=NONE guifg=#000000 guibg=#cfcfcf
" IME status color for cursor "{{{
if has('multi_byte_ime')
  hi CursorIM gui=NONE guifg=#000000 guibg=#af2f3f
endif
"}}}
" }}}

" #- syntax highlighting groups -# "{{{1
hi lCursor gui=NONE guifg=#575757 guibg=#7ea3a6
hi MatchParen gui=bold guifg=#3f3f3f guibg=#2f63ad
hi comment term=bold gui=NONE guifg=#7f7f8f guibg=bg
hi Constant term=underline ctermfg=Magenta gui=NONE guifg=#5f8fff guibg=bg
hi Special term=bold ctermfg=LightRed gui=NONE guifg=#bfbfbf guibg=bg
"hi Identifier gui=NONE guifg=#9cb79c guibg=bg
hi Identifier gui=NONE guifg=#6fcfbf guibg=bg
"hi Statement term=bold cterm=bold ctermfg=Yellow gui=NONE guifg=#1f5f7f guibg=bg
hi Statement term=bold cterm=bold ctermfg=Yellow gui=NONE guifg=#6f5fff guibg=bg
"hi PreProc guifg=#b871b7 guibg=bg
hi PreProc gui=NONE guifg=#afffcf guibg=bg
hi type gui=NONE guifg=#6fbfcf guibg=bg
hi underlined gui=underline guifg=#3faf6f guibg=bg
hi Ignore ctermfg=DarkGrey gui=NONE guifg=#7f7f7f guibg=bg
hi Error gui=NONE guifg=#ff4f8f guibg=bg
hi Todo gui=bold guifg=#af2f5f guibg=#1f1f1f
hi string gui=NONE guifg=#cf8faf guibg=bg
" Show ZenkakuSpace "{{{
au BufNewFile,BufRead * match ZenkakuSpace /　/
hi ZenkakuSpace gui=NONE guifg=NONE guibg=#4f2f4f
" }}}

" #- End -# "{{{1
" vim: sw=2
