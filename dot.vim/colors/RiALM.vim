" #- vim color file -# "{{{1
" Note: "{{{2
" hilight ZenkakuSpace /　/
" matchparen ({[*]})
" This colorscheme is improved darkblue

" #- Vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- colorscheme name -# "{{{1
let colors_name = "RiALM"

" #- highlighting groups various ooccasions -# "{{{1
highlight Normal guifg=#efefef guibg=#192a4f gui=NONE
                \ ctermfg=255 ctermbg=17 cterm=NONE
highlight SpecialKey guifg=#8f5fff guibg=NONE gui=NONE
                \ ctermfg=55 ctermbg=bg cterm=NONE
highlight NonText guifg=#39ffff guibg=bg gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Directory guifg=#5f8fff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#5f1f3f guibg=#cf3f5f gui=underline
                \ ctermfg=52 ctermbg=134 cterm=underline
" search "{{{2
highlight IncSearch guifg=#5f3f2f guibg=#bf6f4f gui=underline
                \ ctermfg=2 ctermbg=49 cterm=underline
highlight Search guifg=#0f3f5f guibg=#4f6fbf gui=underline
                \ ctermfg=20 ctermbg=4 cterm=underline
" }}}2
highlight MoreMsg guifg=#0f4f0f guibg=#3f8fcf gui=underline
                \ ctermfg=2 ctermbg=86 cterm=underline
highlight ModeMsg guifg=#5f5f5f guibg=#cfcfcf gui=underline
                \ ctermfg=240 ctermbg=255 cterm=underline
highlight LineNr ctermfg=white guifg=#75d99d gui=NONE
                \ ctermfg=50 ctermbg=NONE cterm=NONE
highlight CursorLineNr guifg=#2f2fff guibg=#1f2f5f gui=NONE
                \ ctermfg=21 ctermbg=NONE cterm=bold
highlight CursorColumn guifg=NONE guibg=grey40 gui=NONE
                \ ctermfg=21 ctermbg=NONE cterm=bold
highlight Question guifg=#0f5f3f guibg=#3fcf8f gui=underline
                \ ctermfg=2 ctermbg=86 cterm=underline
" statusline "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#101f3f gui=NONE
                \ ctermfg=252 ctermbg=17 cterm=NONE
highlight StatusLineNC guifg=#5f5f3f guibg=#c4b2ab gui=NONE
                \ ctermfg=131 ctermbg=181 cterm=NONE
" }}}2
highlight VertSplit guifg=#23447f guibg=#1f1f4f gui=NONE
                \ ctermfg=21 ctermbg=17 cterm=NONE
highlight Title guifg=#2fd4c6 guibg=bg gui=bold,underline
                \ ctermfg=49 ctermbg=bg cterm=underline,bold
" visual "{{{2
highlight Visual guifg=#ffffff guibg=#001f3f gui=NONE
                \ ctermfg=fg ctermbg=25 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#0f2f5f gui=underline,bold
                \ ctermfg=fg ctermbg=19 cterm=underline,bold
" }}}2
highlight WarningMsg guifg=#5f2f8f guibg=#cf5fff gui=underline
                \ ctermfg=160 ctermbg=200 cterm=underline,bold
highlight WildMenu guifg=#ffffff guibg=#1f3f5f gui=NONE
                \ ctermfg=253 ctermbg=18 cterm=NONE
" fold "{{{2
highlight Folded guifg=#bfbfbf guibg=#102040 gui=NONE
                \ ctermfg=254  ctermbg=18 cterm=NONE
highlight FoldColumn guifg=#ffffff guibg=#1f2f5f gui=bold
                \ ctermfg=250 ctermbg=17 cterm=bold

" diff "{{{2
highlight DiffAdd guifg=fg guibg=#5f8f4f gui=NONE
                \ ctermfg=fg ctermbg=36 cterm=NONE
highlight DiffChange guifg=fg guibg=#cf6f4f gui=NONE
                \ ctermfg=fg ctermbg=173 cterm=NONE
highlight DiffDelete guifg=fg guibg=#9f2f3f gui=bold
                \ ctermfg=fg ctermbg=161 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2
highlight SignColumn guifg=#ff5f7f guibg=bg gui=NONE
                \ ctermfg=161 ctermbg=bg cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#cf5fdf guibg=bg gui=NONE
                \ ctermfg=165 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#5f9fff guibg=bg gui=NONE
                \ ctermfg=117 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#5fff8f guibg=bg gui=NONE
                \ ctermfg=115 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#ffcf5f guibg=bg gui=NONE
                \ ctermfg=179 ctermbg=bg cterm=NONE

" pmenu "{{{2
highlight pmenu guifg=#cfcfcf guibg=#050f2f gui=NONE
                \ ctermfg=fg ctermbg=232 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                \ ctermfg=fg ctermbg=18 cterm=NONE
highlight pmenuSbar guifg=#afafaf guibg=#0f0f0f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuThumb guifg=#afafaf guibg=#0f1f1f gui=NONE
                \ ctermfg=fg ctermbg=23 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#aaaaaa guibg=#190a3f gui=underline
                \ ctermfg=250 ctermbg=17 cterm=underline
highlight TabLineSel guifg=#cfcfcf guibg=#15305f gui=NONE
                \ ctermfg=252 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#415676 guibg=#100a3f gui=underline,bold
                \ ctermfg=68 ctermbg=17 cterm=underline,bold

" cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
                \ ctermfg=NONE ctermbg=bg cterm=NONE
highlight CursorLine guifg=NONE guibg=#1f2f5f gui=NONE
                \ ctermfg=NONE ctermbg=18 cterm=NONE
highlight Cursor guifg=#000000 guibg=#5faf7f gui=NONE
                \ ctermfg=16 ctermbg=35 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#bfbfbf guibg=#5f0f3f gui=NONE
                \ ctermfg=16 ctermbg=9 cterm=NONE
endif

" }}}2

" #- syntax highlighting group -# "{{{1
highlight lCursor guifg=#000000 guibg=#afff8f gui=NONE
                \ ctermfg=16 ctermbg=35 cterm=NONE
highlight MatchParen guifg=fg guibg=#ffaf3f gui=bold
                \ ctermfg=15 ctermbg=11 cterm=bold
highlight comment guifg=#3f5fff guibg=bg gui=NONE
                \ ctermfg=33 ctermbg=bg cterm=NONE
highlight Constant guifg=#8fffaf guibg=bg gui=NONE
                \ ctermfg=84 ctermbg=bg cterm=NONE
highlight Special guifg=#deffed guibg=bg gui=NONE
                \ ctermfg=159 ctermbg=bg cterm=NONE
highlight Identifier guifg=#5fffaf guibg=bg gui=NONE
                \ ctermfg=78 ctermbg=bg cterm=NONE
highlight Statement guifg=#ffcf7f guibg=bg gui=NONE
                \ ctermfg=180 ctermbg=bg cterm=NONE
highlight PreProc guifg=#cf3faf guibg=bg gui=NONE
                \ ctermfg=171 ctermbg=bg cterm=NONE
highlight type guifg=#3fcf8f guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight underlined guifg=#56efcc guibg=bg gui=underline
                \ ctermfg=49 ctermbg=bg cterm=underline
highlight Ignore guifg=#4f50ff guibg=bg gui=bold
                \ ctermfg=63 ctermbg=bg cterm=bold
highlight Error guifg=#fd4899 guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
highlight Todo guifg=#cfafcf guibg=#1f2f5f gui=bold,underline
                \ ctermfg=141 ctermbg=bg cterm=bold,underline
highlight string guifg=#ffc8ff guibg=bg gui=NONE
                \ ctermfg=5 ctermbg=bg cterm=NONE

" #- User -# "{{{1
highlight User1 guifg=#afafaf guibg=#2f2f2f gui=NONE
                \ ctermfg=251 ctermbg=236 cterm=NONE
highlight User2 guifg=#0f0f3f guibg=#0f3f8f gui=NONE
                \ ctermfg=17 ctermbg=27 cterm=NONE
highlight User3 guifg=#0f3f0f guibg=#0f8f3f gui=NONE
                \ ctermfg=22 ctermbg=35 cterm=NONE
highlight User4 guifg=#3f2f0f guibg=#8f3f0f gui=NONE
                \ ctermfg=174 ctermbg=94 cterm=NONE
highlight User5 guifg=#3f0f0f guibg=#8f0f3f gui=NONE
                \ ctermfg=88 ctermbg=125 cterm=NONE
highlight User6 guifg=#5f5f0f guibg=#8f8f0f gui=NONE
                \ ctermfg=94 ctermbg=229 cterm=NONE
highlight User7 guifg=#5f0f5f guibg=#8f3f8f gui=NONE
                \ ctermfg=88 ctermbg=201 cterm=NONE
highlight User8 guifg=#3f5f3f guibg=#8f8f5f gui=NONE
                \ ctermfg=130 ctermbg=222 cterm=NONE
highlight User9 guifg=#5f5f5f guibg=#afafcf gui=NONE
                \ ctermfg=244 ctermbg=189 cterm=NONE
" #- END: -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
