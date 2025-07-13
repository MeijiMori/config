" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}"
" highlighting ZenkakuSpace /　/
" Gui colorscheme file
" My standard colorscheme file

" #- reset -# "{{{1
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- Colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#fdfdfd guibg=#10101f gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
highlight SpecialKey guifg=#585fff guibg=bg gui=NONE
                \ ctermfg=93 ctermbg=NONE cterm=NONE
highlight NonText guifg=#6f79ff guibg=bg gui=NONE
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#2f5fe0 guibg=bg gui=bold
                \ ctermfg=125 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#4f1f1f guibg=#cf4f7f gui=underline
                \ ctermfg=160 ctermbg=134 cterm=NONE
" search "{{{2
highlight IncSearch guifg=#3f2f5f guibg=#af7fcf gui=bold,underline
                \ ctermfg=20 ctermbg=32 cterm=NONE
highlight Search guifg=#0f2f5f guibg=#5f7faf gui=bold,underline
                \ ctermfg=34 ctermbg=115 cterm=NONE
"}}}2
highlight MoreMsg guifg=#0f5f2f guibg=#5faf7f gui=underline
                \ ctermfg=2 ctermbg=49 cterm=NONE
highlight ModeMsg guifg=#5f5f5f guibg=#bfbfbf gui=underline
                \ ctermfg=242 ctermbg=252 cterm=underline
highlight LineNr guifg=#cfbfb0 guibg=NONE gui=NONE
                \ ctermfg=187 ctermbg=NONE cterm=NONE
highlight CursorLineNr guifg=#3f3fcf guibg=#00001f gui=bold
                \ ctermfg=93 ctermbg=16 cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#0f2f5f guibg=#2f5f8f gui=underline
                \ ctermfg=85 ctermbg=bg cterm=NONE
" statusline "{{{2
highlight StatusLine guifg=#cfcfcf guibg=#00051f gui=NONE
                \ ctermfg=15 ctermbg=16 cterm=NONE
highlight StatusLineNC guifg=#565234 guibg=#c0afcf gui=NONE
                \ ctermfg=96 ctermbg=183 cterm=NONE
"}}}2
highlight VertSplit guifg=#aaaaaa guibg=#1f1f2f gui=bold
                \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#1faf5f guibg=NONE gui=bold,underline
                \ ctermfg=35 ctermbg=NONE cterm=bold,underline
" visual "{{{2
" highlight Visual guifg=#cfcfcf guibg=#202a4f gui=NONE
"               \ cterm=NONE ctermfg=10 ctermbg=9
highlight Visual guifg=#cfcfcf guibg=#101a3f gui=NONE
                \ ctermfg=252 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#1f2f4f gui=underline,bold
                \ ctermfg=15 ctermbg=33 cterm=bold
"}}}2
highlight WarningMsg guifg=#5f2f0f guibg=#ff7f6f gui=underline
                \ ctermfg=2 ctermbg=bg cterm=NONE
" highlight WildMenu guifg=#2f5f85 guibg=#cfcfcf gui=bold
"               \ ctermfg=1 ctermbg=10 cterm=NONE
highlight WildMenu guifg=#5f5f3f guibg=#cfcfdf gui=NONE
                \ ctermfg=241 ctermbg=252 cterm=NONE
" fold "{{{2
highlight Folded guifg=#aaaaaa guibg=#000015 gui=NONE
                \ ctermfg=252 ctermbg=016 cterm=NONE
highlight FoldColumn guifg=#3f30cf guibg=#000010 gui=bold
                \ ctermfg=27 ctermbg=16 cterm=bold


" diff "{{{2
highlight DiffAdd guifg=fg guibg=#2f8f5f gui=NONE
                \ ctermfg=fg ctermbg=2 cterm=NONE
highlight DiffChange guifg=fg guibg=#af6f2f gui=NONE
                \ ctermfg=fg ctermbg=209 cterm=NONE
highlight DiffDelete guifg=fg guibg=#af2f4f gui=NONE
                \ ctermfg=fg ctermbg=9 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2
highlight SignColumn guifg=#ffffb0 guibg=bg gui=NONE
                \ ctermfg=180 ctermbg=bg cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#cf5faf guibg=bg gui=NONE
                \ ctermfg=168 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#af5fcf guibg=bg gui=NONE
                \ ctermfg=99 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#5fcfaf guibg=bg gui=NONE
                \ ctermfg=85 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#cfaf5f guibg=bg gui=NONE
                \ ctermfg=222 ctermbg=bg cterm=NONE


" pmenu "{{{2
highlight Pmenu guifg=#cfcfcf guibg=#151a1f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                \ ctermfg=fg ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#cccccc guibg=#1f1f2f gui=NONE
                \ ctermfg=fg ctermbg=235 cterm=NONE
highlight PmenuThumb guifg=#aaaaaa guibg=#6f2f3f gui=NONE
                \ ctermfg=fg ctermbg=125 cterm=NONE


" tabline "{{{2
highlight TabLine guifg=#afafaf guibg=#0f0f0f gui=underline
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight TabLineSel guifg=#cfcfcf guibg=#0f0f1f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=underline
highlight TabLineFill guifg=#af5faf guibg=#0f0f0f gui=NONE
                \ ctermfg=128 ctermbg=0 cterm=NONE
" tabpanel "{{{2
highlight TabPanel guifg=#cfcfcf guibg=#0f0f0f gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight TabPanelFill guifg=#0f0fff guibg=#100f1f gui=NONE
                \ ctermfg=128 ctermbg=0 cterm=NONE
highlight TabPanelSel guifg=#cfcfcf guibg=#0f3f8f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=underline


" cursor "{{{2
highlight CursorColumn guifg=NONE guibg=#cfcfff gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
" highlight CursorLine gui=NONE guifg=NONE guibg=#10355f
highlight CursorLine guifg=NONE guibg=#00051f gui=NONE
                \ ctermfg=NONE ctermbg=16 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight Conceal guifg=NONE guibg=#20355f gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight Cursor guifg=#000000 guibg=#b0b0cf gui=NONE
                \ ctermfg=NONE ctermbg=250 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#2f0f0f guibg=#af2f5f gui=NONE
                \ ctermfg=NONE ctermbg=197 cterm=NONE
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
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
                \ ctermfg=10 ctermbg=0 cterm=NONE
highlight MatchParen guifg=#afafaf guibg=#10101f gui=bold,underline
                \ ctermfg=8 ctermbg=7 cterm=bold,underline
" highlight comment guifg=#4f79ff guibg=bg gui=NONE
highlight comment guifg=#1f5fef guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
" highlight Constant guifg=#7dd97b guibg=bg gui=NONE
highlight Constant guifg=#2fcf7f guibg=bg gui=NONE
                \ ctermfg=48 ctermbg=bg cterm=NONE
highlight Special guifg=#aeffed guibg=bg gui=NONE
                \ ctermfg=6 ctermbg=bg cterm=NONE
" highlight Identifier guifg=#ccb0d7 guibg=bg gui=NONE
highlight Identifier guifg=#cf3fff guibg=bg gui=NONE
                \ ctermfg=201 ctermbg=bg cterm=NONE
" highlight Statement guifg=#94de92 guibg=bg gui=NONE
highlight Statement guifg=#2fcf6f guibg=bg gui=NONE
                \ ctermfg=49 ctermbg=bg cterm=NONE
" highlight PreProc guifg=#b871b7 guibg=bg gui=NONE
highlight PreProc guifg=#cf5fcf guibg=bg gui=NONE
                \ ctermfg=201 ctermbg=bg cterm=NONE
" highlight type guifg=#7fc9af guibg=bg gui=NONE
highlight type guifg=#0faf7f guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight Ignore guifg=#1f8f5f guibg=bg gui=bold
                \ ctermfg=13 ctermbg=bg cterm=NONE
highlight underlined guifg=#568cff guibg=bg gui=underline
                \ ctermfg=27 ctermbg=bg cterm=underline
highlight Error guifg=#f04f7e guibg=bg gui=NONE
                \ ctermfg=197 ctermbg=bg cterm=NONE
highlight Todo guifg=#7f7f7f guibg=#cfcfff gui=bold,underline
                \ ctermfg=48 ctermbg=16 cterm=bold,underline
highlight string guifg=#ffc8e6 guibg=bg gui=NONE
                \ ctermfg=213 ctermbg=bg cterm=NONE

" #- hl-User -# "{{{1
highlight User1 guifg=#3f3f3f guibg=#cfcfff gui=NONE
                \ ctermfg=246 ctermbg=252 cterm=NONE
highlight User2 guifg=#5f5f5f guibg=#afafff gui=NONE
                \ ctermfg=240 ctermbg=250 cterm=NONE
highlight User3 guifg=#afafff guibg=#2f2f3f gui=NONE
                \ ctermfg=255 ctermbg=239 cterm=NONE
highlight User4 guifg=#5f2f5f guibg=#cfafff gui=NONE
                \ ctermfg=134 ctermbg=182 cterm=NONE
highlight User5 guifg=#2f5f5f guibg=#afcfff gui=NONE
                \ ctermfg=69 ctermbg=117 cterm=NONE
highlight User6 guifg=#2f2f5f guibg=#5f5faf gui=NONE
                \ ctermfg=17 ctermbg=69 cterm=NONE
highlight User7 guifg=#5f2f2f guibg=#af5f5f gui=NONE
                \ ctermfg=17 ctermbg=5 cterm=NONE
highlight User8 guifg=#2f5f2f guibg=#5faf5f gui=NONE
                \ ctermfg=22 ctermbg=43 cterm=NONE
highlight User9 guifg=#5f5f2f guibg=#afaf5f gui=NONE
                \ ctermfg=0 ctermbg=215 cterm=NONE



" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


