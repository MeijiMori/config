" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date

" #- First remove all existing highlighting. -# "{{{1
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = "mWil"

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal ctermbg=black ctermfg=white gui=NONE guifg=#000000 guibg=#ffffff
highlight SpecialKey term=bold ctermfg=LightBlue guifg=#6f2f6f guibg=bg
highlight NonText term=NONE ctermfg=LightBlue gui=bold guifg=#3f7faf guibg=bg
highlight Directory term=bold ctermfg=LightCyan gui=NONE guifg=#0f6faf guibg=bg
highlight ErrorMsg term=standout ctermbg=DarkBlue ctermfg=White gui=NONE guifg=#cf2f4f guibg=NONE
highlight IncSearch term=reverse cterm=reverse gui=NONE guifg=#000000 guibg=#dfaff5
highlight Search term=reverse ctermbg=white ctermfg=Black gui=NONE guifg=#000000 guibg=#afcfff
highlight MoreMsg term=NONE ctermfg=LightGreen gui=NONE guifg=#4f7faf guibg=#efefef
"highlight def link ModeMsg PmenuSel
highlight ModeMsg term=bold cterm=bold ctermfg=white gui=NONE guifg=#2faf8f guibg=#efefef
"highlight LineNr term=underline ctermbg=black gui=NONE ctermfg=white guifg=#97cf4d guibg=bg
highlight LineNr term=underline ctermbg=black gui=NONE ctermfg=white guifg=#afaf8f guibg=NONE
"highlight def link Question MoreMsg
highlight Question term=standout ctermfg=LightGreen gui=NONE guifg=#2faf6f guibg=bg
" Statusline "{{{
highlight StatusLine ctermbg=black ctermfg=white gui=NONE guifg=#ffffff guibg=#2f2f4f
highlight StatusLineNC term=reverse cterm=reverse gui=NONE guifg=#6f6f6f guibg=#c4b2ab
" }}}
"highlight VertSplit term=reverse cterm=reverse gui=NONE guifg=bg guibg=fg
highlight VertSplit term=reverse cterm=reverse gui=NONE guifg=#6f6f6f guibg=#dfdfdf
highlight Title term=bold ctermfg=LightMagenta gui=NONE guifg=#2f7f86 guibg=bg
" Visual "{{{
"highlight Visual term=reverse ctermbg=blue gui=NONE guifg=#ffffff guibg=#0f2f4f
highlight Visual term=reverse ctermbg=blue gui=NONE guifg=#ffffff guibg=#1f2f5f
highlight VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold guifg=#ffffff guibg=#3f4f7f
" }}}
highlight WarningMsg term=standout ctermfg=LightRed gui=NONE guifg=#cf2f4f guibg=bg
highlight WildMenu term=standout ctermbg=Yellow ctermfg=Black gui=NONE guifg=#ffffff guibg=#0f2f5f
" Fold "{{{
highlight Folded term=standout ctermbg=LightGrey ctermfg=DarkBlue gui=NONE guifg=#3f3f3f guibg=#efdfdf
highlight FoldColumn term=standout ctermbg=LightGrey ctermfg=DarkBlue gui=bold guifg=#2f2f8f guibg=#efdfdf
" }}}
" diff "{{{
highlight DiffAdd term=bold ctermbg=DarkBlue gui=NONE guifg=#1f4fbf guibg=bg
highlight DiffChange term=bold ctermbg=DarkMagenta gui=NONE guifg=#af2f5f guibg=bg
highlight DiffDelete term=bold ctermfg=Blue ctermbg=DarkCyan gui=bold guifg=#a62c74 guibg=bg
"highlight DiffText term=reverse cterm=bold ctermbg=Red gui=bold guifg=#c9cbce guibg=bg
highlight DiffText term=reverse cterm=bold ctermbg=Red gui=NONE guifg=#4f4f4f guibg=bg
" }}}
highlight SignColumn term=NONE gui=NONE guifg=#7f2f4f guibg=bg
" Spell "{{{
highlight SpellBad term=NONE gui=NONE guifg=#5f3f7f guibg=bg
highlight SpellCap term=NONE gui=NONE guifg=#3f4f7f guibg=bg
highlight SpellRare term=NONE gui=NONE guifg=#3f7f6f guibg=bg
highlight SpellLocal term=NONE gui=NONE guifg=#5faf3f guibg=bg
" }}}
" Pmenu "{{{
highlight Pmenu gui=NONE guifg=#0f0f0f guibg=#dfdfdf
highlight PmenuSel gui=NONE guifg=#dfdfdf guibg=#1f2f5f
highlight PmenuSbar gui=NONE guifg=#cccccc guibg=#2f2f2f
highlight PmenuThumb gui=NONE guifg=#aaaaaa guibg=#6f2f4f
" }}}
"tabline "{{{
highlight TabLine term=NONE gui=NONE guifg=#5f5f5f guibg=#cfcfcf
highlight TabLineSel term=NONE gui=NONE guifg=#dfdfdf guibg=#1f2f5f
highlight TabLineFill term=NONE gui=NONE guifg=#5f5f5f guibg=#afafaf
"}}}
" cursor "{{{
highlight CursorColumn gui=NONE guifg=#000000 guibg=#2f2f2f
highlight CursorLine ctermbg=magenta gui=NONE guifg=NONE guibg=#dfefff
highlight Cursor gui=NONE guifg=#000000 guibg=#1faf8f
" IME status color for cursor "{{{
if has('multi_byte_ime')
  highlight CursorIM gui=NONE guifg=#000000 guibg=#af4f5f
endif
"}}}
" }}}

" #- syntax highlighting groups -# "{{{1
highlight lCursor gui=NONE guifg=#575757 guibg=#7ea3a6
highlight MatchParen gui=bold guifg=#373737 guibg=#2f63ad
highlight comment term=bold gui=NONE guifg=#1f4faf guibg=bg
highlight Constant term=underline ctermfg=Magenta gui=NONE guifg=#1f8f4f guibg=bg
highlight Special term=bold ctermfg=LightRed gui=NONE guifg=#1f3f8f guibg=bg
"highlight Identifier gui=NONE guifg=#9cb79c guibg=bg
highlight Identifier gui=NONE guifg=#2f9f3f guibg=bg
if &t_Co > 8
  highlight Statement term=bold cterm=bold ctermfg=Yellow guifg=#ffffff guibg=bg
endif
highlight Statement gui=NONE guifg=#1f5f7f guibg=bg
"highlight PreProc guifg=#b871b7 guibg=bg
highlight PreProc gui=NONE guifg=#bf51b7 guibg=bg
highlight type gui=NONE guifg=#2f7f7f guibg=bg
highlight underlined gui=underline guifg=#3faf6f guibg=bg
highlight Ignore ctermfg=DarkGrey gui=NONE guifg=#7f7f7f guibg=bg
highlight Error gui=NONE guifg=#a04f7e guibg=#ffefff
highlight Todo gui=bold guifg=#af2f5f guibg=#efefef
highlight string gui=NONE guifg=#af4f8f guibg=bg
" Show ZenkakuSpace "{{{
au BufNewFile,BufRead * match ZenkakuSpace /　/
highlight ZenkakuSpace gui=NONE guifg=NONE guibg=#4f2f4f
" }}}

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
