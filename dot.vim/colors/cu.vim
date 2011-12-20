" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /¡¡/
" !date
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
let g:colors_name="cu"

"#- Highlighting groups for various occasions -# "{{{1

highlight Normal       guifg=#ffffff       guibg=#00000f       gui=NONE
      \   ctermfg=white       ctermbg=black       cterm=NONE
highlight SpecialKey   guifg=#5f1fff       guibg=NONE          gui=NONE
highlight NonText      guifg=#3f22ff       guibg=NONE          gui=NONE
      \   ctermfg=yellow      ctermbg=NONE        cterm=NONE
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
highlight Question     guifg=#2f5f7f       guibg=#afcfff          gui=NONE
      \   ctermfg=green       ctermbg=NONE        cterm=NONE
" statusline "{{{
highlight StatusLine   guifg=#0f1f3f       guibg=#cfcfdf       gui=NONE
      \   ctermfg=black       ctermbg=white       cterm=bold
highlight StatusLineNC guifg=#56523f       guibg=#c4b2ab       gui=NONE
      \   ctermfg=darkgray    ctermbg=white       cterm=NONE
"}}}
highlight VertSplit    guifg=#c2bfa5       guibg=#c2bfa5       gui=NONE
      \   ctermfg=white       ctermbg=white       cterm=NONE
highlight Title        guifg=#dd4452       guibg=NONE          gui=NONE
      \   ctermfg=red         ctermbg=NONE        cterm=bold
" visual "{{{
highlight Visual       guifg=#ffffff       guibg=#0f1f3f       gui=NONE
      \   ctermfg=white       ctermbg=lightblue   cterm=NONE
highlight VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold guifg=#cfcfcf guibg=#1f1f3f
"}}}
highlight WarningMsg   guifg=#af2f3f       guibg=NONE         gui=NONE
      \   ctermfg=yellow      ctermbg=NONE        cterm=bold
highlight WildMenu     guifg=#bfbfbf       guibg=#0f1f3f       gui=NONE
      \   ctermfg=white       ctermbg=darkblue    cterm=bold
" fold "{{{
highlight Folded       guifg=#c2bfa5       guibg=#050505       gui=underline
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
"}}}
highlight SignColumn term=NONE gui=NONE guibg=NONE guifg=#ffffb0
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
highlight PmenuSel     guifg=#ffffff       guibg=#1f3f5f       gui=NONE
      \   ctermfg=white       ctermbg=lightblue   cterm=NONE
highlight PmenuSbar    guifg=NONE          guibg=#0f0f2f       gui=NONE
      \   ctermfg=black       ctermbg=black       cterm=NONE
highlight PmenuThumb   guifg=NONE          guibg=#7f1f2f       gui=NONE
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
" cursor "{{{
highlight CursorLine   guifg=NONE          guibg=#1b1b1b       gui=NONE
      \   ctermfg=NONE        ctermbg=NONE        cterm=NONE
highlight CursorColumn guifg=NONE          guibg=#1b1b1b       gui=NONE
      \   ctermfg=NONE        ctermbg=NONE        cterm=NONE
highlight Cursor       guifg=#cfcfcf       guibg=#3f3f3f       gui=NONE
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

" #- Color function -# "{{{1
" this code is written mrkn256.vim
if has("gui_running") || &t_Co == 88 || &t_Co == 256
  " functions "{{{
  " returns an approximate grey index for the given grey level
  function! <SID>grey_number(x) "{{{
    if &t_Co == 88
      if a:x < 23
        return 0
      elseif a:x < 69
        return 1
      elseif a:x < 103
        return 2
      elseif a:x < 127
        return 3
      elseif a:x < 150
        return 4
      elseif a:x < 173
        return 5
      elseif a:x < 196
        return 6
      elseif a:x < 219
        return 7
      elseif a:x < 243
        return 8
      else
        return 9
      endif
    else
      if a:x < 14
        return 0
      else
        let l:n = (a:x - 8) / 10
        let l:m = (a:x - 8) % 10
        if l:m < 5
          return l:n
        else
          return l:n + 1
        endif
      endif
    endif
  endfun "}}}

  " returns the actual grey level represented by the grey index
  function! <SID>grey_level(n) "{{{
    if &t_Co == 88
      if a:n == 0
        return 0
      elseif a:n == 1
        return 46
      elseif a:n == 2
        return 92
      elseif a:n == 3
        return 115
      elseif a:n == 4
        return 139
      elseif a:n == 5
        return 162
      elseif a:n == 6
        return 185
      elseif a:n == 7
        return 208
      elseif a:n == 8
        return 231
      else
        return 255
      endif
    else
      if a:n == 0
        return 0
      else
        return 8 + (a:n * 10)
      endif
    endif
  endfun "}}}

  " returns the palette index for the given grey index
  function! <SID>grey_color(n) "{{{
    if &t_Co == 88
      if a:n == 0
        return 16
      elseif a:n == 9
        return 79
      else
        return 79 + a:n
      endif
    else
      if a:n == 0
        return 16
      elseif a:n == 25
        return 231
      else
        return 231 + a:n
      endif
    endif
  endfun "}}}

  " returns an approximate color index for the given color level
  function! <SID>rgb_number(x) "{{{
    if &t_Co == 88
      if a:x < 69
        return 0
      elseif a:x < 172
        return 1
      elseif a:x < 230
        return 2
      else
        return 3
      endif
    else
      if a:x < 75
        return 0
      else
        let l:n = (a:x - 55) / 40
        let l:m = (a:x - 55) % 40
        if l:m < 20
          return l:n
        else
          return l:n + 1
        endif
      endif
    endif
  endfun "}}}

  " returns the actual color level for the given color index
  function! <SID>rgb_level(n) "{{{
    if &t_Co == 88
      if a:n == 0
        return 0
      elseif a:n == 1
        return 139
      elseif a:n == 2
        return 205
      else
        return 255
      endif
    else
      if a:n == 0
        return 0
      else
        return 55 + (a:n * 40)
      endif
    endif
  endfun "}}}

  " returns the palette index for the given R/G/B color indices
  function! <SID>rgb_color(x, y, z) "{{{
    if &t_Co == 88
      return 16 + (a:x * 16) + (a:y * 4) + a:z
    else
      return 16 + (a:x * 36) + (a:y * 6) + a:z
    endif
  endfun "}}}

  " returns the palette index to approximate the given R/G/B color levels
  function! <SID>color(r, g, b) "{{{
    " get the closest grey
    let l:gx = <SID>grey_number(a:r)
    let l:gy = <SID>grey_number(a:g)
    let l:gz = <SID>grey_number(a:b)

    " get the closest color
    let l:x = <SID>rgb_number(a:r)
    let l:y = <SID>rgb_number(a:g)
    let l:z = <SID>rgb_number(a:b)

    if l:gx == l:gy && l:gy == l:gz
      " there are two possibilities
      let l:dgr = <SID>grey_level(l:gx) - a:r
      let l:dgg = <SID>grey_level(l:gy) - a:g
      let l:dgb = <SID>grey_level(l:gz) - a:b
      let l:dgrey = (l:dgr * l:dgr) + (l:dgg * l:dgg) + (l:dgb * l:dgb)
      let l:dr = <SID>rgb_level(l:gx) - a:r
      let l:dg = <SID>rgb_level(l:gy) - a:g
      let l:db = <SID>rgb_level(l:gz) - a:b
      let l:drgb = (l:dr * l:dr) + (l:dg * l:dg) + (l:db * l:db)
      if l:dgrey < l:drgb
        " use the grey
        return <SID>grey_color(l:gx)
      else
        " use the color
        return <SID>rgb_color(l:x, l:y, l:z)
      endif
    else
      " only one possibility
      return <SID>rgb_color(l:x, l:y, l:z)
    endif
  endfun

  " returns the palette index to approximate the 'rrggbb' hex string
  function! <SID>rgb(rgb)
    let l:r = ("0x" . strpart(a:rgb, 0, 2)) + 0
    let l:g = ("0x" . strpart(a:rgb, 2, 2)) + 0
    let l:b = ("0x" . strpart(a:rgb, 4, 2)) + 0

    return <SID>color(l:r, l:g, l:b)
  endfun "}}}

  " sets the highlighting for the given group
  function! <SID>X(group, fg, NONE, attr) "{{{
    if a:fg != ""
      exec "highlight " . a:group . " guifg=#" . a:fg . " ctermfg=" . <SID>rgb(a:fg)
    endif
    if a:NONE != ""
      exec "highlight " . a:group . " guibg=#" . a:NONE . " ctermbg=" . <SID>rgb(a:NONE)
    endif
    if a:attr != ""
      exec "highlight " . a:group . " gui=" . a:attr . " cterm=" . a:attr
    endif
  endfun "}}}
  " }}}
  " Gui
else
  " Cui
endif

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
