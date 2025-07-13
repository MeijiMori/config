" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/

" #- reset-# "{{{1
" First remove all existing highlighting.
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
highlight Normal guifg=#000000 guibg=#fcf0ff gui=NONE
          \ ctermfg=16 ctermbg=225 cterm=NONE
highlight SpecialKey guifg=#cfaf5f guibg=bg gui=NONE
          \ ctermfg=179 ctermbg=bg cterm=NONE
highlight NonText guifg=#1f3f5f guibg=bg gui=bold
          \ ctermfg=17 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#7f7f9f guibg=bg gui=bold
          \ ctermfg=62 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#3f0f0f guibg=#cf5f5f gui=underline
          \ ctermfg=52 ctermbg=197 cterm=underline
" search "{{{2
highlight IncSearch guifg=#5f1f2f guibg=#cf5f5f gui=bold,underline
          \ ctermfg=52 ctermbg=196 cterm=bold,underline
highlight Search guifg=#2f2f5f guibg=#5f5fcf gui=bold,underline
          \ ctermfg=17 ctermbg=57 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#0f5f2f guibg=#5faf5f gui=underline
          \ ctermfg=22 ctermbg=34 cterm=underline
highlight ModeMsg guifg=#0f2f4f guibg=#5f5faf gui=underline
          \ ctermfg=17 ctermbg=21 cterm=underline
highlight LineNr guifg=#ff7f5f guibg=NONE gui=NONE
          \ ctermfg=202 ctermbg=bg cterm=NONE
highlight CursorLineNr guifg=#ff8f5f guibg=#ffefff gui=bold
          \ ctermfg=165 ctermbg=53 cterm=bold
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#003f0f guibg=#5fcf8f gui=underline
          \ ctermfg=22 ctermbg=29 cterm=underline
" Statusline "{{{2
highlight StatusLine guifg=#efefef guibg=#2a1f2f gui=underline
          \ ctermfg=15 ctermbg=0 cterm=underline
highlight StatusLineNC guifg=#7f5f6f guibg=#efdfff gui=underline
          \ ctermfg=239 ctermbg=250 cterm=underline
" }}}2
highlight VertSplit guifg=#efcfef guibg=#efe0ff gui=bold
          \ ctermfg=219 ctermbg=250 cterm=bold
highlight Title guifg=#af5f0f guibg=bg gui=bold,underline
          \ ctermfg=166 ctermbg=bg cterm=bold,underline
" Visual "{{{2
highlight Visual guifg=#efefef guibg=#0f1f3f gui=NONE
          \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#2f3f7f gui=bold,underline
          \ ctermfg=250 ctermbg=19 cterm=bold,underline
" }}}2
highlight WarningMsg guifg=#cf2f4f guibg=#ffdfdf gui=NONE
          \ ctermfg=88 ctermbg=219 cterm=NONE
highlight WildMenu guifg=#cfcfcf guibg=#0f1f3f gui=bold
          \ ctermfg=255 ctermbg=234 cterm=bold
" Fold "{{{2
highlight Folded guifg=#2f2f2f guibg=#efe5ef gui=NONE
          \ ctermfg=233 ctermbg=188 cterm=NONE
highlight FoldColumn guifg=#3f3f6f guibg=#fff5ff gui=bold
          \ ctermfg=16 ctermbg=bg cterm=bold

" Diff "{{{2
highlight DiffAdd guifg=fg guibg=#afffcf gui=NONE
          \ ctermfg=NONE ctermbg=85 cterm=NONE
highlight DiffChange guifg=fg guibg=#ffffcf gui=NONE
          \ ctermfg=NONE ctermbg=186 cterm=NONE
highlight DiffDelete guifg=fg guibg=#ffafcf gui=NONE
          \ ctermfg=NONE ctermbg=177 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
" }}}2
highlight SignColumn guifg=#5f0f2f guibg=bg gui=NONE
          \ ctermfg=88 ctermbg=bg cterm=NONE
highlight Conceal guifg=#5f0f2f guibg=bg gui=NONE
          \ ctermfg=88 ctermbg=123 cterm=NONE
" Spell "{{{2
highlight SpellBad guifg=#3f1f5f guibg=bg gui=NONE
          \ ctermfg=125 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#1f2f5f guibg=bg gui=NONE
          \ ctermfg=54 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#1f5f4f guibg=bg gui=NONE
          \ ctermfg=23 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#5f4f1f guibg=bg gui=NONE
          \ ctermfg=58 ctermbg=bg cterm=NONE

" Pmenu "{{{2
highlight Pmenu guifg=fg guibg=#efe0ff gui=NONE
          \ ctermfg=234 ctermbg=251 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#1f1f3f gui=NONE
          \ ctermfg=255 ctermbg=232 cterm=NONE
highlight PmenuSbar guifg=fg guibg=#cfafbf gui=NONE
          \ ctermfg=fg ctermbg=138 cterm=NONE
highlight PmenuThumb guifg=fg guibg=#dfcfef gui=NONE
          \ ctermfg=fg ctermbg=141 cterm=NONE

" tabline "{{{2
highlight TabLine guifg=#afafaf guibg=#0f1f2f gui=NONE
          \ ctermfg=246 ctermbg=232 cterm=NONE
highlight TabLineSel guifg=#cfcfcf guibg=#0f2f5f gui=NONE
          \ ctermfg=253 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#8fafcf guibg=#0f1f2f gui=bold
          \ ctermfg=69 ctermbg=233 cterm=bold


" tabpanel "{{{2
highlight TabPanel guifg=#0f0f0f guibg=#efe0ff gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight TabPanelFill guifg=#0f0fff guibg=#ffefff gui=NONE
                \ ctermfg=128 ctermbg=0 cterm=NONE
highlight TabPanelSel guifg=#ffffff guibg=#0f3faf gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=underline

" cursor "{{{2
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
          \ ctermfg=16 ctermbg=235 cterm=NONE
highlight CursorLine guifg=NONE guibg=#f0e0f5 gui=NONE
          \ ctermfg=NONE ctermbg=253 cterm=NONE
highlight Cursor guifg=#000000 guibg=#6f8faf gui=NONE
          \ ctermfg=0 ctermbg=67 cterm=NONE

" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af1f3f gui=NONE
          \ ctermfg=0 ctermbg=124 cterm=NONE
endif


"" terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=fg guibg=bg gui=NONE
            \ ctermfg=fg ctermbg=bg cterm=NONE
  highlight StatusLineTerm guifg=#0f0f0f guibg=#aaafff gui=underline
            \ ctermfg=15 ctermbg=0 cterm=underline
  highlight StatusLineTermNC guifg=#7f5f6f guibg=#efcfff gui=underline
            \ ctermfg=239 ctermbg=250 cterm=underline
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



" }}}
" #- syntax highlighting groups -# "{{{1
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
          \ ctermfg=234 ctermbg=24 cterm=NONE
highlight MatchParen guifg=#5f5f8f guibg=#bfbfff gui=bold,underline
          \ ctermfg=17 ctermbg=12 cterm=bold,underline
highlight comment guifg=#3f4f8f guibg=bg gui=NONE
          \ ctermfg=19 ctermbg=bg cterm=NONE
highlight Constant guifg=#3faf5f guibg=bg gui=NONE
          \ ctermfg=29 ctermbg=bg cterm=NONE
highlight Special guifg=#5f5f7f guibg=bg gui=NONE
          \ ctermfg=63 ctermbg=bg cterm=NONE
highlight Identifier guifg=#cf5f0f guibg=bg gui=NONE
          \ ctermfg=136 ctermbg=bg cterm=NONE
highlight Statement guifg=#6f5f8f guibg=bg gui=NONE
          \ ctermfg=57 ctermbg=bg cterm=NONE
highlight PreProc guifg=#7faf2f guibg=bg gui=NONE
          \ ctermfg=35 ctermbg=bg cterm=NONE
highlight type guifg=#cf5f58 guibg=bg gui=NONE
          \ ctermfg=124 ctermbg=bg cterm=NONE
highlight underlined guifg=#0f7f3f guibg=bg gui=underline
          \ ctermfg=23 ctermbg=bg cterm=underline
highlight Ignore guifg=#1f0f2f guibg=bg gui=bold
          \ ctermfg=16 ctermbg=bg cterm=bold
highlight Error guifg=#af1f3f guibg=#ffdfdf gui=NONE
          \ ctermfg=52 ctermbg=177 cterm=NONE
highlight Todo guifg=#8f8fff guibg=#dfdfdf gui=bold,underline
          \ ctermfg=12 ctermbg=153 cterm=bold,underline
highlight string guifg=#af1f3f guibg=bg gui=NONE
          \ ctermfg=124 ctermbg=bg cterm=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
