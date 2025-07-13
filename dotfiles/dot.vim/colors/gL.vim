" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/

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
highlight Normal guifg=#1f1f1f guibg=#ffffff gui=NONE
                \ ctermfg=232 ctermbg=187 cterm=NONE
highlight SpecialKey guifg=#af2f6f guibg=bg gui=NONE
                \ ctermfg=196 ctermbg=bg cterm=NONE
highlight NonText guifg=#af3faf guibg=bg gui=bold
                \ ctermfg=128 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#0f6faf guibg=bg gui=bold
                \ ctermfg=21 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#8f2f4f guibg=#ffcfcf gui=NONE
                \ ctermfg=196 ctermbg=213 cterm=NONE
highlight IncSearch guifg=#000000 guibg=#afaf2f gui=bold
                \ ctermfg=3 ctermbg=100 cterm=bold,underline
highlight Search guifg=#000000 guibg=#2faf8f gui=bold
                \ ctermfg=22 ctermbg=29 cterm=bold,underline
highlight MoreMsg guifg=#0f3f5f guibg=#cfcfff gui=underline
                \ ctermfg=17 ctermbg=69 cterm=underline
highlight ModeMsg guifg=#0f5f3f guibg=#cfffcf gui=underline
                \ ctermfg=22 ctermbg=115 cterm=underline
highlight LineNr guifg=#af5f1f guibg=NONE gui=NONE
                \ ctermfg=130 ctermbg=NONE cterm=NONE
highlight CursorLineNr guifg=#af5f1f guibg=NONE gui=NONE
                \ ctermfg=105 ctermbg=0 cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#5f0f3f guibg=#ffcfcf gui=underline
                \ ctermfg=52 ctermbg=213 cterm=underline
