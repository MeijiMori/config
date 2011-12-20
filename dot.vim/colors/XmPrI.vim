" Vim color file "{{{
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" hilight ZenkakuSpace /　/
" matchpattern [{*}]
" }}}

" This color scheme uses a dark grey background. "{{{
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif
" }}}

" colorscheme name "{{{
let g:colors_name = "XmPrI"
" }}}

"#- highlighting groups for various occasions -# "{{{
highlight Normal ctermbg=black ctermfg=white gui=NONE guifg=#fdfdfd guibg=#2f1f2f
highlight SpecialKey term=bold ctermfg=LightBlue gui=NONE guifg=#554ffe guibg=NONE
highlight NonText term=NONE ctermfg=LightBlue gui=NONE gui=NONE guifg=#aaffaa guibg=NONE
highlight Directory term=bold ctermfg=LightCyan guifg=#5f6fff guibg=NONE
highlight ErrorMsg term=standout ctermbg=DarkBlue ctermfg=White gui=NONE guifg=#ffafcf guibg=NONE
" search "{{{
highlight IncSearch term=reverse cterm=reverse gui=NONE guifg=#000000 guibg=#6fafff
highlight Search term=reverse ctermbg=white ctermfg=Black gui=NONE guifg=#111111 guibg=#6f9fff
" }}}
highlight MoreMsg term=NONE ctermfg=LightGreen gui=NONE guifg=#3f7fff guibg=NONE
"highlight ModeMsg term=bold cterm=bold ctermfg=white gui=NONE guifg=#3f5fff guibg=NONE
highlight ModeMsg term=bold cterm=bold ctermfg=white gui=NONE guifg=#3f6fff guibg=NONE
highlight LineNr term=underline ctermbg=black gui=NONE ctermfg=white gui=NONE guifg=#bfbfaf guibg=NONE
highlight Question term=standout ctermfg=LightGreen gui=NONE gui=NONE guifg=#cccccc guibg=bg
" statusline "{{{
highlight StatusLine ctermbg=black ctermfg=white gui=NONE guifg=#cccccc guibg=#1f001f
highlight StatusLineNC term=reverse cterm=reverse gui=NONE guifg=#4f3f3f guibg=#b2a089
" }}}
highlight VertSplit term=reverse cterm=reverse gui=NONE guifg=#ef5f8f guibg=#1f0f1f
highlight Title term=bold ctermfg=LightMagenta gui=NONE guifg=#2fd4c6 guibg=bg
" visual "{{{
"highlight Visual term=reverse ctermbg=blue gui=NONE guifg=#ffffff guibg=#1f3f6f
highlight Visual term=reverse ctermbg=blue gui=NONE guifg=#cdd0d3 guibg=#17334f
highlight VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold guifg=#3d3d3d guibg=#aaeeee
" }}}
highlight WarningMsg term=standout ctermfg=LightRed guifg=#ff73bf guibg=NONE
highlight WildMenu term=standout ctermbg=Yellow ctermfg=Black gui=NONE guifg=#aaaaaa guibg=#1f2f5f
" fold "{{{
highlight Folded term=standout ctermbg=LightGrey ctermfg=DarkBlue gui=NONE guifg=#aaaaaa guibg=bg
highlight FoldColumn term=standout ctermbg=LightGrey ctermfg=DarkBlue gui=bold guifg=#ffffff guibg=#2f1f2f
" }}}
" diff "{{{
highlight DiffAdd term=bold ctermbg=DarkBlue gui=NONE guifg=#aacbde guibg=bg
highlight DiffChange term=bold ctermbg=DarkMagenta gui=NONE guifg=#998dbf guibg=bg
highlight DiffDelete term=bold ctermfg=Blue ctermbg=DarkCyan gui=NONE guifg=#a62c74 guibg=bg
highlight DiffText term=reverse cterm=bold ctermbg=Red gui=NONE guifg=#c9cbce guibg=bg
" }}}
highlight SignColumn term=NONE gui=NONE guifg=#a65774 guibg=NONE
if v:version >= 703
  highlight Conceal term=NONE gui=NONE guifg=#000000 guibg=NONE
endif
" spell "{{{
highlight SpellBad term=NONE gui=NONE guifg=#af5fbf guibg=NONE
highlight SpellCap term=NONE gui=NONE guifg=#7f8fbf guibg=NONE
highlight SpellRare term=NONE gui=NONE guifg=#7fe9af guibg=NONE
highlight SpellLocal term=NONE gui=NONE guifg=#bfaf7f guibg=NONE
" }}}
" pmenu "{{{
highlight pmenu gui=NONE guifg=#2f2f2f guibg=#afafaf
"highlight Pmenu gui=NONE guifg=#cccccc guibg=#4f2f4f
highlight PmenuSel gui=NONE guifg=#d2d2d2 guibg=#4f2f4f
"highlight PmenuSel gui=NONE guifg=#d2d2d2 guibg=#2f3f5f
highlight PmenuSbar gui=NONE guifg=#ffffff guibg=#4d2f4d
highlight PmenuThumb gui=NONE guifg=#111111 guibg=#999999
" }}}
" tabline "{{{
highlight TabLine term=NONE gui=NONE guifg=#000000 guibg=#cccccc
highlight TabLineSel term=NONE gui=NONE guifg=#cccccc guibg=#1a3b6f
highlight TabLineFill term=NONE gui=NONE guifg=#aaaaaa guibg=#dddddd
" }}}
" cursor "{{{
highlight CursorColumn term=reverse ctermbg=Black guibg=bg
highlight CursorLine ctermbg=magenta gui=NONE guifg=NONE guibg=#2f2f5f
" IME status color for cursor "{{{
if has('multi_byte_ime')
  highlight Cursor gui=NONE guifg=#000000 guibg=#1f8f9f
  highlight CursorIM gui=NONE guifg=#000000 guibg=#ff425f
else
  highlight Cursor gui=NONE guifg=#000000 guibg=#2f8f9f
endif
" }}}
" }}}
" }}}

" #- syntax highlighting group -# "{{{
highlight lCursor gui=NONE guifg=#000000 guibg=#7ea3a6
highlight MatchParen gui=bold guifg=#5f5f5f guibg=#7fafff
highlight comment term=bold gui=NONE guifg=#dfafff guibg=bg
highlight Constant term=underline ctermfg=Magenta gui=NONE guifg=#aaeeaa guibg=bg
highlight Identifier gui=NONE guifg=#6fcfff guibg=bg
highlight Special term=bold ctermfg=LightRed gui=NONE guifg=#deffed guibg=bg
if &t_Co > 8
  highlight Statement term=bold cterm=bold ctermfg=Yellow guifg=bg guibg=bg
endif
highlight Statement gui=NONE guifg=#7fffef guibg=bg
highlight PreProc gui=NONE guifg=#faadfe guibg=NONE
highlight type gui=NONE guifg=#5fbfcf guibg=bg
highlight underlined gui=underline guifg=#669ffc guibg=NONE
highlight Ignore ctermfg=DarkGrey gui=NONE guifg=#5f5f5f guibg=NONE
highlight Error gui=NONE guifg=#ff5faf guibg=bg
highlight Todo gui=bold guifg=#4e5ca0 guibg=#2f2f5f
highlight string gui=NONE guifg=#afffaf guibg=NONE
" Setting of vimshell "{{{
highlight VimShellPrompt  gui=underline guifg=#aaffff guibg=NONE
highlight def link VimShellPrompt Identifier
highlight def link VimShellUserPrompt Special
highlight def link VimShellQuoted Special
highlight def link VimShellString Constant
highlight def link VimShellArguments Type
highlight def link VimShellConstants Constant
highlight def link VimShellSpecial PreProc
highlight def link VimShellVariable Special
highlight def link VimShellComment Comment
highlight def link VimShellHistory Special
highlight def link VimShellGrep Comment
highlight def link VimShellNormal Normal
highlight def link VimShellExe Statement
highlight def link VimShellDirectory Preproc
"highlight VimShellDirectory gui=NONE guifg=#3a85d2 guibg=bg
highlight def link VimShellSocket Constant
highlight def link VimShellLink Comment
highlight def link VimShellDotFiles Identifier
highlight def link VimShellError Error
highlight def link VimShellErrorHidden Ignore
highlight def link VimShellUserPromptHidden Ignore
" }}}
" Setting of vimfiler "{{{
highlight VimFilerPrompt  gui=underline guifg=#cfaabf guibg=NONE
highlight def link FilerPrompt Identifier
highlight def link VimFilerNonMarkedFile Special
highlight def link VimFilerMarkedFile Statement
highlight def link VimFilerDirectory Directory
highlight def link VimFilerSize Constant
highlight def link VimFilerDateToday Statement
highlight def link VimFilerDateWeek Special
highlight def link VimFilerDate Identifier

highlight def link VimFilerTypeText Constant
highlight def link VimFilerTypeImage Type
highlight def link VimFilerTypeArchive Special
highlight def link VimFilerTypeExecute Statement
highlight def link VimFilerTypeMultimedia Identifier
highlight def link VimFilerTypeDirectory Preproc
highlight def link VimFilerTypeSystem Comment
" }}}
" }}}

" #- color functions -# "{{{
" When Insert mode change for statusline "{{{
"let g:hi_insert = 'highlight Statusline gui=NONE guifg=#ffffff guibg=#393e3f'
"if has('syntax')
"  augroup InsertHook
"    autocmd!
"    autocmd InsertEnter * call s:StatusLine('Enter')
"    autocmd InsertLeave * call s:StatusLine('Leave')
"  augroup END
"endif

"let s:slhlcmd = ''
"function! s:StatusLine(mode) "{{{
"  if a:mode == 'Enter'
"    silent! let s:slhlcmd = 'highlight ' . s:GetHilight('StatusLine')
"    silent exec g:hi_insert
"  else
"    highlight clear StatusLine silent exec s:slhlcmd
"  endif
"endfunction "}}}

"function! s:GetHighlight(highlight) "{{{
"  redir => hl
"  exec 'highlight ' . a:highlight
"  redir END
"  let hl = substitute(hl, '[\r\n]', '', 'g')
"  let hl = substitute(hl, 'xxx', '', '')
"  return hl
"endfunction " }}}

" }}}
"}}}

"END "{{{
" vim: sw=2
" }}}
