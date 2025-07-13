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
let g:colors_name = expand('<sfile>:t:r')

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#000000 guibg=#ffffff gui=NONE
          \ ctermfg=232 ctermbg=231 cterm=NONE
highlight SpecialKey guifg=#6f2f6f guibg=bg gui=NONE
          \ ctermfg=53 ctermbg=bg cterm=NONE
highlight NonText guifg=#3f7faf guibg=bg gui=bold
          \ ctermfg=26 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#0f6faf guibg=bg gui=NONE
          \ ctermfg=33 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#cf2f4f guibg=NONE gui=NONE
          \ ctermfg=124 ctermbg=bg cterm=NONE
" Search "{{{2
highlight IncSearch guifg=#000000 guibg=#dfaff5 gui=NONE
          \ ctermfg=0 ctermbg=135 cterm=NONE
highlight Search guifg=#000000 guibg=#afcfff gui=NONE
          \ ctermfg=0 ctermbg=75 cterm=NONE
"}}}2
highlight MoreMsg guifg=#4f7faf guibg=#efefef gui=NONE
          \ ctermfg=25 ctermbg=254 cterm=NONE
highlight ModeMsg guifg=#2faf8f guibg=#efefef gui=NONE
          \ ctermfg=28 ctermbg=254 cterm=NONE
highlight LineNr guifg=#afaf8f guibg=NONE gui=NONE
          \ ctermfg=138 ctermbg=NONE cterm=NONE
highlight CursorLineNr guifg=#afaf8f guibg=NONE gui=NONE
          \ ctermfg=29 ctermbg=121 cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#2faf6f guibg=bg gui=NONE
          \ ctermfg=28 ctermbg=bg cterm=NONE
" Statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#2f2f4f gui=NONE
          \ ctermfg=15 ctermbg=232 cterm=NONE
highlight StatusLineNC guifg=#6f6f6f guibg=#c4b2ab gui=NONE
          \ ctermfg=59 ctermbg=138 cterm=NONE
highlight VertSplit guifg=#6f6f6f guibg=#dfdfdf gui=NONE
          \ ctermfg=238 ctermbg=250 cterm=NONE
highlight Title guifg=#2f7f86 guibg=bg gui=NONE
          \ ctermfg=29 ctermbg=bg cterm=NONE
" Visual "{{{2
highlight Visual guifg=#ffffff guibg=#1f2f5f gui=NONE
          \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#ffffff guibg=#3f4f7f gui=bold,underline
          \ ctermfg=15 ctermbg=25 cterm=bold,underline
" }}}2
highlight WarningMsg guifg=#cf2f4f guibg=bg gui=NONE
          \ ctermfg=88 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#ffffff guibg=#0f2f5f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE
" Fold "{{{2
highlight Folded guifg=#3f3f3f guibg=#efdfdf gui=NONE
          \ ctermfg=232 ctermbg=183 cterm=NONE
highlight FoldColumn guifg=#2f2f8f guibg=#efdfdf gui=bold
          \ ctermfg=17 ctermbg=183 cterm=bold

" diff "{{{2
highlight DiffAdd guifg=#1f4fbf guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=39 cterm=NONE
highlight DiffChange guifg=#af2f5f guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=186 cterm=NONE
highlight DiffDelete guifg=#a62c74 guibg=bg gui=bold
          \ ctermfg=NONE ctermbg=177 cterm=NONE
highlight DiffText guifg=#4f4f4f guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
" }}}
highlight SignColumn guifg=#7f2f4f guibg=bg gui=NONE
          \ ctermfg=137 ctermbg=bg cterm=NONE
highlight Conceal guifg=#7f2f4f guibg=bg gui=NONE
          \ ctermfg=161 ctermbg=bg cterm=NONE
" Spell "{{{2
highlight SpellBad guifg=#5f3f7f guibg=bg gui=NONE
          \ ctermfg=129 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#3f4f7f guibg=bg gui=NONE
          \ ctermfg=21 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#3f7f6f guibg=bg gui=NONE
          \ ctermfg=30 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#5faf3f guibg=bg gui=NONE
          \ ctermfg=48 ctermbg=bg cterm=NONE

" Pmenu "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#dfdfdf gui=NONE
          \ ctermfg=0 ctermbg=247 cterm=NONE
highlight PmenuSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#cccccc guibg=#2f2f2f gui=NONE
          \ ctermfg=fg ctermbg=236 cterm=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#6f2f4f gui=NONE
          \ ctermfg=fg ctermbg=126 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#5f5f5f guibg=#cfcfcf gui=NONE
          \ ctermfg=238 ctermbg=249 cterm=NONE
highlight TabLineSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#5f5f5f guibg=#afafaf gui=NONE
          \ ctermfg=235 ctermbg=245 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#5f5f5f guibg=#cfcfcf gui=NONE
          \ ctermfg=238 ctermbg=249 cterm=NONE
highlight TabLineSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#5f5f5f guibg=#afafaf gui=NONE
          \ ctermfg=235 ctermbg=245 cterm=NONE
" tabpanel "{{{2
highlight TabPanel guifg=#5f5f5f guibg=#cfcfcf gui=NONE
          \ ctermfg=238 ctermbg=249 cterm=NONE
highlight TabPanelSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#5f5f5f guibg=#afafaf gui=NONE
          \ ctermfg=235 ctermbg=245 cterm=NONE

" cursor "{{{2
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
          \ ctermfg=232 ctermbg=235 cterm=NONE
highlight CursorLine guifg=NONE guibg=#dfefff gui=NONE
          \ ctermfg=NONE ctermbg=195 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
          \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight Cursor guifg=#000000 guibg=#1faf8f gui=NONE
          \ ctermfg=2 ctermbg=23 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime')
  highlight CursorIM gui=NONE guifg=#000000 guibg=#af4f5f
          \ ctermfg=1 ctermbg=52 cterm=NONE
endif


" terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=#cfcfcf guibg=#00000f gui=NONE
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


" #- syntax highlighting groups -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
          \ ctermfg=23 ctermbg=30 cterm=NONE
highlight MatchParen guifg=#373737 guibg=#2f63ad gui=bold
          \ ctermfg=17 ctermbg=26 cterm=bold,underline
highlight comment guifg=#1f4faf guibg=bg gui=NONE
          \ ctermfg=20 ctermbg=bg cterm=NONE
highlight Constant guifg=#1f8f4f guibg=bg gui=NONE
          \ ctermfg=29 ctermbg=bg cterm=NONE
highlight Special guifg=#1f3f8f guibg=bg gui=NONE
          \ ctermfg=18 ctermbg=bg cterm=NONE
highlight Identifier guifg=#2f9f3f guibg=bg gui=NONE
          \ ctermfg=28 ctermbg=bg cterm=NONE
highlight Statement guifg=#1f5f7f guibg=bg gui=NONE
          \ ctermfg=17 ctermbg=bg cterm=NONE
highlight PreProc guifg=#bf51b7 guibg=bg gui=NONE
          \ ctermfg=13 ctermbg=bg cterm=NONE
highlight type guifg=#2f7f7f guibg=bg gui=NONE
          \ ctermfg=22 ctermbg=bg cterm=NONE
highlight underlined guifg=#3faf6f guibg=bg gui=underline
          \ ctermfg=35 ctermbg=bg cterm=underline
highlight Ignore guifg=#7f7f7f guibg=bg gui=NONE
          \ ctermfg=66 ctermbg=bg cterm=NONE
highlight Error guifg=#a04f7e guibg=#ffefff gui=NONE
          \ ctermfg=5 ctermbg=225 cterm=NONE
highlight Todo guifg=#af2f5f guibg=#efefef gui=bold
          \ ctermfg=124 ctermbg=252 cterm=bold
highlight string guifg=#af4f8f guibg=bg gui=NONE
          \ ctermfg=200 ctermbg=bg cterm=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
