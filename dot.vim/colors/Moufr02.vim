" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date
" Guicolorscheme file
" Refer for oeNmP and candycode ...

" #- reset -# "{{{1
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

"#- colorscheme name -#"{{{2
let g:colors_name = expand('<sfile>:t:r')

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#cfcfcf guibg=#00051f gui=NONE
                \ ctermfg=15 ctermbg=232 cterm=NONE
highlight SpecialKey guifg=#2f0fff guibg=bg gui=NONE
                \ ctermfg=15 ctermbg=bg cterm=NONE
highlight NonText guifg=#4ef9c8 guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight Directory guifg=#3f7f8f guibg=bg gui=NONE
                \ ctermfg=23 ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#ff0f5f guibg=bg gui=NONE
                \ ctermfg=196 ctermbg=bg cterm=underline
" search "{{{2
highlight IncSearch guifg=#cfcfcf guibg=#7f0f1f gui=bold
                \ ctermfg=219 ctermbg=88 cterm=bold,underline
highlight Search guifg=#cfcfcf guibg=#0f2faf gui=bold
                \ ctermfg=152 ctermbg=17 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#3f5fff guibg=#00002f gui=NONE
                \ ctermfg=26 ctermbg=bg cterm=underline
highlight ModeMsg guifg=#ff3f5f guibg=#00002f gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=underline
highlight LineNr guifg=#8f5faf guibg=NONE gui=NONE
                \ ctermfg=135 ctermbg=bg cterm=NONE
highlight CursorLineNr guifg=#8f5faf guibg=NONE gui=NONE
                \ ctermfg=197 ctermbg=250 cterm=bold
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#6ab395 guibg=#00002f gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=underline
" statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#050f1f gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
highlight StatusLineNC guifg=#8f5f3f guibg=#c4b2ab gui=NONE
                \ ctermfg=95 ctermbg=180 cterm=NONE
highlight StatusLineTerm guifg=#0f0f3f guibg=#4f8fff gui=NONE
                \ ctermfg=255 ctermbg=232 cterm=NONE
highlight StatusLineTermNC guifg=#8f5f3f guibg=#c4b2ff gui=NONE
                \ ctermfg=95 ctermbg=180 cterm=NONE
"}}}2
highlight VertSplit guifg=#4049d9 guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Title guifg=#72dc95 guibg=#0f000f gui=NONE
                \ ctermfg=77 ctermbg=0 cterm=underline
" visual "{{{2
highlight Visual guifg=#afafaf guibg=#00002f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#0f0f1f guibg=#aaeeee gui=underline,bold
                \ ctermfg=0 ctermbg=123 cterm=bold,underline
"}}}2
highlight WarningMsg guifg=#cf1f5f guibg=bg gui=NONE
                \ ctermfg=196 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#cfcfcf guibg=#0f1f5f gui=NONE
                \ ctermfg=189 ctermbg=17 cterm=NONE
" fold "{{{2
highlight Folded guifg=#0f1fff guibg=#00000f gui=NONE
                \ ctermfg=21 ctermbg=0 cterm=NONE
highlight FoldColumn guifg=#2f3faf guibg=#00000f gui=bold
                \ ctermfg=25 ctermbg=232 cterm=bold

" diff "{{{2
highlight DiffAdd guifg=#0f0f0f guibg=#afffaf gui=NONE
                \ ctermfg=fg ctermbg=28 cterm=NONE
highlight DiffChange guifg=#0f0f0f guibg=#cfbfff gui=NONE
                \ ctermfg=fg ctermbg=130 cterm=NONE
highlight DiffDelete guifg=#0f0f0f guibg=#ffafcf gui=bold
                \ ctermfg=fg ctermbg=52 cterm=NONE
highlight DiffText guifg=#c9cbce guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
highlight SignColumn gui=NONE guibg=bg guifg=#a65774
                \ ctermfg=fg ctermbg=bg cterm=NONE

" spell "{{{2
highlight SpellBad guibg=bg guifg=#795099 gui=NONE
                \ ctermfg=129 ctermbg=bg cterm=NONE
highlight SpellCap guibg=bg guifg=#506399 gui=NONE
                \ ctermfg=57 ctermbg=bg cterm=NONE
highlight SpellRare guibg=bg guifg=#509982 gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight SpellLocal guibg=bg guifg=#998c50 gui=NONE
                \ ctermfg=221 ctermbg=bg cterm=NONE

" pmenu "{{{2
highlight Pmenu guifg=#0f0f0f guibg=#cfc0cf gui=NONE
                \ ctermfg=232 ctermbg=252 cterm=NONE
highlight PmenuSel guifg=#cfc0cf guibg=#0f0f2f gui=NONE
                \ ctermfg=231 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#9c9c9c guibg=#0f0f2f gui=NONE
                \ ctermfg=fg ctermbg=233 cterm=NONE
highlight PmenuThumb guifg=#0f0f0f guibg=#112656 gui=NONE
                \ ctermfg=fg ctermbg=238 cterm=NONE
"}}}
" tabline "{{{2
highlight TabLine guifg=#0f1fff guibg=#00050f gui=underline
                \ ctermfg=20 ctermbg=232 cterm=underline
highlight TabLineSel  guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                \ ctermfg=253 ctermbg=25 cterm=NONE
highlight TabLineFill guifg=#0f1fff guibg=#00050f gui=underline
                \ ctermfg=18 ctermbg=232 cterm=underline

" tabpanel "{{{2
highlight TabPanel guifg=#0f1fff guibg=#00050f gui=NONE
                \ ctermfg=20 ctermbg=232 cterm=NONE
highlight TabPanelSel  guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                \ ctermfg=253 ctermbg=25 cterm=NONE
highlight TabPanelFill guifg=#0f1fff guibg=#00050f gui=NONE
                \ ctermfg=18 ctermbg=232 cterm=NONE

" cursor "{{{2
highlight CursorColumn guifg=NONE guibg=#00000f gui=NONE
                \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight CursorLine guifg=NONE guibg=#000f2f gui=NONE
                \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight ColorColumn guifg=NONE guibg=#00001f gui=NONE
                \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight Cursor guifg=#0f0f0f guibg=#cfbfff gui=NONE
                \ ctermfg=fg ctermbg=255 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#0f0f0f guibg=#8f1f3f gui=NONE
                \ ctermfg=fg ctermbg=197 cterm=NONE
endif


" terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=fg guibg=bg gui=NONE
  " Terminal color
  let g:terminal_ansi_colors = [
    \ "#0c0c0c", "#850f1f", "#13710e", "#819c00",
    \ "#00378a", "#881798", "#3a96dd", "#8f8f8f",
    \ "#767676", "#872836", "#16960c", "#6a7f84",
    \ "#3b789f", "#94005e", "#61d6d6", "#989898"
    \ ]
endif



" toolbar "{{{2
highlight ToolbarButton guifg=#3f1f8f guibg=#afafff gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ToolbarLine guifg=#5f0f0f guibg=#df3fcf gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE




" #- syntax highlighting group -# "{{{1
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
                \ ctermfg=fg ctermbg=255 cterm=NONE
highlight MatchParen guifg=#000000 guibg=#2f3faf gui=bold
                \ ctermfg=232 ctermbg=33 cterm=bold,underline
highlight comment guifg=#2f5fef guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Constant guifg=#af1f8f guibg=bg gui=NONE
                \ ctermfg=201 ctermbg=bg cterm=NONE
highlight Special guifg=#ffdfcf guibg=bg gui=NONE
                \ ctermfg=225 ctermbg=bg cterm=NONE
highlight Identifier guifg=#2faf7f guibg=bg gui=NONE
                \ ctermfg=41 ctermbg=bg cterm=NONE
highlight Statement guifg=#0f2fff guibg=bg gui=NONE
                \ ctermfg=21 ctermbg=bg cterm=NONE
highlight PreProc guifg=#af3faf guibg=bg gui=NONE
                \ ctermfg=165 ctermbg=bg cterm=NONE
highlight type guifg=#2fc98f guibg=bg gui=NONE
                \ ctermfg=42 ctermbg=bg cterm=NONE
highlight underlined guifg=#2f3faf guibg=bg gui=underline,bold
                \ ctermfg=12 ctermbg=bg cterm=bold,underline
highlight Ignore guifg=#0f1faf guibg=bg gui=NONE
                \ ctermfg=21 ctermbg=bg cterm=bold
highlight Error guifg=#af1f5f guibg=bg gui=NONE
                \ ctermfg=9 ctermbg=bg cterm=NONE
highlight Todo guifg=#9f0f3f guibg=#0f0f0f gui=bold
                \ ctermfg=12 ctermbg=233 cterm=bold,underline
highlight string guifg=#af0f3f guibg=bg gui=NONE
                \ ctermfg=161 ctermbg=bg cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim

