" #- vim colorscheme file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" Made at 2011-04-05
" Guicolorscheme file
"

" #- Vim color file reset -#"{{{1
" First remove all existing highlighting.
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

" #- colorscheme name -#"{{{1
let g:colors_name = expand('<sfile>:t:r')

" #- highlighting groups for various occasions -# "{{{1
highlight Normal guifg=#fdfdfd guibg=#303037 gui=NONE
          \ ctermfg=254 ctermbg=233 cterm=NONE
highlight SpecialKey guifg=#8f5fff guibg=NONE gui=bold
          \ ctermfg=63 ctermbg=bg cterm=bold
highlight NonText guifg=#8f8fff guibg=#303030 gui=bold
          \ ctermfg=69 ctermbg=bg cterm=bold
highlight EndOfBuffer guifg=#6f79ff guibg=bg gui=bold
          \ ctermfg=33 ctermbg=NONE cterm=NONE
highlight Directory guifg=#cf3f8f guibg=bg gui=bold
          \ ctermfg=161 ctermbg=bg cterm=bold
highlight ErrorMsg guifg=#5f1f2f guibg=#cf8faf gui=underline
          \ ctermfg=88 ctermbg=176 cterm=underline
" search "{{{2
highlight IncSearch guifg=fg guibg=#8f3f5f gui=underline,bold
          \ ctermfg=255 ctermbg=125 cterm=bold,underline
highlight Search guifg=fg guibg=#3f8f5f gui=underline,bold
          \ ctermfg=248 ctermbg=35 cterm=bold,underline
"}}}2
highlight MoreMsg guifg=#0f5f3f guibg=#3faf7f gui=underline
          \ ctermfg=22 ctermbg=42 cterm=underline
highlight ModeMsg guifg=#6f6f8f guibg=#cfcfff gui=underline
          \ ctermfg=238 ctermbg=250 cterm=underline
highlight LineNr  guifg=#c3bcb4 guibg=NONE gui=NONE
          \ ctermfg=244 ctermbg=NONE cterm=NONE
highlight CursorLineNr  guifg=#c3bcb4 guibg=NONE gui=NONE
          \ ctermfg=238 ctermbg=249 cterm=bold
highlight LineNrAbove guifg=#9f4fff guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight LineNrBelow guifg=#9f9f7f guibg=NONE gui=NONE
          \ ctermfg=164 ctermbg=bg cterm=NONE
highlight Question guifg=#0f3f5f guibg=#3f7faf gui=underline
          \ ctermfg=21 ctermbg=27 cterm=underline
" statusline "{{{2
highlight StatusLine guifg=#aaaaaa guibg=#2f2f2f gui=NONE
          \ ctermfg=243 ctermbg=233 cterm=NONE
highlight StatusLineNC guifg=#6f6f8f guibg=#cfcfff gui=underline
          \ ctermfg=238 ctermbg=249 cterm=underline
"}}}2
highlight VertSplit guifg=#1f5fdf guibg=#0f0f2f gui=NONE
          \ ctermfg=21 ctermbg=233 cterm=NONE
highlight Title guifg=#72dc95 guibg=NONE gui=underline
          \ ctermfg=48 ctermbg=NONE cterm=underline
" visual "{{{2
highlight Visual guifg=#ffffff guibg=#1f2f5f gui=NONE
          \ ctermfg=7 ctermbg=17 cterm=NONE
highlight VisualNOS guibg=#aaeeee guifg=#3d3d3d gui=underline
          \ ctermfg=17 ctermbg=80 cterm=underline
"}}}2
highlight WarningMsg guifg=#5f2f0f guibg=#ff7f5f gui=underline
          \ ctermfg=234 ctermbg=167 cterm=underline
highlight WildMenu guifg=#1f3f5f guibg=#5f8fff gui=underline
          \ ctermfg=17 ctermbg=27 cterm=underline
" fold "{{{2
highlight Folded guifg=#3f5faf guibg=#202025 gui=NONE
          \ ctermfg=26 ctermbg=0 cterm=NONE
highlight FoldColumn guifg=#3b54ec guibg=#25252f gui=bold
          \ ctermfg=26 ctermbg=0 cterm=bold


" diff "{{{2
highlight DiffAdd guifg=fg guibg=#3f8f5f gui=NONE
          \ ctermfg=fg ctermbg=29 cterm=NONE
highlight DiffChange guifg=fg guibg=#bf8f5f gui=NONE
          \ ctermfg=fg ctermbg=130 cterm=NONE
highlight DiffDelete guifg=fg guibg=#8f3f5f gui=bold
          \ ctermfg=fg ctermbg=161 cterm=NONE
highlight DiffText guifg=fg guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
"}}}2
highlight SignColumn guifg=#a65774 guibg=bg gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
" spell "{{{2
highlight SpellBad guifg=#cf2f5f guibg=bg gui=NONE
          \ ctermfg=125 ctermbg=bg cterm=NONE
highlight SpellCap guifg=#5f5fff guibg=bg gui=NONE
          \ ctermfg=26 ctermbg=bg cterm=NONE
highlight SpellRare guifg=#5fff8f guibg=bg gui=NONE
          \ ctermfg=42 ctermbg=bg cterm=NONE
highlight SpellLocal guifg=#bfcf5f guibg=bg gui=NONE
          \ ctermfg=228 ctermbg=bg cterm=NONE


" pmenu "{{{2
highlight Pmenu guifg=#cfcfff guibg=#0f1f2f gui=NONE
          \ ctermfg=253 ctermbg=234 cterm=NONE
highlight PmenuSel guifg=#0f0f0f guibg=#cf8faf gui=NONE
          \ ctermfg=233 ctermbg=177 cterm=NONE
highlight PmenuSbar guifg=fg guibg=#2f2f5f gui=NONE
          \ ctermfg=fg ctermbg=17 cterm=NONE
highlight PmenuThumb guifg=#5f0f0f guibg=#8f2f2f gui=underline
          \ ctermfg=88 ctermbg=161 cterm=underline


" tabline "{{{2
highlight TabLine guifg=#cccccc guibg=bg gui=underline
          \ ctermfg=252 ctermbg=234 cterm=underline
highlight TabLineSel guifg=#cccccc guibg=#2f3f5f gui=NONE
          \ ctermfg=252 ctermbg=17 cterm=NONE
highlight TabLineFill guifg=#415676 guibg=bg gui=underline
          \ ctermfg=24 ctermbg=233 cterm=underline
" tabpanel "{{{2
highlight TabPanel guifg=#cfcfcf guibg=bg gui=NONE
                \ ctermfg=fg ctermbg=0 cterm=NONE
highlight TabPanelFill guifg=#0f0fff guibg=#302f4f gui=NONE
                \ ctermfg=128 ctermbg=0 cterm=NONE
highlight TabPanelSel guifg=#cfcfcf guibg=#0f3f8f gui=NONE
                \ ctermfg=fg ctermbg=16 cterm=underline

" cursor "{{{2
highlight ColorColumn guifg=NONE guibg=#cfcfff gui=NONE
          \ ctermfg=NONE ctermbg=234 cterm=NONE
highlight CursorLine guifg=NONE guibg=#3f3f3f gui=NONE
          \ ctermfg=NONE ctermbg=235 cterm=NONE
highlight CursorColumn guifg=#000000 guibg=#2f2f2f gui=NONE
          \ ctermfg=NONE ctermbg=235 cterm=NONE
highlight Cursor guifg=#0f0f0f guibg=#cfcfff gui=NONE
          \ ctermfg=0 ctermbg=252 cterm=NONE
" IME status color for cursor "{{{3
if has('multi_byte_ime') || has('xim')
  highlight CursorIM guifg=#000000 guibg=#ff5661 gui=NONE
          \ ctermfg=0 ctermbg=9 cterm=NONE
endif
"}}}2
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


" #- syntax highlighting group -# "{{{1
highlight lCursor guifg=#575757 guibg=#7ea3a6 gui=NONE
          \ ctermfg=fg ctermbg=bg cterm=NONE
highlight MatchParen guifg=#0f0f0f guibg=#5f5fcf gui=bold
          \ ctermfg=17 ctermbg=33 cterm=bold,underline
highlight comment guifg=#5088e1 guibg=bg gui=NONE
          \ ctermfg=27 ctermbg=bg cterm=NONE
highlight Constant guifg=#aa7777 guibg=bg gui=NONE
          \ ctermfg=167 ctermbg=bg cterm=NONE
highlight Special guifg=#cfffcf guibg=bg gui=NONE
          \ ctermfg=123 ctermbg=bg cterm=NONE
highlight Identifier guifg=#77aa77 guibg=bg gui=NONE
          \ ctermfg=45 ctermbg=bg cterm=NONE
highlight Statement guifg=#77aaaa guibg=bg gui=NONE
          \ ctermfg=67 ctermbg=bg cterm=NONE
highlight PreProc guifg=#aaffff guibg=bg gui=NONE
          \ ctermfg=39 ctermbg=bg cterm=NONE
highlight type guifg=#71c9af guibg=bg gui=NONE
          \ ctermfg=87 ctermbg=bg cterm=NONE
highlight underlined guifg=#6699cc guibg=bg gui=underline
          \ ctermfg=32 ctermbg=bg cterm=underline
highlight Ignore guifg=#7f7f7f guibg=bg gui=bold
          \ ctermfg=243 ctermbg=bg cterm=bold
highlight Error guifg=#ff2f5f guibg=bg gui=NONE
          \ ctermfg=161 ctermbg=bg cterm=NONE
highlight Todo guifg=#a0a0ff guibg=bg gui=bold,underline
          \ ctermfg=69 ctermbg=bg cterm=bold,underline
highlight string guifg=#ffcfcf guibg=bg gui=NONE
          \ ctermfg=182 ctermbg=bg cterm=NONE

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


