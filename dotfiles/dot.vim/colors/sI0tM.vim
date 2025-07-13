" #- vim color file -# "{{{1
" Note: "{{{2
" hilight ZenkakuSpace /　/
" matchparen ({[*]})
" This colorscheme is refer to RiALM


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
let colors_name = expand('<sfile>:t:r')


" #- highlighting groups various ooccasions -# "{{{1
" highlight Normal guifg=#cfcfcf guibg=#102144 gui=NONE
highlight Normal guifg=#cfcfcf guibg=#0f1f3f gui=NONE
          \ ctermfg=15 ctermbg=233 cterm=NONE
highlight SpecialKey guifg=#5f5fff guibg=NONE gui=NONE
          \ ctermfg=27 ctermbg=bg cterm=NONE
highlight NonText guifg=#afcfff guibg=#1f2f4f gui=NONE
          \ ctermfg=122 ctermbg=234 cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#2f5fff guibg=bg gui=bold
          \ ctermfg=27 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#5f1f3f guibg=#cf3f5f gui=underline
          \ ctermfg=88 ctermbg=125 cterm=underline
" Search "{{{2
highlight IncSearch guifg=#8f5f1f guibg=#cf8f5f gui=underline
          \ ctermfg=94 ctermbg=209 cterm=underline
highlight Search guifg=#1f3f5f guibg=#5f8fff gui=underline
          \ ctermfg=17 ctermbg=74 cterm=underline
" }}}2
highlight MoreMsg guifg=#0f3f6f guibg=#2f7fbf gui=underline
          \ ctermfg=17 ctermbg=25 cterm=bold,underline
highlight ModeMsg guifg=#3f3f3f guibg=#afafaf gui=underline
          \ ctermfg=237 ctermbg=250 cterm=bold,underline
highlight LineNr guifg=#2fd99d guibg=NONE gui=NONE
          \ ctermfg=49 ctermbg=NONE cterm=NONE
highlight CursorLineNr guifg=#2fd99d guibg=NONE gui=NONE
          \ ctermfg=57 ctermbg=0 cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#2f5f3f guibg=#0fbf8f gui=underline
          \ ctermfg=22 ctermbg=35 cterm=underline
" Statusline "{{{2
highlight StatusLine guifg=#cfcfff guibg=#151a2f gui=NONE
          \ ctermfg=250 ctermbg=232 cterm=NONE
highlight StatusLineNC guifg=#4f3f5f guibg=#bfafcf gui=NONE
          \ ctermfg=95 ctermbg=180 cterm=NONE
" }}}2
highlight VertSplit guifg=#5f5fff guibg=bg gui=NONE
          \ ctermfg=24 ctermbg=bg cterm=NONE
highlight Title guifg=#3fdfaf guibg=bg gui=bold,underline
          \ ctermfg=48 ctermbg=bg cterm=bold,underline
" Visual "{{{2
highlight Visual guifg=#afafaf guibg=#1f2f4f gui=NONE
          \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#0f2f5f gui=underline,bold
          \ ctermfg=15 ctermbg=23 cterm=bold,underline
" }}}2
highlight WarningMsg guifg=#5f2f6f guibg=#cf5fff gui=underline
          \ ctermfg=88 ctermbg=161 cterm=underline
highlight WildMenu guifg=#cfcfcf guibg=#3f1f3f gui=underline
          \ ctermfg=253 ctermbg=53 cterm=underline
" Fold "{{{2
highlight Folded guifg=#bfbfcf guibg=#1a1c3f gui=NONE
          \ ctermfg=250 ctermbg=232 cterm=NONE
highlight FoldColumn guifg=#5f8fff guibg=#1a2a5a gui=bold
          \ ctermfg=81 ctermbg=232 cterm=bold

" Diff "{{{2
highlight DiffAdd guifg=#1f3f2f guibg=#5fcfaf gui=NONE
          \ ctermfg=fg ctermbg=22 cterm=NONE
highlight DiffChange guifg=#2f3f1f guibg=#cfaf5f gui=NONE
          \ ctermfg=fg ctermbg=202 cterm=NONE
highlight DiffDelete guifg=#3f2f1f guibg=#cf5faf gui=NONE
          \ ctermfg=fg ctermbg=52 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2
highlight SignColumn guifg=#ff5f7f guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=bold
" spell "{{{2
highlight SpellBad guifg=#cf5fdf guibg=bg gui=NONE
          \ ctermfg=126 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#5f9fff guibg=bg gui=NONE
          \ ctermfg=27 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#5fff8f guibg=bg gui=NONE
          \ ctermfg=47 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#ffcf5f guibg=bg gui=NONE
          \ ctermfg=226 ctermbg=bg cterm=NONE

" pmenu "{{{2
highlight pmenu guifg=#0f0f0f guibg=#afafcf gui=NONE
          \ ctermfg=234 ctermbg=250 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#0f1f3f gui=NONE
          \ ctermfg=254 ctermbg=17 cterm=NONE
highlight pmenuSbar guifg=fg guibg=#1f1f2f gui=NONE
          \ ctermfg=fg ctermbg=89 cterm=NONE
highlight PmenuThumb guifg=#afafaf guibg=#0f3f3f gui=NONE
          \ ctermfg=fg ctermbg=29 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#afafaf guibg=#0f1f3f gui=underline
          \ ctermfg=248 ctermbg=233 cterm=underline
highlight TabLineSel guifg=#cfcfcf guibg=#15305f gui=NONE
          \ ctermfg=255 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#3f5faf guibg=#0f1f3f gui=underline,bold
          \ ctermfg=25 ctermbg=232 cterm=bold,underline
" tabpanel "{{{2
highlight TabPanel guifg=#cfcfcf guibg=#0f0f3f gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight TabPanelFill guifg=#0f0f0f guibg=#0f0f4f gui=NONE
                \ ctermfg=128 ctermbg=0 cterm=NONE
highlight TabPanelSel guifg=#ffffff guibg=#0f3f8f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=underline

" cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
          \ ctermfg=226 ctermbg=bg cterm=NONE
highlight CursorLine guifg=NONE guibg=#1f2f5f gui=NONE
          \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight CursorColumn guifg=NONE guibg=grey40 gui=NONE
          \ ctermfg=NONE ctermbg=17 cterm=NONE
highlight Cursor guifg=#000000 guibg=#2f9f5f gui=NONE
          \ ctermfg=16 ctermbg=35 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#bfbfbf guibg=#5f0f3f gui=NONE
          \ ctermfg=16 ctermbg=197 cterm=NONE
endif

" }}}2
" terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=fg guibg=bg gui=NONE
                  \ ctermfg=fg ctermbg=bg cterm=NONE
  highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
                  \ ctermfg=0 ctermbg=10 cterm=NONE
  highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
                  \ ctermfg=96 ctermbg=183 cterm=NONE
  " Terminal color
  let g:terminal_ansi_colors = [
        \ "#0c0c0c", "#c50f1f", "#13a10e", "#c19c00",
        \ "#0037da", "#881798", "#3a96dd", "#cccccc",
        \ "#767676", "#e74856", "#16c60c", "#eadf84",
        \ "#3b78ff", "#b4009e", "#61d6d6", "#e8e8e8"
        \ ]

endif


" #- syntax highlighting group -# "{{{1
highlight lCursor guifg=#000000 guibg=#5fcfaf gui=NONE
          \ ctermfg=226 ctermbg=bg cterm=NONE
" highlight MatchParen guifg=#0f2f5f guibg=#3f5faf gui=NONE
highlight MatchParen guifg=#3f3f5f guibg=#8f8fff gui=underline
          \ ctermfg=17 ctermbg=39 cterm=underline,bold
highlight comment guifg=#3f5fff guibg=bg gui=NONE
          \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Constant guifg=#7fffaf guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight Special guifg=#deffed guibg=bg gui=NONE
          \ ctermfg=159 ctermbg=bg cterm=NONE
highlight Identifier guifg=#ffbf9f guibg=bg gui=NONE
          \ ctermfg=215 ctermbg=bg cterm=NONE
highlight Statement guifg=#2fcfaf guibg=bg gui=NONE
          \ ctermfg=36 ctermbg=bg cterm=NONE
highlight PreProc guifg=#af2fff guibg=bg gui=NONE
          \ ctermfg=129 ctermbg=bg cterm=NONE
highlight type guifg=#5fcfaf guibg=bg gui=NONE
          \ ctermfg=49 ctermbg=bg cterm=NONE
highlight underlined guifg=#56efcc guibg=bg gui=underline
          \ ctermfg=50 ctermbg=bg cterm=underline
highlight Ignore guifg=#1f2faf guibg=bg gui=bold
          \ ctermfg=20 ctermbg=bg cterm=bold
highlight Error guifg=#fd4899 guibg=bg gui=NONE
          \ ctermfg=9 ctermbg=bg cterm=NONE
highlight Todo guifg=#af7fcf guibg=#cfcfff gui=bold,underline
          \ ctermfg=207 ctermbg=189 cterm=bold,underline
highlight string guifg=#2f5fff guibg=bg gui=NONE
          \ ctermfg=26 ctermbg=bg cterm=NONE


" #- END: -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