" Statusline "{{{2
highlight StatusLine guifg=#5f5f5f guibg=#cfcfcf gui=NONE
                \ ctermfg=239 ctermbg=249 cterm=NONE
highlight StatusLineNC guifg=#6f6f6f guibg=#efdfcf gui=NONE
                \ ctermfg=239 ctermbg=138 cterm=NONE
" }}}2
highlight VertSplit guifg=#6f6f6f guibg=#cfcfcf gui=bold
                \ ctermfg=238 ctermbg=247 cterm=bold
highlight Title guifg=#af5f8f guibg=bg gui=underline
                \ ctermfg=204 ctermbg=bg cterm=underline
" Visual "{{{2
highlight Visual guifg=#ffffff guibg=#1f2f5f gui=NONE
                \ ctermfg=188 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#ffffff guibg=#3f4f7f gui=bold,underline
                \ ctermfg=230 ctermbg=27 cterm=bold,underline
" }}}2
highlight WarningMsg guifg=#cf2f4f guibg=#ffcfcf gui=NONE
                \ ctermfg=160 ctermbg=218 cterm=NONE
highlight WildMenu guifg=#cfcfcf guibg=#2f3f5f gui=NONE
                \ ctermfg=231 ctermbg=18 cterm=NONE
" Fold "{{{2
highlight Folded guifg=#3f3f3f guibg=#efefff gui=NONE
                \ ctermfg=233 ctermbg=189 cterm=NONE
highlight FoldColumn guifg=#5f5faf guibg=#fff0fc gui=bold
                \ ctermfg=57 ctermbg=182 cterm=bold

" diff "{{{2
highlight DiffAdd guifg=fg guibg=#8fffcf gui=NONE
                \ ctermfg=NONE ctermbg=42 cterm=NONE
highlight DiffChange guifg=fg guibg=#ffffcf gui=NONE
                \ ctermfg=NONE ctermbg=180 cterm=NONE
highlight DiffDelete guifg=fg guibg=#ffafcf gui=bold
                \ ctermfg=NONE ctermbg=213 cterm=NONE
highlight DiffText guifg=#4f4f4f guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}
highlight SignColumn guifg=#7f2f4f guibg=bg gui=NONE
                \ ctermfg=124 ctermbg=bg cterm=NONE
highlight Conceal guifg=#7f2f4f guibg=bg gui=NONE
                \ ctermfg=155 ctermbg=165 cterm=NONE
" Spell "{{{2
highlight SpellBad guifg=#5f3f7f guibg=bg gui=NONE
                \ ctermfg=53 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#3f4f7f guibg=bg gui=NONE
                \ ctermfg=12 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#3f7f6f guibg=bg gui=NONE
                \ ctermfg=29 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#5faf3f guibg=bg gui=NONE
                \ ctermfg=36 ctermbg=bg cterm=NONE

" Pmenu "{{{2
highlight Pmenu guifg=#cfcfcf guibg=#0f0f1f gui=NONE
                \ ctermfg=251 ctermbg=232 cterm=NONE
highlight PmenuSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
                \ ctermfg=251 ctermbg=19 cterm=NONE
highlight PmenuSbar guifg=#cfcfcf guibg=#1f1f1f gui=NONE
                \ ctermfg=fg ctermbg=232 cterm=NONE
highlight PmenuThumb guifg=#cfcfcf guibg=#4f0f2f gui=NONE
                \ ctermfg=fg ctermbg=89 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#5f5f5f guibg=#efefff gui=NONE
                \ ctermfg=238 ctermbg=195 cterm=NONE
highlight TabLineSel guifg=#cfcfcf guibg=#1f2f5f gui=NONE
                \ ctermfg=254 ctermbg=18 cterm=NONE
highlight TabLineFill guifg=#5f5f5f guibg=#efefff gui=NONE
                \ ctermfg=238 ctermbg=251 cterm=NONE

" tabpanel "{{{2
highlight TabPanel guifg=#5f5f5f guibg=#efefff gui=NONE
                \ ctermfg=238 ctermbg=195 cterm=NONE
highlight TabPanelSel guifg=#cfcfcf guibg=#1f2f5f gui=NONE
                \ ctermfg=254 ctermbg=18 cterm=NONE
highlight TabPanelFill guifg=#5f5f5f guibg=#efefff gui=NONE
                \ ctermfg=238 ctermbg=251 cterm=NONE

" cursor "{{{2
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
                \ ctermfg=238 ctermbg=234 cterm=NONE
highlight CursorLine guifg=NONE guibg=#dfefff gui=NONE
                \ ctermfg=NONE ctermbg=189 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight Cursor guifg=#ffffff guibg=#5f1f3f gui=NONE
                \ ctermfg=255 ctermbg=125 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af2f3f gui=NONE
                \ ctermfg=0 ctermbg=124 cterm=NONE
endif

" }}}2
" terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=fg guibg=bg gui=NONE
                  \ ctermfg=fg ctermbg=bg cterm=NONE
  highlight StatusLineTerm guifg=#000f2f guibg=#cfccff gui=NONE
                  \ ctermfg=11 ctermbg=bg cterm=NONE
  highlight StatusLineTermNc guifg=#002f2f guibg=#8fafcf gui=NONE
                  \ ctermfg=11 ctermbg=bg cterm=NONE
  " Terminal color
  let g:terminal_ansi_colors = [
    \ "#0c0c0c", "#850f1f", "#13710e", "#819c00",
    \ "#00378a", "#881798", "#3a96dd", "#8f8f8f",
    \ "#767676", "#872836", "#16960c", "#6a7f84",
    \ "#3b789f", "#94005e", "#61d6d6", "#989898"
    \ ]
endif



" #- syntax highlighting groups -# "{{{1
highlight lCursor guifg=#3f3f3f guibg=#7ea3a6 gui=NONE
                \ ctermfg=232 ctermbg=30 cterm=NONE
highlight MatchParen guifg=#000000 guibg=#2f438f gui=bold
                \ ctermfg=17 ctermbg=26 cterm=bold,underline
highlight comment guifg=#1f4faf guibg=bg gui=NONE
                \ ctermfg=25 ctermbg=bg cterm=NONE
highlight Constant guifg=#8f2f5f guibg=bg gui=NONE
                \ ctermfg=90 ctermbg=bg cterm=NONE
highlight Special guifg=#4f4f5f guibg=bg gui=NONE
                \ ctermfg=245 ctermbg=bg cterm=NONE
highlight Identifier guifg=#4f3f3f guibg=bg gui=NONE
                \ ctermfg=235 ctermbg=bg cterm=NONE
highlight Statement guifg=#7f0f7f guibg=bg gui=NONE
                \ ctermfg=89 ctermbg=bg cterm=NONE
highlight PreProc guifg=#6f3f8f guibg=bg gui=NONE
                \ ctermfg=129 ctermbg=bg cterm=NONE
highlight type guifg=#0f5f1f guibg=bg gui=NONE
                \ ctermfg=22 ctermbg=bg cterm=NONE
highlight underlined guifg=#1f5f3f guibg=bg gui=underline
                \ ctermfg=23 ctermbg=bg cterm=underline
highlight Ignore guifg=#3f3f3f guibg=bg gui=bold
                \ ctermfg=232 ctermbg=bg cterm=bold
highlight Error guifg=#7f1f4f guibg=#ffcfcf gui=NONE
                \ ctermfg=52 ctermbg=213 cterm=NONE
highlight Todo guifg=#af2f5f guibg=#ffcfef gui=bold,underline
                \ ctermfg=125 ctermbg=218 cterm=bold,underline
highlight string guifg=#2f2f5f guibg=bg gui=NONE
                \ ctermfg=234 ctermbg=bg cterm=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
