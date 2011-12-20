" Vim colorscheme file "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date
" Guicolorscheme file
" #- Vim color file reset -# "{{{1
" First remove all existing highlighting.

set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

"#- colorscheme name -# "{{{1
let g:colors_name = "pIPe"

" #- highlighting groups for various occasions -# "{{{1
"highlight Normal ctermbg=black ctermfg=white guifg=#fdfdfd guibg=#0f2f3f
highlight Normal ctermbg=black ctermfg=white guifg=#cccccc guibg=#101010
highlight SpecialKey term=bold ctermfg=LightBlue guifg=#af7ecf guibg=bg
highlight NonText term=NONE ctermfg=LightBlue gui=NONE guifg=#5f3fcf guibg=#101020
highlight Directory term=bold ctermfg=LightCyan gui=NONE guifg=#3fafff guibg=bg
highlight ErrorMsg term=standout ctermbg=DarkBlue ctermfg=White gui=NONE guifg=#ff4f8f guibg=bg
" search "{{{
highlight IncSearch term=reverse cterm=reverse gui=NONE guifg=#1f1f1f guibg=#2f4f8f
highlight Search term=reverse ctermbg=white ctermfg=Black guifg=#323232 guibg=#5088e1
"}}}
highlight MoreMsg term=NONE ctermfg=LightGreen gui=NONE guifg=#95d5d9 guibg=#101025
highlight ModeMsg term=bold cterm=bold ctermfg=white gui=NONE guifg=#cfcfcf guibg=#101025
"highlight def link ModeMsg StatusLine
"highlight LineNr term=underline ctermbg=black gui=NONE ctermfg=white guifg=#57bf8a guibg=NONE
highlight LineNr term=underline ctermbg=black gui=NONE ctermfg=white guifg=#2f5fff guibg=NONE
highlight Question term=standout ctermfg=LightGreen gui=NONE guifg=#6ff39f guibg=bg
" statusline "{{{
highlight StatusLine ctermbg=black ctermfg=white gui=NONE guifg=#e0f0e0 guibg=#080f1f
"highlight StatusLineNC term=reverse cterm=reverse gui=NONE guifg=#5f5f3f guibg=#c4b2ab
highlight StatusLineNC term=reverse cterm=reverse gui=NONE guifg=#2f2f3f guibg=#00000f
"}}}
highlight Title term=bold ctermfg=LightMagenta gui=NONE guifg=#5fcf6f guibg=NONE
highlight VertSplit term=reverse cterm=reverse gui=NONE guifg=#9f9f9f guibg=#02020f
" visual "{{{
highlight Visual term=reverse ctermbg=blue gui=NONE guifg=#cccccc guibg=#102f5f
highlight VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold guibg=#aaeeee guifg=#3d3d3d
"}}}
highlight WarningMsg term=standout ctermfg=LightRed guifg=#ff4f8f guibg=bg
"highlight WildMenu term=standout ctermbg=Yellow ctermfg=Black gui=NONE guifg=#6380c5 guibg=#3d3d3d
highlight WildMenu term=standout ctermbg=Yellow ctermfg=Black gui=NONE guifg=#afafaf guibg=#0f1f3f
" fold "{{{
highlight Folded term=standout ctermbg=LightGrey ctermfg=DarkBlue gui=NONE guifg=#9f9faf guibg=#0f1010
highlight FoldColumn term=standout ctermbg=LightGrey ctermfg=DarkBlue gui=bold guifg=#2f1faf guibg=#0f1010
"}}}
" diff "{{{
highlight DiffAdd term=bold ctermbg=DarkBlue gui=NONE guifg=#afffff guibg=bg
highlight DiffChange term=bold ctermbg=DarkMagenta gui=NONE guifg=#ffbfff guibg=bg
highlight DiffDelete term=bold ctermfg=Blue ctermbg=DarkCyan gui=bold guifg=#df4f9f guibg=bg
highlight DiffText term=reverse cterm=bold ctermbg=Red gui=NONE guifg=#cfcfcf guibg=bg
"}}}
highlight SignColumn term=NONE gui=NONE guifg=#f65774 guibg=bg
"spell "{{{
highlight SpellBad term=NONE gui=NONE guifg=#af5fcf guibg=bg
highlight SpellCap term=NONE gui=NONE guifg=#5f9fcf guibg=bg
highlight SpellRare term=NONE gui=NONE guifg=#5fcfbf guibg=bg
highlight SpellLocal term=NONE gui=NONE guifg=#cfbf5f guibg=bg
"}}}
"pmenu "{{{
highlight Pmenu gui=NONE guifg=#202020 guibg=#c0c0df
highlight PmenuSel gui=NONE guifg=#cccccc guibg=#1f2f6f
highlight PmenuSbar gui=NONE guifg=#7f7f7f guibg=#2f2f2f
highlight PmenuThumb gui=NONE guifg=#000000 guibg=#8f3f5f
"}}}
"tabline "{{{
"highlight TabLine term=NONE gui=NONE guifg=#224c6d guibg=bg
highlight TabLine term=NONE gui=NONE guifg=#555555 guibg=#bbbbbb
"highlight TabLineSel term=NONE gui=NONE guifg=#3474a6 guibg=bg
highlight TabLineSel term=NONE gui=NONE guifg=#000000 guibg=#cccccc
highlight TabLineFill term=NONE gui=NONE guifg=#9f9f9f guibg=#bfbfbf
"}}}
"cursor "{{{
highlight CursorLine ctermbg=magenta gui=NONE guifg=NONE guibg=#1f254f
highlight Cursor gui=NONE guifg=#000000 guibg=#9f9f9f
if has('multi_byte_ime')
  highlight CursorIM gui=NONE guifg=#000000 guibg=#7f2f4f
endif
"}}}
" #- syntax highlighting group -# "{{{1
highlight lCursor gui=NONE guifg=#575757 guibg=#7ea3a6
highlight MatchParen gui=bold guifg=#4f4f4f guibg=#5f93cd
highlight comment term=bold gui=NONE guifg=#99aadd guibg=bg
highlight Constant term=underline ctermfg=Magenta gui=NONE guifg=#7dd97b guibg=bg
highlight Identifier gui=NONE guifg=#ccb0d7 guibg=bg
highlight Special term=bold ctermfg=LightRed gui=NONE guifg=#deffed guibg=bg
if &t_Co > 8
  highlight Statement term=bold cterm=bold ctermfg=Yellow guifg=#5c71ab guibg=bg
endif
highlight Statement gui=NONE guifg=#aadd99 guibg=bg
highlight type gui=NONE guifg=#71c9af guibg=bg
highlight underlined gui=underline guifg=#3f9fcf guibg=bg
highlight Ignore ctermfg=DarkGrey gui=NONE guifg=#8f8f8f guibg=bg
highlight Error gui=NONE guifg=#ff4f7e guibg=bg
highlight Todo gui=bold guifg=#6f7fff guibg=#2f2f5f
highlight string gui=NONE guifg=#4f7faf guibg=bg
highlight CursorColumn term=reverse ctermbg=Black guibg=bg

" #- color functions -# "{{{1
"when Insert mode change for statusline "{{{2
"let g:hi_insert = 'highlight Statusline gui=NONE guifg=#ffffff guibg=#393e3f'
"if has('syntax')
"	augroup InsertHook
"		autocmd!
"		autocmd InsertEnter * call s:StatusLine('Enter')
"		autocmd InsertLeave * call s:StatusLine('Leave')
"	augroup END
"endif
"
"let s:slhlcmd = ''
"function! s:StatusLine(mode) "{{{3
"	if a:mode == 'Enter'
"		silent! let s:slhlcmd = 'highlight ' . s:GetHilight('StatusLine')
"		silent exec g:hi_insert
"	else
"		highlight clear StatusLine silent exec s:slhlcmd
"	endif
"endfunction
"function! s:GetHighlight(highlight) "{{{3
"	redir => hl
"	exec 'highlight ' . a:highlight
"	redir END
"	let hl = substitute(hl, '[\r\n]', '', 'g')
"	let hl = substitute(hl, 'xxx', '', '')
"	return hl
"endfunction


"END "{{{1
" vim: ts=2 sts=2 noexpandtab fdm=marker
