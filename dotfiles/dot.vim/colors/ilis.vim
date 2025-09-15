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
" name: ilis
let g:colors_name = expand('<sfile>:t:r')


" #- Highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#000000 guibg=#fcf0ff gui=NONE
          \ ctermfg=16 ctermbg=225 cterm=NONE
highlight NonText guifg=#1f3fff guibg=bg gui=bold
          \ ctermfg=17 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#7f7fff guibg=bg gui=bold
          \ ctermfg=62 ctermbg=bg cterm=bold


" Search: "{{{2
highlight IncSearch guifg=#5f1f2f guibg=#cf5f5f gui=bold,underline
          \ ctermfg=52 ctermbg=196 cterm=bold,underline
highlight CurSearch guifg=#5f5f0f guibg=#efcf5f gui=bold,underline
          \ ctermfg=17 ctermbg=81 cterm=bold,underline
highlight Search guifg=#2f2f5f guibg=#8f8fff gui=bold,underline
          \ ctermfg=17 ctermbg=57 cterm=bold,underline



"Message: "{{{2
highlight MoreMsg guifg=#0f5f2f guibg=#5faf5f gui=underline
          \ ctermfg=22 ctermbg=34 cterm=underline
highlight ModeMsg guifg=#0f2f8f guibg=#5f5faf gui=underline
          \ ctermfg=17 ctermbg=21 cterm=underline
highlight MsgArea guifg=fg guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ErrorMsg guifg=#3f0f0f guibg=#cf5f5f gui=underline
          \ ctermfg=52 ctermbg=197 cterm=underline
highlight WarningMsg guifg=#cf2f4f guibg=#ffdfdf gui=NONE
          \ ctermfg=88 ctermbg=219 cterm=NONE
highlight Question guifg=#003f0f guibg=#5fcf8f gui=underline
          \ ctermfg=22 ctermbg=29 cterm=underline
highlight stderrMsg guifg=#8f2f3f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight stdoutMsg guifg=#3f3f3f guibg=bg gui=NONE
          \ ctermfg=85 ctermbg=bg cterm=NONE
highlight WildMenu guifg=#cfcfcf guibg=#0f1f3f gui=bold
          \ ctermfg=255 ctermbg=234 cterm=bold


" LineNr: "{{{2
highlight LineNr guifg=#ff7f5f guibg=NONE gui=NONE
          \ ctermfg=202 ctermbg=bg cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE


" Statusline: "{{{2
highlight StatusLine guifg=#1f3f5f guibg=#cfcfff gui=NONE
          \ ctermfg=15 ctermbg=0 cterm=NONE
highlight StatusLineNC guifg=#7f5f6f guibg=#efdfff gui=NONE
          \ ctermfg=239 ctermbg=250 cterm=NONE
highlight StatusLineTerm guifg=#8f0f0f guibg=#ffcfff gui=NONE
          \ ctermfg=15 ctermbg=0 cterm=NONE
highlight StatusLineTermNC guifg=#7f5f6f guibg=#efcfff gui=NONE
          \ ctermfg=239 ctermbg=250 cterm=NONE


" }}}2
highlight VertSplit guifg=#efcfef guibg=#efe0ff gui=bold
          \ ctermfg=219 ctermbg=250 cterm=bold
highlight WinSeparator guifg=NONE guibg=#efefff gui=bold
          \ ctermfg=250 ctermbg=16 cterm=bold
highlight FloatBorder guifg=NONE guibg=#cfcfcf gui=bold
          \ ctermfg=250 ctermbg=16 cterm=bold
highlight Title guifg=#af5f0f guibg=bg gui=bold,underline
          \ ctermfg=166 ctermbg=bg cterm=bold,underline


" Visual: "{{{2
highlight Visual guifg=#efefef guibg=#0f1f3f gui=NONE
          \ ctermfg=15 ctermbg=17 cterm=NONE
highlight VisualNOS guifg=#cfcfcf guibg=#2f3f7f gui=bold,underline
          \ ctermfg=250 ctermbg=19 cterm=bold,underline


" Fold: "{{{2
highlight Folded guifg=#2f2f2f guibg=#efe5ef gui=NONE
          \ ctermfg=233 ctermbg=188 cterm=NONE
highlight FoldColumn guifg=#3f3f6f guibg=#efe3ef gui=bold
          \ ctermfg=16 ctermbg=bg cterm=bold


" Diff: "{{{2
highlight DiffAdd guifg=fg guibg=#afffcf gui=NONE
          \ ctermfg=NONE ctermbg=85 cterm=NONE
highlight DiffChange guifg=fg guibg=#ffffcf gui=NONE
          \ ctermfg=NONE ctermbg=186 cterm=NONE
highlight DiffDelete guifg=fg guibg=#ffafcf gui=NONE
          \ ctermfg=NONE ctermbg=177 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
          \ ctermfg=NONE ctermbg=NONE cterm=NONE
highlight DiffTextAdd guifg=#1f8f5f guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Added guifg=#2faf3f guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Changed guifg=#af9f2f guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight Removed guifg=#ef2f5f guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
" }}}2

highlight SignColumn guifg=#5f0f2f guibg=#efdfff gui=NONE
          \ ctermfg=88 ctermbg=bg cterm=NONE
highlight Conceal guifg=#5f0f2f guibg=bg gui=NONE
          \ ctermfg=88 ctermbg=123 cterm=NONE
highlight SpecialKey guifg=#af7fff guibg=bg gui=NONE
          \ ctermfg=179 ctermbg=bg cterm=NONE


" Popup: "{{{2
highlight MessageWindow guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight PopupNotification guifg=#2f2f2f guibg=#cfcfff gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight PopupSelected guifg=#ffffff guibg=#2f3f8f gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE


" Menu: "{{{2
highlight Menu guifg=#2f2f2f guibg=#3fafcf gui=None
      \ ctermfg=fg ctermbg=bg cterm=NONE


" Quickfix: "{{{2
highlight QuickFixLine guifg=#3f3f8f guibg=#cfcfff gui=bold
      \ ctermfg=fg ctermbg=bg cterm=bold


" Toolbar: "{{{2
highlight ToolbarButton guifg=#3f1f8f guibg=#afafff gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE
highlight ToolbarLine guifg=#5f0f0f guibg=#df3fcf gui=NONE
      \ ctermfg=fg ctermbg=bg cterm=NONE



" Tooltip: "{{{2
highlight Tooltip guifg=#0f0f0f guibg=#efefff gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE

" Scrollbar: "{{{2
highlight Scrollbar guifg=#2f2f2f guibg=#3fafcf gui=None
                \ ctermfg=fg ctermbg=bg cterm=NONE


" Spell: "{{{2
highlight SpellBad guifg=#3f1f5f guibg=bg gui=undercurl
          \ ctermfg=125 ctermbg=bg cterm=undercurl
highlight SpellCap guifg=#1f2f5f guibg=bg gui=undercurl
          \ ctermfg=54 ctermbg=bg cterm=undercurl
highlight SpellRare guifg=#1f5f4f guibg=bg gui=undercurl
          \ ctermfg=23 ctermbg=bg cterm=undercurl
highlight SpellLocal guifg=#5f4f1f guibg=bg gui=undercurl
          \ ctermfg=58 ctermbg=bg cterm=undercurl

" Pmenu: "{{{2
highlight Pmenu guifg=fg guibg=#efe0ff gui=NONE
          \ ctermfg=234 ctermbg=251 cterm=NONE
highlight PmenuSel guifg=#cfcfcf guibg=#1f1f3f gui=NONE
          \ ctermfg=255 ctermbg=232 cterm=NONE
highlight PmenuExtra guifg=#0f0f0f guibg=#cfcfff gui=NONE
          \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuExtraSel guifg=#ffffff guibg=#003f8f gui=NONE
          \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatch guifg=#0f0f0f guibg=#cfefff gui=NONE
          \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatchLead guifg=#0f0f0f guibg=#cfffff gui=NONE
          \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuMatchSel guifg=#ffffff guibg=#003faf gui=NONE
          \ ctermfg=fg ctermbg=16 cterm=NONE
highlight ComplMatchIns guifg=#3f3f3f guibg=#cfcfff gui=NONE
          \ ctermfg=fg ctermbg=16 cterm=NONE
highlight PmenuSbar guifg=fg guibg=#cfafbf gui=NONE
          \ ctermfg=fg ctermbg=138 cterm=NONE
highlight PmenuThumb guifg=fg guibg=#dfcfef gui=NONE
          \ ctermfg=fg ctermbg=141 cterm=NONE


" Tabline: "{{{2
highlight TabLine guifg=#0f0f0f guibg=#efdfff gui=NONE
          \ ctermfg=246 ctermbg=232 cterm=NONE
highlight TabLineSel guifg=#ffffff guibg=#0f1f8f gui=NONE
          \ ctermfg=253 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#0fafff guibg=#efefff gui=bold
          \ ctermfg=69 ctermbg=233 cterm=bold



" Tabpanel: "{{{2
highlight TabPanel guifg=#0f0f0f guibg=#efe0ff gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight TabPanelFill guifg=#0f0fff guibg=#ffefff gui=NONE
                \ ctermfg=128 ctermbg=0 cterm=NONE
highlight TabPanelSel guifg=#ffffff guibg=#0f3faf gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=underline
highlight TabPanelTitle guifg=#000000 guibg=#efefff gui=NONE
          \ ctermfg=232 ctermbg=244 cterm=NONE


" Cursor: "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
          \ ctermfg=NONE ctermbg=27 cterm=NONE
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
          \ ctermfg=16 ctermbg=235 cterm=NONE
highlight lCursor guifg=#0f0f0f guibg=#7ea3a6 gui=NONE
          \ ctermfg=234 ctermbg=24 cterm=NONE
highlight Cursor guifg=#000000 guibg=#6f8faf gui=NONE
          \ ctermfg=0 ctermbg=67 cterm=NONE
highlight CmdlineCursor guifg=#000000 guibg=#cfffff gui=NONE
          \ ctermfg=NONE ctermbg=250 cterm=NONE


" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#af1f3f gui=NONE
          \ ctermfg=0 ctermbg=124 cterm=NONE
endif


" Cursorline: "{{{2
highlight CursorLine guifg=NONE guibg=#f0e0f5 gui=NONE
          \ ctermfg=NONE ctermbg=253 cterm=NONE
highlight CursorLineNr guifg=#ff8f5f guibg=#dfdfff gui=bold
          \ ctermfg=165 ctermbg=53 cterm=bold
highlight CursorLineFold guifg=NONE guibg=#cfcfff gui=bold
          \ ctermfg=93 ctermbg=16 cterm=bold
highlight CursorLineSign guifg=NONE guibg=#8faf8f gui=bold
          \ ctermfg=93 ctermbg=16 cterm=bold



" Terminal: "{{{2
if has('terminal')
  highlight Terminal guifg=fg guibg=bg gui=NONE
            \ ctermfg=fg ctermbg=bg cterm=NONE
  " Terminal color
  let g:terminal_ansi_colors = [
        \ "#0c0c0c", "#850f1f", "#13710e", "#819c00",
        \ "#00378a", "#881798", "#3a96dd", "#8f8f8f",
        \ "#767676", "#872836", "#16960c", "#6a7f84",
        \ "#3b789f", "#94005e", "#61d6d6", "#989898"
        \ ]
endif






" }}}
" #- syntax highlighting groups -# "{{{1
highlight MatchParen guifg=#5f5f8f guibg=#bfbfff gui=bold,underline
          \ ctermfg=17 ctermbg=12 cterm=bold,underline
highlight comment guifg=#3f8fff guibg=bg gui=NONE
          \ ctermfg=19 ctermbg=bg cterm=NONE
highlight Constant guifg=#3faf5f guibg=bg gui=NONE
          \ ctermfg=29 ctermbg=bg cterm=NONE
highlight Special guifg=#8f8fff guibg=bg gui=NONE
          \ ctermfg=63 ctermbg=bg cterm=NONE
highlight Identifier guifg=#cf5f0f guibg=bg gui=NONE
          \ ctermfg=136 ctermbg=bg cterm=NONE
highlight Statement guifg=#6f5faf guibg=bg gui=NONE
          \ ctermfg=57 ctermbg=bg cterm=NONE
highlight PreProc guifg=#7faf2f guibg=bg gui=NONE
          \ ctermfg=35 ctermbg=bg cterm=NONE
highlight type guifg=#cf5f58 guibg=bg gui=NONE
          \ ctermfg=124 ctermbg=bg cterm=NONE
highlight underlined guifg=#0f7f3f guibg=bg gui=underline
          \ ctermfg=23 ctermbg=bg cterm=underline
highlight Ignore guifg=#1faf2f guibg=bg gui=bold
          \ ctermfg=16 ctermbg=bg cterm=bold
highlight Error guifg=#af1f3f guibg=#ffdfdf gui=NONE
          \ ctermfg=52 ctermbg=177 cterm=NONE
highlight Todo guifg=#8f8fff guibg=#dfdfdf gui=bold,underline
          \ ctermfg=12 ctermbg=153 cterm=bold,underline
highlight string guifg=#af3f5f guibg=bg gui=NONE
          \ ctermfg=124 ctermbg=bg cterm=NONE

" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
