" #- vim colorscheme file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file
" This colorscheme is improved default colorscheme and default sakura editor color

" #- vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif


" #- color scheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')


" #- highlighting groups for various occasions "{{{1
highlight Normal guifg=#0f0f0f guibg=#ffffef gui=NONE
                \ ctermfg=233 ctermbg=230 cterm=NONE
highlight SpecialKey guifg=#1f915f guibg=bg gui=NONE
                \ ctermfg=28 ctermbg=bg cterm=NONE
highlight NonText guifg=#2b3b76 guibg=#ffffff gui=NONE
                \ ctermfg=25 ctermbg=bg cterm=NONE
highlight EndOfBuffer guifg=#2b3ba6 guibg=#fffcff gui=NONE
                \ ctermfg=25 ctermbg=bg cterm=NONE
highlight Directory guifg=#2b609b guibg=bg gui=bold
                \ ctermfg=17 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#af1f5f guibg=#e8dfcb gui=underline
                \ ctermfg=124 ctermbg=138 cterm=underline
" search "{{{2
highlight IncSearch guifg=#3f2f4f guibg=#af8fff gui=bold,underline
                \ ctermfg=17 ctermbg=93 cterm=bold,underline
highlight Search guifg=#2f2f5f guibg=#8fafff gui=bold,underline
                \ ctermfg=17 ctermbg=69 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#66765a guibg=#e8dfcb gui=underline
                \ ctermfg=23 ctermbg=181 cterm=underline
highlight ModeMsg guifg=#4a4741 guibg=#e8dfcb gui=underline
                \ ctermfg=17 ctermbg=181 cterm=underline
highlight LineNr guifg=#cfcfcf guifg=#b57720 gui=NONE
                \ ctermfg=208 ctermbg=NONE cterm=NONE
highlight CursorLineNr guifg=#cfcf8f guifg=NONE gui=NONE
                \ ctermfg=208 ctermbg=NONE cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#345749 guibg=bg gui=underline
                \ ctermfg=22 ctermbg=bg cterm=underline
" statusline "{{{2
highlight StatusLine guifg=#ffffff guibg=#10202f gui=NONE
                \ ctermfg=250 ctermbg=234 cterm=NONE
highlight StatusLineNC guifg=#7b8b85 guibg=#0f1f2f gui=NONE
                \ ctermfg=243 ctermbg=234 cterm=NONE
" for term "{{{3
highlight StatusLineTerm guifg=#ffffff guibg=#1f2f5f gui=NONE
                \ ctermfg=250 ctermbg=234 cterm=NONE
highlight StatusLineTermNC guifg=#7b8b85 guibg=#0f1f5f gui=NONE
                \ ctermfg=243 ctermbg=234 cterm=NONE
"}}}2
highlight VertSplit guifg=fg guibg=#0f1f2f gui=NONE
                \ ctermfg=0 ctermbg=232 cterm=NONE
highlight Title guifg=#177479 guibg=#cfffff gui=bold
                \ ctermfg=23 ctermbg=81 cterm=bold,underline
" visual "{{{2
highlight Visual guifg=#cfcfcf guibg=#2c325f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#2f3f5f gui=underline,bold
                \ ctermfg=15 ctermbg=17 cterm=bold,underline
"}}}
highlight WarningMsg guifg=#af2f5f guibg=#e8dfcb gui=underline
                \ ctermfg=160 ctermbg=245 cterm=underline
highlight WildMenu guifg=#001f5f guibg=#efefff gui=underline
                \ ctermfg=17 ctermbg=189 cterm=underline
" fold "{{{2
highlight Folded guifg=#001f5f guibg=#bfcfdf gui=NONE
                \ ctermfg=17 ctermbg=69 cterm=NONE
highlight FoldColumn guifg=#1c417c guibg=bg gui=bold
                \ ctermfg=17 ctermbg=230 cterm=bold

" diff "{{{2
highlight DiffAdd guifg=fg guibg=#afffcf gui=NONE
                \ ctermfg=NONE ctermbg=42 cterm=NONE
highlight DiffChange guifg=fg guibg=#ffaf5f gui=NONE
                \ ctermfg=NONE ctermbg=208 cterm=NONE
highlight DiffDelete guifg=fg guibg=#cf4f9f gui=NONE
                \ ctermfg=NONE ctermbg=197 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=NONE cterm=NONE
"}}}2
highlight SignColumn guifg=#a65774 guibg=bg gui=NONE
                \ ctermfg=0 ctermbg=bg cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#795099 guibg=bg gui=NONE
                \ ctermfg=160 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#506399 guibg=bg gui=NONE
                \ ctermfg=21 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#509982 guibg=bg gui=NONE
                \ ctermfg=41 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#998c50 guibg=bg gui=NONE
                \ ctermfg=3 ctermbg=bg cterm=NONE

" pmenu "{{{2
highlight Pmenu guifg=#10102f guibg=#dbdbf3 gui=NONE
                \ ctermfg=0 ctermbg=153 cterm=NONE
highlight PmenuSel guifg=#bfbfbf guibg=#0f2f5f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#cccccc guibg=#3a3b3c gui=NONE
                \ ctermfg=fg ctermbg=235 cterm=NONE
highlight PmenuThumb guifg=#0f0f0f guibg=#21365f gui=NONE
                \ ctermfg=fg ctermbg=18 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#5f5f5f guibg=#cfcfdf gui=underline
                \ ctermfg=0 ctermbg=189 cterm=underline
highlight TabLineSel guifg=#00001f guibg=#efefff gui=underline
                \ ctermfg=0 ctermbg=121 cterm=underline
highlight TabLineFill guifg=#5f2f3f guibg=#cfcfcf gui=underline
                \ ctermfg=237 ctermbg=147 cterm=underline
" tabpanel "{{{2
highlight TabPanel guifg=#5f5f5f guibg=#cfcfdf gui=NONE
                \ ctermfg=0 ctermbg=189 cterm=underline
highlight TabPanelSel guifg=#00001f guibg=#efefff gui=NONE
                \ ctermfg=0 ctermbg=121 cterm=underline
highlight TabPanelFill guifg=#5f2f3f guibg=#cfcfcf gui=NONE
                \ ctermfg=237 ctermbg=147 cterm=underline

" cursor "{{{2
highlight ColorColumn guibg=#cfcfff gui=NONE guifg=NONE
                \ ctermfg=NONE ctermbg=219 cterm=NONE
highlight CursorLine guifg=NONE guibg=#ffdfff gui=NONE
                \ ctermfg=NONE ctermbg=219 cterm=NONE
highlight CursorColumn guifg=NONE guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=219 cterm=NONE
highlight Cursor guifg=#000000 guibg=#2f8f8f gui=NONE
                \ ctermfg=0 ctermbg=29 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#7f0f2f gui=NONE
                \ ctermfg=0 ctermbg=88 cterm=NONE
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



" #- syntax highlighting groups -# "{{{1
highlight lCursor guifg=#575757 guibg=#000000 gui=NONE
                \ ctermfg=0 ctermbg=29 cterm=NONE
highlight MatchParen guifg=#4f2f5f guibg=#e2bffc gui=bold,underline
                \ ctermfg=236 ctermbg=105 cterm=bold,underline
highlight comment guifg=#1f3fbf guibg=NONE gui=NONE
                \ ctermfg=21 ctermbg=bg cterm=NONE
highlight Constant guifg=#0f2fcf guibg=bg gui=NONE
                \ ctermfg=17 ctermbg=bg cterm=NONE
highlight Special guifg=#305fc7 guibg=bg gui=NONE
                \ ctermfg=18 ctermbg=bg cterm=NONE
highlight Identifier guifg=#1faf0f guibg=bg gui=NONE
                \ ctermfg=29 ctermbg=bg cterm=NONE
highlight Statement guifg=#3f5fcf guibg=bg gui=NONE
                \ ctermfg=17 ctermbg=bg cterm=NONE
highlight PreProc guifg=#cf2f9f guibg=bg gui=NONE
                \ ctermfg=54 ctermbg=bg cterm=NONE
highlight type guifg=#0faf3f guibg=bg gui=NONE
                \ ctermfg=22 ctermbg=bg cterm=NONE
highlight underlined guifg=#399620 guibg=#f4f8c9 gui=underline
                \ ctermfg=29 ctermbg=115 cterm=underline
highlight Ignore guifg=#105f20 guibg=bg gui=bold
                \ ctermfg=23 ctermbg=bg cterm=bold
highlight Error guifg=#af2f5f guibg=bg gui=NONE
                \ ctermfg=52 ctermbg=bg cterm=NONE
highlight Todo guifg=#4e5ca0 guibg=#cfcfdf gui=bold,underline
                \ ctermfg=21 ctermbg=159 cterm=bold,underline
highlight string guifg=#7f1f2f guibg=bg gui=NONE
                \ ctermfg=88 ctermbg=bg cterm=NONE


" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


