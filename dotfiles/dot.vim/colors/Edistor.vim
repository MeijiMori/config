" #- vim colorscheme file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[<(*)>]}
" highlighting ZenkakuSpace /　/
" Guicolorscheme file

" #- color scheme reset -# "{{{1
set background=light
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme theme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- highligt groups for various occasions -# "{{{1
highlight Normal guifg=#000000 guibg=#fbf5fb gui=NONE
                \ ctermfg=232 ctermbg=231 cterm=NONE
highlight SpecialKey guifg=#0f8f8f guibg=bg gui=NONE
                \ ctermfg=36 ctermbg=bg cterm=NONE
highlight NonText guifg=#6d29ea guibg=#ffffff gui=bold
                \ ctermfg=25 ctermbg=255 cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#1e64ae guibg=bg gui=bold
                \ ctermfg=17 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#5f2f0f guibg=#ffaf8f gui=underline
                \ ctermfg=94 ctermbg=209 cterm=underline
" search "{{{2
highlight IncSearch guifg=#000000 guibg=#bf7fff gui=bold
                \ ctermfg=53 ctermbg=129 cterm=bold,underline
highlight Search guifg=#000000 guibg=#3373ff gui=bold
                \ ctermfg=17 ctermbg=27 cterm=bold,underline
" }}}2
highlight MoreMsg guifg=#1f2f5f guibg=#7f7fff gui=underline
                \ ctermfg=17 ctermbg=27 cterm=underline
highlight ModeMsg guifg=#5f2f3f guibg=#ff7f7f gui=underline
                \ ctermfg=52 ctermbg=9 cterm=underline
highlight LineNr guifg=#9e7105 guibg=NONE gui=NONE
                \ ctermfg=130 ctermbg=NONE cterm=NONE
highlight CursorLineNr guifg=#9e7105 guibg=NONE gui=NONE
                \ ctermfg=178 ctermbg=183 cterm=bold
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#0f7f3f guibg=#7fcf7f gui=underline
                \ ctermfg=22 ctermbg=41 cterm=underline
" statusline "{{{2
highlight StatusLine guifg=#fdfdfd guibg=#1f293c gui=NONE
                \ ctermfg=255 ctermbg=233 cterm=NONE
highlight StatusLineNC guifg=#606080 guibg=#c8c8d8 gui=NONE
                \ ctermfg=243 ctermbg=255 cterm=NONE
highlight StatusLineTerm guifg=#1f293c guibg=#f8e0ff gui=NONE
                \ ctermfg=255 ctermbg=233 cterm=NONE
highlight StatusLineTermNC guifg=#606080 guibg=#c8c8d8 gui=NONE
                \ ctermfg=243 ctermbg=255 cterm=NONE
" }}}2
highlight VertSplit guifg=#44aaff guibg=#3a3b3c gui=NONE
                \ ctermfg=33 ctermbg=232 cterm=NONE
highlight Title guifg=#b568a9 guibg=bg gui=underline
                \ ctermfg=161 ctermbg=bg cterm=underline
" visual "{{{2
highlight Visual guifg=#ffffff guibg=#0f3f6f gui=NONE
                \ ctermfg=8 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#2f2f2f guibg=#8f8fff gui=underline,bold
                \ ctermfg=234 ctermbg=24 cterm=bold,underline
" }}}2
highlight WarningMsg guifg=#db7bda guibg=#fbe0ff gui=NONE
                \ ctermfg=206 ctermbg=225 cterm=NONE
highlight WildMenu guifg=#1f2f5f guibg=#dfdfff gui=underline
                \ ctermfg=17 ctermbg=123 cterm=underline
" fold "{{{2
highlight Folded guifg=#0b1958 guibg=#b3bce1 gui=NONE
                \ ctermfg=17 ctermbg=63 cterm=NONE
highlight FoldColumn guifg=#3150a6 guibg=#ffedfa gui=bold
                \ ctermfg=17 ctermbg=225 cterm=bold

" diff "{{{2
highlight DiffAdd guifg=fg guibg=#afffaf gui=NONE
                \ ctermfg=fg ctermbg=42 cterm=NONE
highlight DiffChange guifg=fg guibg=#ffffaf gui=NONE
                \ ctermfg=fg ctermbg=228 cterm=NONE
highlight DiffDelete guifg=fg guibg=#ffafaf gui=NONE
                \ ctermfg=fg ctermbg=213 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2
highlight SignColumn gui=NONE guifg=#a65774  guibg=bg
                \ ctermfg=NONE ctermbg=NONE cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#795099 guibg=bg gui=NONE
                \ ctermfg=129 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#506399 guibg=bg gui=NONE
                \ ctermfg=21 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#509982 guibg=bg gui=NONE
                \ ctermfg=35 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#998c50 guibg=bg gui=NONE
                \ ctermfg=142 ctermbg=bg cterm=NONE

" pmenu "{{{2
highlight Pmenu guifg=#dedede guibg=#0f1f30 gui=NONE
                \ ctermfg=253 ctermbg=232 cterm=NONE
highlight PmenuSel guifg=#eeeeee guibg=#2f3f7f gui=NONE
                \ ctermfg=15 ctermbg=17 cterm=NONE
highlight PmenuSbar guifg=#aaaaaa guibg=#5f6f8f gui=NONE
                \ ctermfg=fg ctermbg=26 cterm=NONE
highlight PmenuThumb guifg=#3d3f3d guibg=#000000 gui=NONE
                \ ctermfg=fg ctermbg=233 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#9d887c guibg=#3a3b3c gui=NONE
                \ ctermfg=245 ctermbg=236 cterm=NONE
highlight TabLineSel guifg=#f0f0f0 guibg=#2f3f6f gui=NONE
                \ ctermfg=231 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#564234 guibg=#3a3b3c gui=underline,bold
                \ ctermfg=95 ctermbg=233 cterm=bold,underline

" tabline "{{{2
highlight TabPanel guifg=#9d887c guibg=#3a3b3c gui=NONE
                \ ctermfg=245 ctermbg=236 cterm=NONE
highlight TabPanelSel guifg=#f0f0f0 guibg=#2f3f6f gui=NONE
                \ ctermfg=231 ctermbg=17 cterm=NONE
highlight TabPanelFill guifg=#564234 guibg=#3a3b3c gui=NONE
                \ ctermfg=95 ctermbg=233 cterm=NONE

" cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
                \ ctermfg=NONE ctermbg=105 cterm=NONE
highlight CursorLine guifg=NONE guibg=#d6efff gui=NONE
                \ ctermfg=NONE ctermbg=121 cterm=NONE
highlight CursorColumn guifg=NONE guibg=bg gui=NONE
                \ ctermfg=NONE ctermbg=121 cterm=NONE
highlight Cursor guifg=#000000 guibg=#2f5fff gui=NONE
                \ ctermfg=16 ctermbg=18 cterm=NONE
" Cursor color for IME status "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#8f1f3f gui=NONE
                \ ctermfg=16 ctermbg=125 cterm=NONE
endif
"}}}2
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




" #- Syntax highighting group -# "{{{1
highlight lCursor guifg=#000000 guibg=#fafbfb gui=NONE
                \ ctermfg=232 ctermbg=231 cterm=NONE
highlight MatchParen guifg=#0f0f0f guibg=#cfc30d gui=bold
                \ ctermfg=94 ctermbg=136 cterm=bold,underline
highlight comment guifg=#289b32 guibg=bg gui=NONE
                \ ctermfg=22 ctermbg=bg cterm=NONE
highlight Constant guifg=#ab1e1e guibg=bg gui=NONE
                \ ctermfg=125 ctermbg=bg cterm=NONE
highlight Special guifg=#0c7348 guibg=bg gui=NONE
                \ ctermfg=35 ctermbg=bg cterm=NONE
highlight Identifier guifg=#144ec3 guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Statement guifg=#ff0080 guibg=bg gui=NONE
                \ ctermfg=197 ctermbg=bg cterm=NONE
highlight PreProc guifg=#ff66ff guibg=bg gui=NONE
                \ ctermfg=206 ctermbg=bg cterm=NONE
highlight type guifg=#008040 guibg=bg gui=NONE
                \ ctermfg=28 ctermbg=bg cterm=NONE
highlight underlined guifg=#0e8655 guibg=bg gui=underline
                \ ctermfg=28 ctermbg=bg cterm=underline
highlight Ignore guifg=#0f4f5f guibg=bg gui=bold
                \ ctermfg=22 ctermbg=bg cterm=bold
highlight Error guifg=#ff0f3f guibg=#fff0fe gui=NONE
                \ ctermfg=124 ctermbg=225 cterm=NONE
highlight Todo guifg=#009a7a guibg=#bce5f5 gui=bold,underline
                \ ctermfg=22 ctermbg=78 cterm=bold,underline
highlight string guifg=#ff00ff guibg=bg gui=NONE
                \ ctermfg=13 ctermbg=bg cterm=NONE
highlight function guifg=#3a45b1 guibg=bg gui=NONE
                \ ctermfg=27 ctermbg=bg cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


