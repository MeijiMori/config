" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen {[(*)]}
" highlighting ZenkakuSpace /　/
" Gui colorscheme file
" This colorscheme file is light theme. So refer to bonar's HP.

" #- Color file reset -# "{{{1
" First remove all existing highlighting.
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- Colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#0f0f0f guibg=#faf5da gui=NONE
      \ ctermfg=0 ctermbg=230 cterm=NONE
highlight SpecialKey guifg=#5f5fcf guibg=bg gui=NONE
      \ ctermfg=21 ctermbg=230 cterm=NONE
highlight NonText guifg=#3f3fcf guibg=#efefcf gui=NONE
      \ ctermfg=21 ctermbg=195 cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
      \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#0f3f7f guibg=bg gui=NONE
      \ ctermfg=31 ctermbg=NONE cterm=bold
highlight ErrorMsg guifg=#f84865 guibg=#ffcfcf gui=NONE
      \ ctermfg=160 ctermbg=218 cterm=NONE
" Search "{{{2
highlight IncSearch guifg=#0f0f0f guibg=#5faf8f gui=bold
      \ ctermfg=22 ctermbg=35 cterm=bold,underline
highlight Search guifg=#000000 guibg=#4f6fff gui=bold
      \ ctermfg=17 ctermbg=27 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#3f5f2f guibg=#cff0df gui=NONE
      \ ctermfg=17 ctermbg=159 cterm=NONE
highlight ModeMsg guifg=#3f2f5f guibg=#cfdff0 gui=NONE
      \ ctermfg=17 ctermbg=147 cterm=NONE
highlight LineNr guifg=#5f4f40 guibg=NONE gui=NONE
      \ ctermfg=137 ctermbg=bg cterm=NONE
highlight CursorLineNr guifg=#5f4f40 guibg=NONE gui=NONE
      \ ctermfg=231 ctermbg=236 cterm=bold
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#8f3f5f guibg=#ffcfcf gui=NONE
      \ ctermfg=124 ctermbg=219 cterm=underline
" Statusline "{{{2
highlight StatusLine guifg=#000000 guibg=#efefff gui=NONE
      \ ctermfg=236 ctermbg=195 cterm=NONE
highlight StatusLineNC guifg=#3f3f2f guibg=#c4b2ab gui=NONE
      \ ctermfg=95 ctermbg=138 cterm=NONE
"}}}2
highlight VertSplit guifg=#afafaf guibg=#cfcfcf gui=bold
      \ ctermfg=239 ctermbg=247 cterm=bold
highlight Title guifg=#ad1422 guibg=bg gui=bold
      \ ctermfg=88 ctermbg=bg cterm=bold
" Visual "{{{2
highlight Visual guifg=#bfbfbf guibg=#2f2f5f gui=NONE
      \ ctermfg=250 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f2f4f gui=underline,bold
      \ ctermfg=15 ctermbg=17 cterm=bold,underline
"}}}2
highlight WarningMsg guifg=#8f0f3f guibg=#ffcfcf gui=NONE
      \ ctermfg=88 ctermbg=177 cterm=underline
highlight WildMenu guifg=#cfcfcf guibg=#1f2f5f gui=NONE
      \ ctermfg=250 ctermbg=17 cterm=NONE
" Fold "{{{2
highlight Folded guifg=#2f2f2f guibg=#dfdfdf gui=NONE
      \ ctermfg=232 ctermbg=250 cterm=NONE
highlight FoldColumn guifg=#1f3f5f guibg=#dfdfdf gui=bold
      \ ctermfg=232 ctermbg=250 cterm=bold

" Diff "{{{2
highlight DiffAdd guifg=#0f0f0f guibg=#8fafcf gui=NONE
      \ ctermfg=NONE ctermbg=153 cterm=NONE
highlight DiffChange guifg=#0f0f0f guibg=#af8fcf gui=NONE
      \ ctermfg=NONE ctermbg=183 cterm=NONE
highlight DiffDelete guifg=#0f0f0f guibg=#cf8faf gui=bold
      \ ctermfg=NONE ctermbg=169 cterm=NONE
highlight DiffText guifg=#3f3f3f guibg=bg gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2
highlight SignColumn guifg=#8f7f3f guibg=bg gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
" Spell "{{{2
highlight SpellBad guifg=#8f0faf guibg=bg gui=NONE
      \ ctermfg=129 ctermbg=NONE cterm=NONE
highlight SpellCap guifg=#3f0faf guibg=bg gui=NONE
      \ ctermfg=27 ctermbg=NONE cterm=NONE
highlight SpellRare guifg=#3f8f5f guibg=bg gui=NONE
      \ ctermfg=35 ctermbg=NONE cterm=NONE
highlight SpellLocal guifg=#4f3f0f guibg=bg gui=NONE
      \ ctermfg=172 ctermbg=NONE cterm=NONE

" Pmenu "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#cfcfcf gui=NONE
      \ ctermfg=234 ctermbg=252 cterm=NONE
highlight PmenuSel guifg=#ededed guibg=#2f3f5f gui=NONE
      \ ctermfg=255 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=#0f0f0f gui=NONE
      \ ctermfg=fg ctermbg=232 cterm=NONE
highlight PmenuThumb guifg=#0f0f0f guibg=#01365f gui=NONE
      \ ctermfg=fg ctermbg=24 cterm=NONE

" Tabline "{{{2
highlight TabLine guifg=#3f3f3f guibg=#cfc0af gui=underline
      \ ctermfg=233 ctermbg=138 cterm=underline
highlight TabLineSel guifg=#0f0f0f guibg=#cfc0bf gui=underline
      \ ctermfg=233 ctermbg=139 cterm=underline
highlight TabLineFill guifg=#415676 guibg=#dfd0bf gui=underline
      \ ctermfg=235 ctermbg=138 cterm=underline

" Tabpanel "{{{2
highlight TabPanel guifg=#3f3f3f guibg=#cfc0af gui=NONE
      \ ctermfg=233 ctermbg=138 cterm=NONE
highlight TabPanelSel guifg=#0f0f0f guibg=#cfc0bf gui=NONE
      \ ctermfg=233 ctermbg=139 cterm=NONE
highlight TabPanelFill guifg=#415676 guibg=#dfd0bf gui=NONE
      \ ctermfg=235 ctermbg=138 cterm=NONE

" Cursor "{{{2
highlight CursorColumn guifg=fg guibg=bg gui=NONE
      \ ctermfg=NONE ctermbg=60 cterm=NONE
highlight CursorLine guifg=NONE guibg=#cfcfdf gui=NONE
      \ ctermfg=NONE ctermbg=147 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
      \ ctermfg=NONE ctermbg=147 cterm=NONE
highlight Cursor guifg=#cfcfcf guibg=#3f3f3f gui=NONE
      \ ctermfg=255 ctermbg=234 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM gui=NONE guifg=#0f0f0f guibg=#af3f5f
      \ ctermfg=255 ctermbg=197 cterm=NONE
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


" #- Syntax highlighting group -# "{{{1
highlight lCursor guifg=#2f2f2f guibg=#7ea3a6 gui=NONE
      \ ctermfg=255 ctermbg=234 cterm=NONE
highlight MatchParen guifg=#0f0f0f guibg=#5f9f5f gui=bold
      \ ctermfg=22 ctermbg=36 cterm=bold,underline
highlight comment guifg=#0f3f7f guibg=bg gui=NONE
      \ ctermfg=19 ctermbg=NONE cterm=NONE
highlight Constant guifg=#0d5f2f guibg=bg gui=NONE
      \ ctermfg=29 ctermbg=NONE cterm=NONE
highlight Special guifg=#0f2f5f guibg=bg gui=NONE
      \ ctermfg=109 ctermbg=NONE cterm=NONE
highlight Identifier guifg=#af1f2f guibg=bg gui=NONE
      \ ctermfg=124 ctermbg=NONE cterm=NONE
highlight Statement guifg=#7f2f3f guibg=bg gui=NONE
      \ ctermfg=88 ctermbg=NONE cterm=NONE
highlight PreProc guifg=#2f3f9f guibg=bg gui=NONE
      \ ctermfg=21 ctermbg=NONE cterm=NONE
highlight type guifg=#1f5f3f guibg=bg gui=NONE
      \ ctermfg=22 ctermbg=NONE cterm=NONE
highlight underlined guifg=#265faf guibg=#ffffcf gui=underline
      \ ctermfg=26 ctermbg=223 cterm=underline
highlight Ignore guifg=#1f5f20 guibg=NONE gui=bold
      \ ctermfg=236 ctermbg=bg cterm=bold
highlight Error guifg=#8f0f2f guibg=bg gui=NONE
      \ ctermfg=196 ctermbg=bg cterm=NONE
highlight Todo guifg=#3268ca guibg=#efefdf gui=bold
      \ ctermfg=32 ctermbg=153 cterm=bold
highlight string guifg=#9f3f5f guibg=bg gui=NONE
      \ ctermfg=131 ctermbg=NONE cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
