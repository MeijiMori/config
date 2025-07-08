" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /｡｡/
" Guicolorscheme file
" May I improved candycode.vim ...

" #- Vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- Colorscheme name -# "{{{1
let g:colors_name=expand('<sfile>:t:r')

" #- Highlighting groups for various occasions -# "{{{1

highlight Normal       guifg=#ffffff       guibg=#00000f       gui=NONE
      \   ctermfg=white       ctermbg=black       cterm=NONE
highlight SpecialKey   guifg=#5f1fff       guibg=NONE          gui=NONE
highlight NonText      guifg=#3f22ff       guibg=NONE          gui=NONE
      \   ctermfg=yellow      ctermbg=NONE        cterm=NONE
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
      \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory    guifg=#5fcfff       guibg=NONE          gui=NONE
      \   ctermfg=cyan        ctermbg=NONE        cterm=NONE
      \   ctermfg=green       ctermbg=NONE        cterm=NONE
highlight ErrorMsg     guifg=#ff2f5f       guibg=NONE       gui=NONE
      \   ctermfg=white       ctermbg=red         cterm=bold
" search "{{{
highlight IncSearch    guifg=#2f2f5f       guibg=#8f8fff       gui=NONE
      \   ctermfg=white       ctermbg=yellow      cterm=NONE
highlight Search       guifg=#5f2f2f       guibg=#ff8f8f       gui=NONE
      \   ctermfg=white       ctermbg=darkgreen   cterm=NONE
"}}}
highlight MoreMsg      guifg=#2f7f5f       guibg=#afffaf          gui=NONE
      \   ctermfg=green       ctermbg=NONE        cterm=NONE
highlight ModeMsg      guifg=#7f7f4f       guibg=#ffffdf          gui=NONE
      \   ctermfg=yellow      ctermbg=NONE        cterm=NONE
highlight LineNr       guifg=#cfb08f       guibg=NONE          gui=NONE
      \   ctermfg=darkgray    ctermbg=NONE        cterm=NONE
highlight CursorLineNr       guifg=#cfb08f       guibg=NONE      gui=bold
      \   ctermfg=darkgray    ctermbg=NONE        cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question     guifg=#2f5f7f       guibg=#afcfff          gui=NONE
      \   ctermfg=green       ctermbg=NONE        cterm=NONE
" statusline "{{{
highlight StatusLine   guifg=#0f1f3f       guibg=#cfcfdf       gui=NONE
      \   ctermfg=black       ctermbg=white       cterm=bold
highlight StatusLineNC guifg=#56523f       guibg=#c4b2ab       gui=NONE
      \   ctermfg=darkgray    ctermbg=white       cterm=NONE
" #- Terminal -# "{{{3
highlight StatusLineTerm guifg=#000f2f guibg=#cfccff gui=NONE
                \ ctermfg=11 ctermbg=bg cterm=NONE
highlight StatusLineTermNc guifg=#002f2f guibg=#8fafcf gui=NONE
                \ ctermfg=11 ctermbg=bg cterm=NONE
"}}}
highlight VertSplit    guifg=#c2bfa5       guibg=#c2bfa5       gui=NONE
      \   ctermfg=white       ctermbg=white       cterm=NONE
highlight Title        guifg=#dd4452       guibg=NONE          gui=NONE
      \   ctermfg=red         ctermbg=NONE        cterm=bold
" visual "{{{
highlight Visual       guifg=#ffffff       guibg=#0f1f8f       gui=NONE
      \   ctermfg=white       ctermbg=lightblue   cterm=NONE
highlight VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold guifg=#cfcfcf guibg=#1f1f3f
"}}}
highlight WarningMsg   guifg=#af2f3f       guibg=NONE         gui=NONE
      \   ctermfg=yellow      ctermbg=NONE        cterm=bold
highlight WildMenu     guifg=#bfbfbf       guibg=#0f1f3f       gui=NONE
      \   ctermfg=white       ctermbg=darkblue    cterm=bold
" fold "{{{
highlight Folded       guifg=#c2bfa5       guibg=#0f0f1f       gui=NONE
      \   ctermfg=lightgray   ctermbg=black       cterm=underline
highlight FoldColumn   guifg=#2f3fff       guibg=#00000f       gui=bold
      \   ctermfg=lightgray   ctermbg=darkgray    cterm=NONE
"}}}
" diff"{{{
highlight DiffAdd      guifg=NONE       guibg=#152f5f       gui=NONE
      \   ctermfg=white       ctermbg=darkblue    cterm=NONE
highlight DiffChange   guifg=NONE       guibg=#7f2f3f       gui=NONE
      \   ctermfg=black       ctermbg=darkmagenta cterm=NONE
highlight DiffDelete   guifg=NONE       guibg=#2f5f5f       gui=NONE
      \   ctermfg=black       ctermbg=red         cterm=bold
highlight DiffText     guifg=#cfcfcf       guibg=NONE       gui=NONE
      \   ctermfg=white       ctermbg=green       cterm=bold
highlight DiffTextAdd     guifg=#8fff8f       guibg=NONE    gui=NONE
      \   ctermfg=white       ctermbg=green       cterm=bold
"}}}
highlight SignColumn term=NONE gui=NONE guibg=#0f0f2f guifg=#ffffb0
" spell"{{{
highlight SpellBad     guifg=NONE          guibg=NONE          gui=undercurl
      \   ctermfg=white       ctermbg=darkred     guisp=#ff0011
highlight SpellCap     guifg=NONE          guibg=NONE          gui=undercurl
      \   ctermfg=white       ctermbg=darkblue    guisp=#0044ff
highlight SpellLocal   guifg=NONE          guibg=NONE          gui=undercurl
      \   ctermfg=black       ctermbg=cyan        guisp=#00dd99
highlight SpellRare    guifg=NONE          guibg=NONE          gui=undercurl
      \   ctermfg=white       ctermbg=darkmagenta guisp=#ff22ee
"}}}
" pmenu "{{{
highlight Pmenu        guifg=#000000       guibg=#cfc0c0       gui=NONE
      \   ctermfg=white       ctermbg=darkgray    cterm=NONE
highlight PmenuExtra        guifg=#000000       guibg=#cfcfff       gui=NONE
      \   ctermfg=white       ctermbg=darkgray    cterm=NONE
highlight PmenuExtraSel   guifg=#cfcfcf       guibg=#0f0f3f       gui=NONE
      \   ctermfg=white       ctermbg=darkgray    cterm=NONE
highlight PmenuKind   guifg=#000000       guibg=#ffcfcf       gui=NONE
      \   ctermfg=white       ctermbg=darkgray    cterm=NONE
highlight PmenuKindSel   guifg=#cfcfcf       guibg=#8f0f0f       gui=NONE
      \   ctermfg=white       ctermbg=darkgray    cterm=NONE
highlight PmenuMatch   guifg=#000000       guibg=#cfffcf       gui=NONE
      \   ctermfg=white       ctermbg=darkgray    cterm=NONE
highlight PmenuMatchSel   guifg=#cfcfcf       guibg=#0f3f0f       gui=NONE
      \   ctermfg=white       ctermbg=darkgray    cterm=NONE
highlight PmenuSel     guifg=#ffffff       guibg=#1f3f5f       gui=NONE
      \   ctermfg=white       ctermbg=lightblue   cterm=NONE
highlight PmenuSbar    guifg=NONE          guibg=#0f0f2f       gui=NONE
      \   ctermfg=black       ctermbg=black       cterm=NONE
highlight PmenuThumb   guifg=NONE          guibg=#7f1f2f       gui=NONE
      \   ctermfg=gray        ctermbg=gray        cterm=NONE
highlight ComplMatchIns   guifg=NONE          guibg=#7f1f2f       gui=NONE
      \   ctermfg=gray        ctermbg=gray        cterm=NONE
"}}}
" tabline "{{{
highlight TabLine      guifg=#000000       guibg=#c2bfa5       gui=NONE
      \   ctermfg=black       ctermbg=white       cterm=NONE
highlight TabLineFill  guifg=#000000       guibg=#c2bfa5       gui=NONE
      \   ctermfg=black       ctermbg=white       cterm=NONE
highlight TabLineSel   guifg=#ffffff       guibg=#133293       gui=NONE
      \   ctermfg=white       ctermbg=black       cterm=NONE
"}}}
" tabpanel "{{{
highlight TabPanel      guifg=#000000       guibg=#c2bfa5       gui=NONE
      \   ctermfg=black       ctermbg=white       cterm=NONE
highlight TabPanelFill  guifg=#000000       guibg=#c2bfa5       gui=NONE
      \   ctermfg=black       ctermbg=white       cterm=NONE
highlight TabPanelSel   guifg=#ffffff       guibg=#133293       gui=NONE
"}}}
" cursor "{{{
highlight CursorLine   guifg=NONE          guibg=#1b1b1b       gui=NONE
      \   ctermfg=NONE        ctermbg=NONE        cterm=NONE
highlight CursorColumn guifg=NONE          guibg=#1b1b1b       gui=NONE
      \   ctermfg=NONE        ctermbg=NONE        cterm=NONE
highlight Cursor       guifg=#cfcfcf       guibg=#1f3faf       gui=NONE
      \   ctermfg=black       ctermbg=white       cterm=NONE
if has('multi_byte_ime') || has('xim')
  highlight CursorIM     guifg=#000000       guibg=#7f1f2f       gui=NONE
        \   ctermfg=black       ctermbg=white       cterm=reverse
endif
"}}}

"highlight Menu
"highlight Scrollbar
"highlight Tooltip

" #- Syntax highlighting group -# "{{{1
highlight lCursor gui=NONE guifg=#3f3f3f guibg=#7ea3a6
highlight MatchParen   guifg=#0f0f0f          guibg=#2f3f7f       gui=bold
      \   ctermfg=white       ctermbg=blue        cterm=NONE
highlight Comment      guifg=#2f49cf       guibg=NONE          gui=NONE
      \   ctermfg=brown       ctermbg=NONE        cterm=NONE

highlight Constant     guifg=#ff6050       guibg=NONE          gui=NONE
      \   ctermfg=red         ctermbg=NONE        cterm=NONE
highlight Special      guifg=#b0b0cf       guibg=NONE          gui=NONE
      \   ctermfg=lightgray   ctermbg=NONE        cterm=bold
highlight Identifier   guifg=#ffcf8f       guibg=NONE          gui=NONE
      \   ctermfg=yellow      ctermbg=NONE        cterm=NONE
highlight Statement    guifg=#66d077       guibg=NONE          gui=NONE
      \   ctermfg=green       ctermbg=NONE        cterm=bold

highlight PreProc      guifg=#af2f5f       guibg=NONE          gui=NONE
      \   ctermfg=darkmagenta ctermbg=NONE        cterm=NONE

highlight Type         guifg=#2f53ff       guibg=NONE          gui=NONE
      \   ctermfg=lightblue   ctermbg=NONE        cterm=bold


highlight Underlined   guifg=#80a0ff       guibg=NONE          gui=underline
      \   ctermfg=NONE        ctermbg=NONE        cterm=underline
      \   term=underline

highlight Ignore       guifg=#888888       guibg=NONE          gui=NONE
      \   ctermfg=darkgray    ctermbg=NONE        cterm=NONE

highlight Error        guifg=#ff3f5f       guibg=NONE       gui=NONE
      \   ctermfg=white       ctermbg=red         cterm=NONE

highlight Todo         guifg=#3faf9f       guibg=#0f1f1f       gui=bold
      \   ctermfg=black       ctermbg=yellow      cterm=bold
highlight string gui=NONE guifg=#ff6050 guibg=NONE
      \   ctermfg=black       ctermbg=yellow      cterm=bold
highlight Boolean      guifg=#ff6050       guibg=NONE          gui=bold
      \   ctermfg=red         ctermbg=NONE        cterm=bold

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
