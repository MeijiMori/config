" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
"
"                                /
"                         w w 1wq
"                          f      w
"            /\_______/\    w       w2
"           /   o _ o   \    / w wwsa
"          I   =  -  =   I  /
"         /_I  w  w  w  I_\i
"        ~  I w - - - w I  *
"           \ _w_ _ _w_ /
"              "     "
" #- check -# "{{{1
let s:is_vinary_t = 1
if exists('g:' . 'is_vinary')
  if g:is_vinary  == 'black'
    let s:is_vinary_t = 1
    set background=dark
  elseif g:is_vinary == 'white'
    let s:is_vinary_t = 0
    set background=light
  endif
else
  let s:is_vinary_t = 0
  set background=light
endif


" #- First remove all existing highlighting. -# "{{{1
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" #- This colorscheme name -# "{{{1
let g:colors_name = expand('<sfile>:t:r')



" #- Highlighting groups for various occasions -# "{{{1
if s:is_vinary_t "{{{2
  "black
  highlight Normal guifg=#cfcfcf guibg=#15151a gui=NONE
                 \ ctermfg=15 ctermbg=233 cterm=NONE
  highlight SpecialKey guifg=#af2f6f guibg=bg gui=NONE
                 \ ctermfg=125 ctermbg=bg cterm=NONE
  highlight NonText guifg=#af3faf guibg=bg gui=bold
                 \ ctermfg=201 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                 \ ctermfg=33 ctermbg=NONE cterm=NONE
  highlight Directory guifg=#5fafaf guibg=bg gui=bold
                 \ ctermfg=87 ctermbg=bg cterm=bold
  highlight ErrorMsg guifg=#9f0f3f guibg=#ffafaf gui=underline
                 \ ctermfg=52 ctermbg=219 cterm=underline
  " Search "{{{3
  highlight IncSearch guifg=#0f2f1f guibg=#2fcf8f gui=bold,underline
                 \ ctermfg=22 ctermbg=86 cterm=bold,underline
  highlight Search guifg=#1f0f2f guibg=#3f2fff gui=bold,underline
                 \ ctermfg=17 ctermbg=27 cterm=bold,underline
  "}}}3
  highlight MoreMsg guifg=#001f00 guibg=#5fcf5f gui=underline
                 \ ctermfg=22 ctermbg=35 cterm=underline
  highlight ModeMsg guifg=#00001f guibg=#5f5fcf gui=underline
                 \ ctermfg=17 ctermbg=27 cterm=underline
  highlight LineNr guifg=#3fcfaf guibg=NONE gui=NONE
                 \ ctermfg=50 ctermbg=NONE cterm=NONE
  highlight CursorLineNr guifg=#3fcfaf guibg=NONE gui=NONE
                 \ ctermfg=50 ctermbg=16 cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                \ ctermfg=164 ctermbg=bg cterm=NONE
  highlight Question guifg=#8f1f3f guibg=#cf7faf gui=underline
                 \ ctermfg=52 ctermbg=224 cterm=underline
  " statusline "{{{3
  highlight StatusLine guifg=#cfcfcf guibg=#0a000f gui=underline
                 \ ctermfg=255 ctermbg=232 cterm=underline
  highlight StatusLineNC guifg=#3f3f3f guibg=#cfcfff gui=NONE
                 \ ctermfg=240 ctermbg=252 cterm=NONE
	" terminal "{{{3
	highlight Terminal guifg=#cfcfcf guibg=#00000f gui=NONE
									\ ctermfg=10 ctermbg=0 cterm=NONE
	highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
									\ ctermfg=0 ctermbg=10 cterm=NONE
	highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
									\ ctermfg=96 ctermbg=183 cterm=NONE
		" }}}3
  highlight VertSplit guifg=#7f7fcf guibg=#000000 gui=bold
                 \ ctermfg=147 ctermbg=232 cterm=bold
  highlight Title guifg=#ff5f5f guibg=bg gui=underline
                 \ ctermfg=203 ctermbg=bg cterm=underline
  " visual "{{{3
  highlight Visual guifg=#cfcfcf guibg=#1f1f3f gui=NONE
                 \ ctermfg=15 ctermbg=17 cterm=NONE
  highlight VisualNOS guifg=#ffffff guibg=#3f4f7f gui=bold,underline
                 \ ctermfg=189 ctermbg=111 cterm=bold,underline
  " }}}3
  highlight WarningMsg guifg=#8f2f4f guibg=#ffafaf gui=underline
                 \ ctermfg=52 ctermbg=129 cterm=underline
  highlight WildMenu guifg=#cfcfcf guibg=#0f1f3f gui=NONE
                 \ ctermfg=15 ctermbg=17 cterm=underline
  " fold "{{{3
  highlight Folded guifg=#afafaf guibg=#121015 gui=NONE
                 \ ctermfg=252 ctermbg=232 cterm=NONE
  highlight FoldColumn guifg=#8f8fff guibg=bg gui=bold
                 \ ctermfg=189 ctermbg=bg cterm=bold

  " diff "{{{3
  highlight DiffAdd guifg=fg guibg=#1f6f3f gui=NONE
                 \ ctermfg=NONE ctermbg=34 cterm=NONE
  highlight DiffChange guifg=fg guibg=#8f8f0f gui=NONE
                 \ ctermfg=NONE ctermbg=136 cterm=NONE
  highlight DiffDelete guifg=fg guibg=#8f2f3f gui=bold
                 \ ctermfg=NONE ctermbg=205 cterm=NONE
  highlight DiffText guifg=fg guibg=bg gui=NONE
                 \ ctermfg=NONE ctermbg=NONE cterm=NONE
  " }}}3
  highlight SignColumn guifg=#bf2f3f guibg=bg gui=NONE
                 \ ctermfg=161 ctermbg=bg cterm=NONE
  highlight Conceal guifg=#bf2f3f guibg=bg gui=NONE
                 \ ctermfg=146 ctermbg=99 cterm=NONE
  " spell "{{{3
  highlight SpellBad guifg=#ff3f5f guibg=bg gui=underline
                 \ ctermfg=9 ctermbg=bg cterm=underline
  highlight SpellCap guifg=#3f4fff guibg=bg gui=NONE
                 \ ctermfg=27 ctermbg=bg cterm=NONE
  highlight SpellRare guifg=#3fff6f guibg=bg gui=NONE
                 \ ctermfg=41 ctermbg=bg cterm=NONE
  highlight SpellLocal guifg=#cfff3f guibg=bg gui=NONE
                 \ ctermfg=190 ctermbg=bg cterm=NONE

  " pmenu "{{{3
  highlight Pmenu guifg=#cfcfcf guibg=#0f0f1f gui=NONE
                 \ ctermfg=252 ctermbg=233 cterm=NONE
  highlight PmenuSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
                 \ ctermfg=252 ctermbg=19 cterm=NONE
  highlight PmenuSbar guifg=#cfcfcf guibg=#1f1f1f gui=NONE
                 \ ctermfg=fg ctermbg=234 cterm=NONE
  highlight PmenuThumb guifg=#cfcfcf guibg=#4f0f2f gui=NONE
                 \ ctermfg=fg ctermbg=125 cterm=NONE

  " tabline "{{{3
  highlight TabLine guifg=#5f5f5f guibg=#efefff gui=NONE
                 \ ctermfg=244 ctermbg=252 cterm=NONE
  highlight TabLineSel guifg=#cfcfcf guibg=#1f2f5f gui=NONE
                 \ ctermfg=255 ctermbg=17 cterm=NONE
  highlight TabLineFill guifg=#2f3f5f guibg=#efefff gui=bold
                 \ ctermfg=19 ctermbg=253 cterm=bold

  " cursor "{{{3
  highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
                 \ ctermfg=232 ctermbg=237 cterm=NONE
  highlight CursorLine guifg=NONE guibg=#1f0f1f gui=NONE
                 \ ctermfg=253 ctermbg=53 cterm=NONE
  highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
                 \ ctermfg=253 ctermbg=17 cterm=NONE
  highlight Cursor guifg=#ffffff guibg=#5f1f3f gui=NONE
                 \ ctermfg=255 ctermbg=89 cterm=NONE
  " IME status color for cursor "{{{4
  if has('multi_byte_ime') || has('xim')
    highlight CursorIM guifg=fg guibg=#8f0f1f gui=NONE
                 \ ctermfg=0 ctermbg=88 cterm=NONE
  endif

  " }}}3
  "}}}2
else "{{{2
  " white
  highlight Normal guifg=#1f1f1f guibg=#fafcff gui=NONE
                 \ ctermfg=0 ctermbg=231 cterm=NONE
  highlight SpecialKey guifg=#8fcfaf guibg=bg gui=NONE
                 \ ctermfg=121 ctermbg=bg cterm=NONE
  highlight NonText guifg=#af3faf guibg=bg gui=bold
                 \ ctermfg=125 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
                 \ ctermfg=33 ctermbg=NONE cterm=NONE
  highlight Directory guifg=#6f6faf guibg=bg gui=bold
                 \ ctermfg=105 ctermbg=bg cterm=bold
  highlight ErrorMsg guifg=#8f2f4f guibg=#ffcfcf gui=underline
                 \ ctermfg=52 ctermbg=177 cterm=underline
  " search "{{{3
  highlight IncSearch guifg=#000000 guibg=#ffaf2f gui=bold
                 \ ctermfg=58 ctermbg=214 cterm=bold,underline
  highlight Search guifg=#000000 guibg=#5fcfaf gui=bold
                 \ ctermfg=22 ctermbg=85 cterm=bold,underline
  " }}}3
  highlight MoreMsg guifg=#0f3f5f guibg=#cfcfff gui=underline
                 \ ctermfg=17 ctermbg=69 cterm=underline
  highlight ModeMsg guifg=#0f5f3f guibg=#cfffcf gui=underline
                 \ ctermfg=17 ctermbg=123 cterm=underline
  highlight LineNr guifg=#af5f1f guibg=NONE gui=NONE
                 \ ctermfg=130 ctermbg=NONE cterm=NONE
  highlight CursorLineNr guifg=#af5f1f guibg=NONE gui=NONE
                 \ ctermfg=69 ctermbg=255 cterm=NONE
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
                  \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
                  \ ctermfg=164 ctermbg=bg cterm=NONE
  highlight Question guifg=#5f0f3f guibg=#ffcfcf gui=underline
                 \ ctermfg=52 ctermbg=212 cterm=underline
  " statusline "{{{3
  highlight StatusLine guifg=#5f5f5f guibg=#cfcfcf gui=NONE
                 \ ctermfg=241 ctermbg=253 cterm=NONE
  highlight StatusLineNC guifg=#6f6f6f guibg=#efdfcf gui=NONE
                 \ ctermfg=241 ctermbg=182 cterm=NONE
	" terminal "{{{4
  highlight Terminal guifg=#cfcfcf guibg=#00000f gui=NONE
        \ ctermfg=10 ctermbg=0 cterm=NONE
  highlight StatusLineTerm guifg=#afafaf guibg=#0f0f0f gui=NONE
        \ ctermfg=0 ctermbg=10 cterm=NONE
  highlight StatusLineTermNC guifg=#565234 guibg=#c0afcf gui=bold
        \ ctermfg=96 ctermbg=183 cterm=NONE
  " }}}3
  highlight VertSplit guifg=#6f6f6f guibg=#cfcfcf gui=bold
                 \ ctermfg=237 ctermbg=249 cterm=bold
  highlight Title guifg=#af5f8f guibg=bg gui=underline
                 \ ctermfg=212 ctermbg=225 cterm=underline
  " visual "{{{3
  highlight Visual guifg=#ffffff guibg=#1f2f5f gui=NONE
                 \ ctermfg=15 ctermbg=17 cterm=NONE
  highlight VisualNOS guifg=#ffffff guibg=#3f4f7f gui=bold,underline
                 \ ctermfg=253 ctermbg=31 cterm=bold,underline
  " }}}3
  highlight WarningMsg guifg=#cf2f4f guibg=#ffcfcf gui=NONE
                 \ ctermfg=52 ctermbg=219 cterm=NONE
  highlight WildMenu guifg=#cfcfcf guibg=#2f3f5f gui=NONE
                 \ ctermfg=15 ctermbg=25 cterm=NONE
  " fold "{{{3
  highlight Folded guifg=#3f3f3f guibg=#efefff gui=NONE
                 \ ctermfg=234 ctermbg=255 cterm=NONE
  highlight FoldColumn guifg=#5f5faf guibg=#fff0fc gui=bold
                 \ ctermfg=147 ctermbg=225 cterm=bold

  " diff "{{{3
  highlight DiffAdd guifg=fg guibg=#8fffcf gui=NONE
                 \ ctermfg=NONE ctermbg=122 cterm=NONE
  highlight DiffChange guifg=fg guibg=#ffffcf gui=NONE
                 \ ctermfg=NONE ctermbg=229 cterm=NONE
  highlight DiffDelete guifg=fg guibg=#ffafcf gui=bold
                 \ ctermfg=NONE ctermbg=219 cterm=NONE
  highlight DiffText guifg=#4f4f4f guibg=bg gui=NONE
                 \ ctermfg=NONE ctermbg=NONE cterm=NONE
  " }}}3
  highlight SignColumn guifg=#7f2f4f guibg=bg gui=NONE
                 \ ctermfg=152 ctermbg=NONE cterm=NONE
  highlight Conceal guifg=#7f2f4f guibg=bg gui=NONE
                 \ ctermfg=141 ctermbg=93 cterm=NONE
  " spell "{{{3
  highlight SpellBad guifg=#5f3f7f guibg=bg gui=underline
                 \ ctermfg=93 ctermbg=bg cterm=underline
  highlight SpellCap guifg=#3f4f7f guibg=bg gui=NONE
                 \ ctermfg=21 ctermbg=bg cterm=NONE
  highlight SpellRare guifg=#3f7f6f guibg=bg gui=NONE
                 \ ctermfg=29 ctermbg=bg cterm=NONE
  highlight SpellLocal guifg=#5faf3f guibg=bg gui=NONE
                 \ ctermfg=85 ctermbg=bg cterm=NONE

  " pmenu "{{{3
  highlight Pmenu guifg=#cfcfcf guibg=#0f0f1f gui=NONE
                 \ ctermfg=254 ctermbg=232 cterm=NONE
  highlight PmenuSel guifg=#dfdfdf guibg=#1f2f5f gui=NONE
                 \ ctermfg=254 ctermbg=17 cterm=NONE
  highlight PmenuSbar guifg=#cfcfcf guibg=#1f1f1f gui=NONE
                 \ ctermfg=fg ctermbg=235 cterm=NONE
  highlight PmenuThumb guifg=#cfcfcf guibg=#4f0f2f gui=NONE
                 \ ctermfg=fg ctermbg=89 cterm=NONE

  " tabline "{{{3
  highlight TabLine guifg=#5f5f5f guibg=#efefff gui=NONE
                 \ ctermfg=242 ctermbg=253 cterm=NONE
  highlight TabLineSel guifg=#cfcfcf guibg=#1f2f5f gui=NONE
                 \ ctermfg=255 ctermbg=17 cterm=NONE
  highlight TabLineFill guifg=#5f5f5f guibg=#efefff gui=NONE
                 \ ctermfg=240 ctermbg=253 cterm=NONE

  " tabpanel "{{{3
  highlight TabPanel guifg=#5f5f5f guibg=#efefff gui=NONE
                 \ ctermfg=242 ctermbg=253 cterm=NONE
  highlight TabPanelSel guifg=#cfcfcf guibg=#1f2f5f gui=NONE
                 \ ctermfg=255 ctermbg=17 cterm=NONE
  highlight TabPanelFill guifg=#5f5f5f guibg=#efefff gui=NONE
                 \ ctermfg=240 ctermbg=253 cterm=NONE

  " cursor "{{{3
  highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
                 \ ctermfg=232 ctermbg=236 cterm=NONE
  highlight CursorLine guifg=NONE guibg=#dfefff gui=NONE
                 \ ctermfg=NONE ctermbg=195 cterm=NONE
  highlight ColorColumn guifg=NONE guibg=#20355f gui=NONE
                 \ ctermfg=NONE ctermbg=17 cterm=NONE
  highlight Cursor guifg=#ffffff guibg=#5f1f3f gui=NONE
                 \ ctermfg=231 ctermbg=162 cterm=NONE
  " IME status color for cursor "{{{3
  if has('multi_byte_ime') || has('xim')
    highlight CursorIM guifg=#000000 guibg=#af2f3f gui=NONE
                 \ ctermfg=235 ctermbg=162 cterm=NONE
  endif

  " }}}3
endif
"}}}2


" #- syntax highlighting groups -# "{{{1
if s:is_vinary_t "{{{2
  " black
  highlight lCursor guifg=#3f3f3f guibg=#7ea3a6 gui=NONE
                 \ ctermfg=59 ctermbg=87 cterm=NONE
  highlight MatchParen guifg=#000000 guibg=#8f8fff gui=bold,underline
                 \ ctermfg=17 ctermbg=116 cterm=bold,underline
  highlight comment guifg=#8f4fff guibg=bg gui=NONE
                 \ ctermfg=98 ctermbg=bg cterm=NONE
  highlight Constant guifg=#3f2fff guibg=bg gui=NONE
                 \ ctermfg=25 ctermbg=bg cterm=NONE
  highlight Special guifg=#afafff guibg=bg gui=NONE
                 \ ctermfg=253 ctermbg=bg cterm=NONE
  highlight Identifier guifg=#ffaf8f guibg=bg gui=NONE
                 \ ctermfg=215 ctermbg=bg cterm=NONE
  highlight Statement guifg=#2fff8f guibg=bg gui=NONE
                 \ ctermfg=42 ctermbg=bg cterm=NONE
  highlight PreProc guifg=#ff5faf guibg=bg gui=NONE
                 \ ctermfg=212 ctermbg=bg cterm=NONE
  highlight Type guifg=#2f3fff guibg=bg gui=NONE
                 \ ctermfg=27 ctermbg=bg cterm=NONE
  highlight underlined guifg=#5fcf8f guibg=bg gui=underline
                 \ ctermfg=50 ctermbg=bg cterm=underline
  highlight Ignore guifg=#1f3f2f guibg=bg gui=bold
                 \ ctermfg=22 ctermbg=bg cterm=bold
  highlight Error guifg=#ff1f4f guibg=#ffafaf gui=NONE
                 \ ctermfg=52 ctermbg=219 cterm=NONE
  highlight Todo guifg=#3f3f3f guibg=#cfcfff gui=bold,underline
                 \ ctermfg=236 ctermbg=249 cterm=bold,underline
  highlight String guifg=#5f5fff guibg=bg gui=NONE
                 \ ctermfg=105 ctermbg=bg cterm=NONE
else "{{{2
  " white
  highlight lCursor guifg=#3f3f3f guibg=#7ea3a6 gui=NONE
                 \ ctermfg=146 ctermbg=80 cterm=NONE
  highlight MatchParen guifg=#000000 guibg=#afffcf gui=bold
                 \ ctermfg=17 ctermbg=159 cterm=bold,underline
  highlight comment guifg=#1f4faf guibg=bg gui=NONE
                 \ ctermfg=26 ctermbg=bg cterm=NONE
  highlight Constant guifg=#8f2f5f guibg=bg gui=NONE
                 \ ctermfg=88 ctermbg=bg cterm=NONE
  highlight Special guifg=#4f4f5f guibg=bg gui=NONE
                 \ ctermfg=57 ctermbg=bg cterm=NONE
  highlight Identifier guifg=#4f3f3f guibg=bg gui=NONE
                 \ ctermfg=61 ctermbg=bg cterm=NONE
  highlight Statement guifg=#7f0f7f guibg=bg gui=NONE
                 \ ctermfg=55 ctermbg=bg cterm=NONE
  highlight PreProc guifg=#6f3f8f guibg=bg gui=NONE
                 \ ctermfg=93 ctermbg=bg cterm=NONE
  highlight type guifg=#0f5f1f guibg=bg gui=NONE
                 \ ctermfg=29 ctermbg=bg cterm=NONE
  highlight underlined guifg=#1f5f3f guibg=bg gui=underline
                 \ ctermfg=36 ctermbg=bg cterm=underline
  highlight Ignore guifg=#3f3f3f guibg=bg gui=bold
                 \ ctermfg=238 ctermbg=bg cterm=bold
  highlight Error guifg=#7f1f4f guibg=#ffcfcf gui=NONE
                 \ ctermfg=52 ctermbg=217 cterm=NONE
  highlight Todo guifg=#af2f5f guibg=#ffcfef gui=bold,underline
                 \ ctermfg=52 ctermbg=219 cterm=bold,underline
  highlight string guifg=#2f2f5f guibg=bg gui=NONE
                 \ ctermfg=19 ctermbg=bg cterm=NONE
endif
"}}}2


" #- End -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
