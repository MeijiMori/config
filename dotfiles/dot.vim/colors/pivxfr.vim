" #- Vim colorscheme file -# "{{{1
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

" #- colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cccccc guibg=#101010 gui=NONE
          \ ctermfg=15 ctermbg=232 cterm=NONE
highlight SpecialKey guifg=#af7ecf guibg=bg gui=NONE
          \ ctermfg=135 ctermbg=bg cterm=NONE
highlight NonText guifg=#5f3fcf guibg=#101020 gui=NONE
          \ ctermfg=57 ctermbg=0 cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#3fafff guibg=bg gui=bold
          \ ctermfg=39 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#ff4f8f guibg=bg gui=NONE
          \ ctermfg=204 ctermbg=bg cterm=NONE
" search "{{{2
highlight IncSearch guifg=#cfcfcf guibg=#2f0f2f gui=bold
          \ ctermfg=225 ctermbg=89 cterm=bold,underline
highlight Search guifg=#cfcfcf guibg=#0a0f2f gui=bold
          \ ctermfg=225 ctermbg=16 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#afafaf guibg=bg gui=underline
          \ ctermfg=250 ctermbg=233 cterm=underline
highlight ModeMsg guifg=#2f3fff guibg=bg gui=underline
          \ ctermfg=26 ctermbg=233 cterm=underline
highlight LineNr guifg=#2f5fff guibg=NONE gui=NONE
          \ ctermfg=27 ctermbg=bg cterm=NONE
highlight CursorLineNr guifg=#2f5fff guibg=NONE gui=NONE
          \ ctermfg=35 ctermbg=0 cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#2f8f5f guibg=bg gui=underline
          \ ctermfg=28 ctermbg=bg cterm=underline
" statusline "{{{2
highlight StatusLine guifg=#e0f0e0 guibg=#080f1f gui=NONE
          \ ctermfg=15 ctermbg=0 cterm=NONE
highlight StatusLineNC guifg=#000000 guibg=#bfbfbf gui=NONE
          \ ctermfg=233 ctermbg=251 cterm=NONE
"}}}2
highlight VertSplit guifg=#9f9f9f guibg=#02020f gui=NONE
          \ ctermfg=239 ctermbg=232 cterm=NONE
highlight Title guifg=#5fcf6f guibg=NONE gui=underline
          \ ctermfg=47 ctermbg=233 cterm=underline
" visual "{{{2
highlight Visual guifg=#cfcfcf guibg=#101f4f gui=NONE
          \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guibg=#aaeeee guifg=#3d3d3d gui=bold,underline
          \ ctermfg=235 ctermbg=159 cterm=bold,underline
"}}}2
highlight WarningMsg guifg=#ff4f8f guibg=bg gui=NONE
          \ ctermfg=9 ctermbg=0 cterm=NONE
highlight WildMenu guifg=#afafaf guibg=#0f1f3f gui=NONE
          \ ctermfg=7 ctermbg=18 cterm=NONE
" fold "{{{2
highlight Folded guifg=#9f9faf guibg=#0f1010 gui=NONE
          \ ctermfg=7 ctermbg=232 cterm=NONE
highlight FoldColumn guifg=#2f1faf guibg=#0f1010 gui=bold
          \ ctermfg=21 ctermbg=232 cterm=bold

" diff "{{{2
highlight DiffAdd guifg=fg guibg=#0f6f3f gui=NONE
          \ ctermfg=NONE ctermbg=77 cterm=NONE
highlight DiffChange guifg=fg guibg=#7f7f0f gui=NONE
          \ ctermfg=NONE ctermbg=186 cterm=NONE
highlight DiffDelete guifg=fg guibg=#5f0f1f gui=NONE
          \ ctermfg=NONE ctermbg=206 cterm=NONE
highlight DiffText guifg=#cfcfcf guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
"}}}2
highlight SignColumn guifg=#f65774 guibg=bg gui=NONE
          \ ctermfg=197 ctermbg=bg cterm=NONE
highlight Conceal guifg=#f65774 guibg=bg gui=NONE
          \ ctermfg=197 ctermbg=177 cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#af5fcf guibg=bg gui=NONE
          \ ctermfg=171 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#5f9fcf guibg=bg gui=NONE
          \ ctermfg=12 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#5fcfbf guibg=bg gui=NONE
          \ ctermfg=49 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#cfbf5f guibg=bg gui=NONE
          \ ctermfg=226 ctermbg=bg cterm=NONE

" pmenu "{{{2
highlight Pmenu guifg=#202020 guibg=#c0c0df gui=NONE
          \ ctermfg=232 ctermbg=254 cterm=NONE
highlight PmenuSel guifg=#cccccc guibg=#1f2f6f gui=NONE
          \ ctermfg=250 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#7f7f7f guibg=#2f2f2f gui=NONE
          \ ctermfg=fg ctermbg=234 cterm=NONE
highlight PmenuThumb guifg=#000000 guibg=#8f3f5f gui=NONE
          \ ctermfg=fg ctermbg=89 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#555555 guibg=#bbbbbb gui=NONE
          \ ctermfg=235 ctermbg=246 cterm=NONE
highlight TabLineSel guifg=#000000 guibg=#cccccc gui=NONE
          \ ctermfg=232 ctermbg=250 cterm=NONE
highlight TabLineFill guifg=#3f0f8f guibg=#bfbfbf gui=NONE
          \ ctermfg=56 ctermbg=247 cterm=NONE

" tabpanel "{{{2
highlight TabPanel guifg=#555555 guibg=#bbbbbb gui=NONE
          \ ctermfg=235 ctermbg=246 cterm=NONE
highlight TabPanelSel guifg=#000000 guibg=#cccccc gui=NONE
          \ ctermfg=232 ctermbg=250 cterm=NONE
highlight TabPanelFill guifg=#3f0f8f guibg=#bfbfbf gui=NONE
          \ ctermfg=56 ctermbg=247 cterm=NONE

" cursor "{{{2
highlight CursorColumn guifg=NONE guibg=#20355f gui=NONE
          \ ctermfg=252 ctermbg=18 cterm=NONE
highlight CursorLine guifg=NONE guibg=#1f254f gui=NONE
          \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
          \ ctermfg=NONE ctermbg=18 cterm=NONE
highlight Cursor guifg=#000000 guibg=#9f9f9f gui=NONE
          \ ctermfg=233 ctermbg=243 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime')
  highlight CursorIM guifg=#000000 guibg=#8f0f2f gui=NONE
          \ ctermfg=233 ctermbg=160 cterm=NONE
endif

"}}}2
" terminal: "{{{2
if has('terminal')
  " terminal "{{{3
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


" #- syntax highlighting group -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
          \ ctermfg=57 ctermbg=0 cterm=NONE
highlight MatchParen guifg=#000000 guibg=#2f3faf gui=bold
          \ ctermfg=17 ctermbg=25 cterm=bold,underline
highlight comment guifg=#3f3fcf guibg=bg gui=NONE
          \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Constant guifg=#ff8f1b guibg=bg gui=NONE
          \ ctermfg=202 ctermbg=bg cterm=NONE
highlight Special guifg=#deffed guibg=bg gui=NONE
          \ ctermfg=195 ctermbg=bg cterm=NONE
highlight Identifier guifg=#cf0f2f guibg=bg gui=NONE
          \ ctermfg=196 ctermbg=bg cterm=NONE
highlight Statement guifg=#3faf5f guibg=bg gui=NONE
          \ ctermfg=35 ctermbg=bg cterm=NONE
highlight PreProc guifg=#ff3f2b guibg=bg gui=NONE
          \ ctermfg=9 ctermbg=bg cterm=NONE
highlight type guifg=#3fa9af guibg=bg gui=NONE
          \ ctermfg=43 ctermbg=bg cterm=NONE
highlight underlined guifg=#3f9fcf guibg=bg gui=underline
          \ ctermfg=33 ctermbg=bg cterm=underline
highlight Ignore guifg=#8f8f8f guibg=bg gui=bold
          \ ctermfg=241 ctermbg=bg cterm=bold
highlight Error guifg=#ff4f7e guibg=bg gui=NONE
          \ ctermfg=197 ctermbg=bg cterm=NONE
highlight Todo guifg=#5f5f5f guibg=#2f2f2f gui=bold,underline
          \ ctermfg=239 ctermbg=235 cterm=bold,underline
highlight string guifg=#4f7faf guibg=bg gui=NONE
          \ ctermfg=25 ctermbg=bg cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
