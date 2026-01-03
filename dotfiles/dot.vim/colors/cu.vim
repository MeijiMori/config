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
" name: cu
let g:colors_name=expand('<sfile>:t:r')


" #- Highlighting groups for various occasions -# "{{{1

highlight Normal       guifg=#ffffff       guibg=#00000f       gui=NONE
                     \ ctermfg=255         ctermbg=16          cterm=NONE
highlight NonText      guifg=#3f22ff       guibg=NONE          gui=NONE
                     \ ctermfg=27          ctermbg=NONE        cterm=NONE
highlight EndOfBuffer  guifg=#6f79ff       guibg=bg            gui=bold
                     \ ctermfg=69          ctermbg=NONE        cterm=bold
highlight Directory    guifg=#5fcfff       guibg=NONE          gui=NONE
                     \ ctermfg=81        ctermbg=NONE        cterm=NONE



" Search: "{{{2
highlight IncSearch    guifg=#2f2f5f       guibg=#8f8fff       gui=NONE
                     \ ctermfg=53          ctermbg=147         cterm=NONE
highlight CurSearch    guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
                     \ ctermfg=58          ctermbg=220         cterm=bold,underline
highlight Search       guifg=#5f2f2f       guibg=#ff8f8f       gui=NONE
                     \ ctermfg=52          ctermbg=202         cterm=NONE

" Message: "{{{2
highlight MoreMsg      guifg=#2f7f5f       guibg=#afffaf          gui=NONE
                     \ ctermfg=22          ctermbg=152            cterm=NONE
highlight ModeMsg      guifg=#7f7f4f       guibg=#ffffdf          gui=NONE
                     \ ctermfg=237         ctermbg=255            cterm=NONE
highlight MsgArea      guifg=fg            guibg=bg               gui=NONE
                     \ ctermfg=fg          ctermbg=bg             cterm=NONE
highlight ErrorMsg     guifg=#ff2f5f       guibg=NONE             gui=NONE
                     \ ctermfg=52          ctermbg=225            cterm=NONE
highlight WarningMsg   guifg=#af2f3f       guibg=NONE             gui=NONE
                     \ ctermfg=58          ctermbg=229            cterm=bold
highlight Question     guifg=#2f5f7f       guibg=#afcfff          gui=NONE
                     \ ctermfg=27          ctermbg=159            cterm=NONE
highlight stderrMsg    guifg=#8f2f3f       guibg=bg               gui=NONE
                     \ ctermfg=85          ctermbg=bg             cterm=NONE
highlight stdoutMsg    guifg=#3f3f3f       guibg=bg               gui=NONE
                     \ ctermfg=85          ctermbg=bg             cterm=NONE
highlight WildMenu     guifg=#bfbfbf       guibg=#0f1f3f          gui=NONE
                     \ ctermfg=15         ctermbg=19              cterm=bold


" LineNr: "{{{2
highlight LineNr       guifg=#cfb08f       guibg=NONE          gui=NONE
                     \ ctermfg=180         ctermbg=NONE        cterm=NONE
highlight LineNrAbove  guifg=#9f4fff       guibg=NONE          gui=NONE
                     \ ctermfg=129         ctermbg=bg          cterm=NONE
highlight LineNrBelow  guifg=#9f9f7f       guibg=NONE          gui=NONE
                     \ ctermfg=249         ctermbg=bg          cterm=NONE


" Statusline "{{{2
highlight StatusLine   guifg=#0f1f3f       guibg=#cfcfdf       gui=NONE
                     \ ctermfg=58          ctermbg=187         cterm=NONE
highlight StatusLineNC guifg=#56523f       guibg=#c4b2ab       gui=NONE
                     \ ctermfg=236         ctermbg=137         cterm=NONE
highlight StatusLineTerm   guifg=#000f2f      guibg=#cfccff    gui=NONE
                         \ ctermfg=236        ctermbg=189      cterm=NONE
highlight StatusLineTermNC guifg=#002f2f guibg=#8fafcf gui=NONE
                         \ ctermfg=25 ctermbg=117 cterm=NONE


"}}}2


highlight VertSplit    guifg=#c2bfa5       guibg=#c2bfa5       gui=NONE
                     \ ctermfg=250         ctermbg=250         cterm=NONE
highlight WinSeparator guifg=NONE          guibg=#efefff       gui=bold
                     \ ctermfg=250         ctermbg=16          cterm=bold
highlight FloatBorder  guifg=NONE          guibg=#cfcfcf       gui=bold
                     \ ctermfg=250         ctermbg=16          cterm=bold
highlight Title        guifg=#dd4452       guibg=NONE          gui=NONE
                     \ ctermfg=196         ctermbg=NONE        cterm=NONE


" Visual: "{{{2
highlight Visual       guifg=#ffffff       guibg=#0f1f8f       gui=NONE
                     \ ctermfg=15          ctermbg=20          cterm=NONE
highlight VisualNOS    guifg=#cfcfcf guibg=#1f1f3f term=underline,bold cterm=underline,bold gui=underline,bold


" Fold: "{{{2
highlight Folded       guifg=#c2bfa5       guibg=#0f0f1f       gui=NONE
                     \ ctermfg=253         ctermbg=232         cterm=NONE
highlight FoldColumn   guifg=#2f3fff       guibg=#00000f       gui=bold
                     \ ctermfg=21          ctermbg=232         cterm=bold


" Diff: "{{{2
highlight DiffAdd      guifg=NONE       guibg=#152f5f       gui=NONE
                     \ ctermfg=234      ctermbg=159         cterm=NONE
highlight DiffChange   guifg=NONE       guibg=#7f2f3f       gui=NONE
                     \ ctermfg=234      ctermbg=125         cterm=NONE
highlight DiffDelete   guifg=NONE       guibg=#2f5f5f       gui=NONE
                     \ ctermfg=234      ctermbg=151         cterm=NONE
highlight DiffText     guifg=#cfcfcf    guibg=NONE          gui=NONE
                     \ ctermfg=fg       ctermbg=bg          cterm=NONE
highlight DiffTextAdd  guifg=#8fff8f    guibg=NONE          gui=NONE
                     \ ctermfg=71       ctermbg=NONE        cterm=bold
highlight Added        guifg=#2faf3f    guibg=bg            gui=NONE
                     \ ctermfg=33       ctermbg=bg          cterm=NONE
highlight Changed      guifg=#af9f2f    guibg=bg            gui=NONE
                     \ ctermfg=172      ctermbg=bg          cterm=NONE
highlight Removed      guifg=#ef2f5f    guibg=bg            gui=NONE
                     \ ctermfg=162      ctermbg=bg          cterm=NONE
"}}}



highlight SignColumn   guifg=#ffffb0    guibg=#0f0f2f       gui=NONE        term=NONE
                     \ ctermfg=15       ctermbg=233         cterm=NONE
highlight Conceal      guifg=NONE       guibg=#c0355f       gui=NONE
                     \ ctermfg=1        ctermbg=197         cterm=NONE
highlight SpecialKey   guifg=#5f1fff    guibg=NONE          gui=NONE
                     \ ctermfg=57       ctermbg=NONE        cterm=NONE



" Popup: "{{{2
highlight MessageWindow     guifg=#2f2f2f   guibg=#cfcfff       gui=NONE
                          \ ctermfg=234     ctermbg=189         cterm=NONE
highlight PopupNotification guifg=#2f2f2f   guibg=#cfcfff       gui=NONE
                          \ ctermfg=fg      ctermbg=bg          cterm=NONE
highlight PopupSelected     guifg=#ffffff   guibg=#2f3f8f       gui=NONE
                          \ ctermfg=15      ctermbg=20          cterm=NONE


" Menu: "{{{2
highlight Menu              guifg=#2f2f2f    guibg=#3fafcf       gui=None
                          \ ctermfg=235      ctermbg=73          cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine      guifg=#0f0f0f    guibg=#cfafff       gui=bold
                          \ ctermfg=52       ctermbg=219         cterm=bold


" Toolbar: "{{{2
highlight ToolbarButton     guifg=#5f5f8f    guibg=#cfefff       gui=bold
                          \ ctermfg=27       ctermbg=195         cterm=NONE
highlight ToolbarLine       guifg=fg         guibg=#efcfff       gui=NONE
                          \ ctermfg=52       ctermbg=183         cterm=NONE


" Tooltip: "{{{2
highlight Tooltip           guifg=#0f0f0f    guibg=#efefff       gui=None
                          \ ctermfg=236      ctermbg=253         cterm=NONE


" Scrollbar: "{{{2
highlight Scrollbar         guifg=#2f2f2f    guibg=#3fafcf       gui=None
                          \ ctermfg=27       ctermbg=153         cterm=NONE


" Spell: "{{{2
highlight SpellBad          guifg=NONE          guibg=NONE          gui=undercurl
                          \ ctermfg=white       ctermbg=darkred     guisp=#ff0011
highlight SpellCap          guifg=NONE          guibg=NONE          gui=undercurl
                          \ ctermfg=white       ctermbg=darkblue    guisp=#0044ff
highlight SpellLocal        guifg=NONE          guibg=NONE          gui=undercurl
                          \ ctermfg=black       ctermbg=cyan        guisp=#00dd99
highlight SpellRare         guifg=NONE          guibg=NONE          gui=undercurl
                          \ ctermfg=white       ctermbg=darkmagenta guisp=#ff22ee



" Pmenu: "{{{2
highlight Pmenu             guifg=#000000       guibg=#cfc0c0       gui=NONE
                          \ ctermfg=234         ctermbg=146         cterm=NONE
highlight PmenuExtra        guifg=#000000       guibg=#cfcfff       gui=NONE
                          \ ctermfg=234         ctermbg=146         cterm=NONE
highlight PmenuExtraSel     guifg=#cfcfcf       guibg=#0f0f3f       gui=NONE
                          \ ctermfg=15          ctermbg=20          cterm=NONE
highlight PmenuKind         guifg=#000000       guibg=#ffcfcf       gui=NONE
                          \ ctermfg=234         ctermbg=146         cterm=NONE
highlight PmenuKindSel      guifg=#cfcfcf       guibg=#8f0f0f       gui=NONE
                          \ ctermfg=15          ctermbg=20          cterm=NONE
highlight PmenuMatch        guifg=#000000       guibg=#cfffcf       gui=NONE
                          \ ctermfg=234         ctermbg=146         cterm=NONE
highlight PmenuMatchSel     guifg=#cfcfcf       guibg=#0f3f0f       gui=NONE
                          \ ctermfg=15          ctermbg=146         cterm=NONE
highlight PmenuSel          guifg=#ffffff       guibg=#1f3f5f       gui=NONE
                          \ ctermfg=15          ctermbg=20          cterm=NONE
highlight PmenuSbar         guifg=NONE          guibg=#0f0f2f       gui=NONE
                          \ ctermfg=231         ctermbg=233         cterm=NONE
highlight PmenuThumb        guifg=NONE          guibg=#7f1f2f       gui=NONE
                          \ ctermfg=231         ctermbg=197         cterm=NONE
highlight ComplMatchIns     guifg=NONE          guibg=#7f1f2f       gui=NONE
                          \ ctermfg=234         ctermbg=146         cterm=NONE


" Tabline: "{{{2
highlight TabLine           guifg=#000000       guibg=#c2bfa5       gui=NONE
                          \ ctermfg=235         ctermbg=187         cterm=NONE
highlight TabLineFill       guifg=#000000       guibg=#c2bfa5       gui=NONE
                          \ ctermfg=235         ctermbg=187         cterm=NONE
highlight TabLineSel        guifg=#ffffff       guibg=#133293       gui=NONE
                          \ ctermfg=15          ctermbg=19          cterm=NONE


" Tabpanel: "{{{2
highlight TabPanel          guifg=#000000       guibg=#c2bfa5       gui=NONE
                          \ ctermfg=235         ctermbg=187         cterm=NONE
highlight TabPanelFill      guifg=#000000       guibg=#c2bfa5       gui=NONE
                          \ ctermfg=235         ctermbg=white       cterm=NONE
highlight TabPanelSel       guifg=#ffffff       guibg=#133293       gui=NONE
                          \ ctermfg=15          ctermbg=19          cterm=NONE
highlight TabPanelTitle     guifg=#000000       guibg=#efefff       gui=NONE
                          \ ctermfg=232         ctermbg=187         cterm=NONE


" Cursor: "{{{2
highlight ColorColumn       guifg=NONE          guibg=#cfcfff       gui=NONE
                          \ ctermfg=255         ctermbg=189         cterm=NONE
highlight CursorColumn      guifg=NONE          guibg=#1b1b1b       gui=NONE
                          \ ctermfg=255         ctermbg=235         cterm=NONE
highlight lCursor           guifg=#3f3f3f       guibg=#7ea3a6       gui=NONE
                          \ ctermfg=232         ctermbg=115         cterm=NONE
highlight Cursor            guifg=#cfcfcf       guibg=#1f3faf       gui=NONE
                          \ ctermfg=232         ctermbg=75          cterm=NONE
highlight CmdlineCursor     guifg=#000000       guibg=#cfffff       gui=NONE
                          \ ctermfg=NONE        ctermbg=250         cterm=NONE



if has('multi_byte_ime') || has('xim') "{{{3
  highlight CursorIM        guifg=#000000       guibg=#7f1f2f       gui=NONE
                          \ ctermfg=0           ctermbg=125         cterm=NONE
endif



" Cursorline: {{{2

highlight CursorLine        guifg=NONE          guibg=#1b1b1b       gui=NONE
                          \ ctermfg=NONE        ctermbg=234         cterm=NONE
highlight CursorLineNr      guifg=#cfb08f       guibg=NONE          gui=bold
                          \ ctermfg=94          ctermbg=181         cterm=bold
highlight CursorLineFold    guifg=NONE          guibg=#cfcfff       gui=bold
                          \ ctermfg=189         ctermbg=255         cterm=bold
highlight CursorLineSign    guifg=NONE          guibg=#8faf8f       gui=bold
                          \ ctermfg=255         ctermbg=77          cterm=bold


" Terminal: "{{{2
if has('terminal')
  highlight Terminal        guifg=fg            guibg=bg             gui=NONE
                          \ ctermfg=fg          ctermbg=bg           cterm=NONE

  " Terminal color
  let g:terminal_ansi_colors = [
        \ "#0c0c0c", "#850f1f", "#13710e", "#819c00",
        \ "#00378a", "#881798", "#3a96dd", "#8f8f8f",
        \ "#767676", "#872836", "#16960c", "#6a7f84",
        \ "#3b789f", "#94005e", "#61d6d6", "#989898"
        \ ]
endif



" #- Syntax highlighting group -# "{{{1
highlight MatchParen        guifg=#0f0f0f       guibg=#2f3f7f       gui=bold
                          \ ctermfg=17          ctermbg=69          cterm=NONE
highlight Comment           guifg=#2f49cf       guibg=NONE          gui=NONE
                          \ ctermfg=33          ctermbg=NONE        cterm=NONE
highlight Constant          guifg=#ff6050       guibg=NONE          gui=NONE
                          \ ctermfg=196         ctermbg=NONE        cterm=NONE
highlight Special           guifg=#b0b0cf       guibg=NONE          gui=NONE
                          \ ctermfg=147         ctermbg=NONE        cterm=NONE
highlight Identifier        guifg=#ffcf8f       guibg=NONE          gui=NONE
                          \ ctermfg=221         ctermbg=NONE        cterm=NONE
highlight Statement         guifg=#66d077       guibg=NONE          gui=NONE
                          \ ctermfg=43          ctermbg=NONE        cterm=NONE
highlight PreProc           guifg=#af2f5f       guibg=NONE          gui=NONE
                          \ ctermfg=125         ctermbg=NONE        cterm=NONE
highlight Type              guifg=#2f53ff       guibg=NONE          gui=NONE
                          \ ctermfg=32          ctermbg=NONE        cterm=NONE
highlight Underlined        guifg=#80a0ff       guibg=NONE          gui=underline
                          \ ctermfg=75          ctermbg=NONE        cterm=underline
                          \ term=underline
highlight Ignore            guifg=#888888       guibg=NONE          gui=NONE
                          \ ctermfg=246         ctermbg=NONE        cterm=NONE
highlight Error             guifg=#ff3f5f       guibg=NONE          gui=NONE
                          \ ctermfg=161         ctermbg=NONE        cterm=NONE
highlight Todo              guifg=#3faf9f       guibg=#0f1f1f       gui=bold
                          \ ctermfg=70          ctermbg=233         cterm=bold
highlight string            guifg=#ff6050       guibg=NONE          gui=NONE
                          \ ctermfg=209         ctermbg=NONE        cterm=NONE
highlight Boolean           guifg=#ff6050       guibg=NONE          gui=bold
                          \ ctermfg=208         ctermbg=NONE        cterm=bold

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


