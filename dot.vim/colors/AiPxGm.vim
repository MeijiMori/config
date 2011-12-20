" NOTE: "{{{1
" hilight /　/
" MatchParen "{([*])}

" #- Vim color file reset -# "{{{1
" First remove all existing highlighting.
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

"#- colorscheme name -#"{{{1
let g:colors_name = "AiPxGm"

"#- highlighting groups for various occasions -# "{{{1
highlight Normal ctermbg=black ctermfg=white guifg=#aaaaaa guibg=#1f1f1f
highlight SpecialKey term=bold ctermfg=LightBlue gui=NONE guifg=#4f3fff guibg=NONE
highlight NonText term=NONE ctermfg=LightBlue gui=bold guifg=#4effaf guibg=#202020
highlight Directory term=bold ctermfg=LightCyan guifg=#5fbfff guibg=NONE
highlight ErrorMsg term=standout ctermbg=DarkBlue ctermfg=White gui=NONE guifg=#4878f5 guibg=NONE
"search "{{{
highlight IncSearch term=reverse cterm=reverse gui=NONE guifg=#000000 guibg=#cc88e1
highlight Search term=reverse ctermbg=white ctermfg=Black gui=NONE guifg=#000000 guibg=#4f88f1
"}}}
highlight MoreMsg term=NONE ctermfg=LightGreen gui=NONE guifg=#ffffff guibg=#2f2f2f
highlight ModeMsg term=bold cterm=bold ctermfg=black gui=NONE guifg=#affff9 guibg=NONE
highlight LineNr term=NONE ctermbg=black gui=NONE ctermfg=white gui=NONE guifg=#cfccb4 guibg=NONE
highlight Question term=standout ctermfg=LightGreen gui=NONE guifg=#6ab3b5 guibg=NONE
"statusline "{{{
"highlight StatusLine ctermbg=black ctermfg=white gui=NONE guifg=#cccccc guibg=#0f2f4f
"highlight StatusLine ctermbg=black ctermfg=white gui=NONE guifg=#1f1f1f guibg=#b2a089
highlight StatusLine ctermbg=black ctermfg=white gui=NONE guifg=#202020 guibg=#bfbfbf
"highlight StatusLineNC term=reverse cterm=reverse gui=bold guifg=#202020 guibg=#bfbfbf
highlight StatusLineNC term=reverse cterm=reverse gui=NONE guifg=#565234 guibg=#b2a089
"}}}
highlight Title term=bold ctermfg=LightMagenta gui=NONE guifg=#72acf5 guibg=NONE
"highlight VertSplit term=reverse cterm=reverse gui=NONE guifg=#aaaaaa guibg=#363636
highlight VertSplit term=reverse cterm=reverse gui=bold guifg=#3059ff guibg=#0f0f0f
"visual "{{{
highlight Visual term=reverse ctermbg=blue gui=NONE guifg=#ffeedd guibg=#2f3f5f
highlight VisualNOS term=underline,bold cterm=underline,bold gui=underline guibg=#aaeeee guifg=#3d3d3d
"}}}
highlight WarningMsg term=standout ctermfg=LightRed guifg=#ff3845 guibg=NONE
"highlight WildMenu term=standout ctermbg=Yellow ctermfg=Black gui=NONE guifg=#3a85d2 guibg=#2f2f2f
highlight WildMenu term=standout ctermbg=Yellow ctermfg=Black gui=NONE guifg=#dfdfdf guibg=#2f3f5f
"fold "{{{
highlight Folded term=standout ctermbg=LightGrey ctermfg=DarkBlue guifg=#3f7fff guibg=#1f1f3f
highlight FoldColumn term=standout ctermbg=LightGrey ctermfg=DarkBlue gui=bold guifg=#aaaaaa guibg=#0f2f4f
"}}}
"diff "{{{
highlight DiffAdd term=bold ctermbg=DarkBlue gui=NONE guifg=#2f7fff guibg=NONE
"
highlight DiffChange term=bold ctermbg=DarkMagenta gui=NONE guifg=#ffff9f guibg=NONE
"
"highlight DiffDelete term=bold ctermfg=Blue ctermbg=DarkCyan gui=bold guifg=#f62c74 guibg=NONE
highlight DiffDelete term=bold ctermfg=Blue ctermbg=DarkCyan gui=NONE guifg=#f62c74 guibg=NONE
highlight DiffText term=reverse cterm=bold ctermbg=Red gui=NONE guifg=#c9cbce guibg=NONE
"}}}
highlight SignColumn term=NONE gui=NONE guifg=#afdfff guibg=NONE
if v:version >= 703
  highlight Conceal term=NONE gui=NONE guifg=#000000  guibg=NONE
endif
"spell "{{{
highlight SpellBad term=NONE gui=NONE guifg=#c950ff guibg=NONE
highlight SpellCap term=NONE gui=NONE guifg=#4f8fff guibg=NONE
highlight SpellRare term=NONE gui=NONE guifg=#50ff82 guibg=NONE
highlight SpellLocal term=NONE gui=NONE guifg=#bbcf6f guibg=NONE
"}}}
"pmenu "{{{
highlight Pmenu gui=NONE guifg=#aaaaaa guibg=#202020
highlight PmenuSel gui=NONE guifg=#cccccc guibg=#415676
highlight PmenuSbar gui=bold guifg=#9c9c9c guibg=NONE
highlight PmenuThumb gui=reverse guifg=#415676 guibg=NONE
"}}}
" tabline "{{{
" highlight TabLine term=NONE gui=underline guifg=#000000 guibg=#afafaf
" highlight TabLineSel term=NONE gui=bold guifg=#ffffff guibg=#21569f
" highlight TabLineFill term=NONE gui=underline guifg=#415676 guibg=NONE
highlight TabLine term=NONE gui=underline guifg=#5f5f5f guibg=#bfbfbf
highlight TabLineSel term=NONE gui=NONE guifg=#ffffff guibg=#1f3f6f
highlight TabLineFill term=NONE gui=underline guifg=#000000 guibg=#aaaaaa
"}}}
"cursor "{{{
highlight CursorColumn guibg=bg
"highlight CursorLine ctermbg=magenta guibg=NONE
highlight CursorLine ctermbg=magenta gui=NONE guifg=NONE guibg=#2f3f5f
highlight ColorColumn ctermbg=magenta gui=NONE guifg=NONE guibg=#892f30
highlight Cursor gui=NONE guifg=#000000 guibg=#7fffa9
" IME status color for cursor "{{{
if has('multi_byte_ime') || has('xim')
  highlight CursorIM gui=NONE guifg=#000000 guibg=#ff425f
endif
" }}}
"}}}

" #- syntax highlighting group -#"{{{1
highlight lCursor gui=NONE guifg=#575757 guibg=#7ea3a6
highlight MatchParen gui=bold guifg=#575757 guibg=#5f93cd
"highlight comment term=bold gui=NONE guifg=#2d79c6 guibg=#2f2f2f
highlight comment term=bold gui=NONE guifg=#5088e1 guibg=NONE
highlight Constant term=underline ctermfg=Magenta gui=NONE guifg=#aa7777 guibg=NONE
highlight Identifier gui=NONE guifg=#879fff guibg=NONE
highlight Special term=bold ctermfg=LightRed gui=NONE guifg=#cfffff guibg=NONE
if &t_Co > 8
  highlight Statement term=bold cterm=bold ctermfg=Yellow guifg=#5c71ab guibg=NONE
endif
"highlight Statement gui=NONE guifg=#9be188 guibg=NONE
highlight Statement gui=NONE guifg=#85baff guibg=NONE
"highlight PreProc guifg=#b871b7 guibg=NONE
highlight PreProc guifg=#aaffff guibg=NONE
"highlight type gui=NONE guifg=#71ffaf guibg=NONE
highlight type gui=NONE guifg=#61cf8f guibg=NONE
highlight underlined guifg=#6699cc guibg=NONE
highlight Ignore ctermfg=DarkGrey guifg=#a3ffa2 guibg=NONE
highlight Error gui=NONE guifg=#ff3845 guibg=NONE
"highlight Todo gui=bold guifg=#a0a0ff guibg=NONE
highlight Todo gui=NONE guifg=#50a0ff guibg=NONE
highlight string gui=NONE guifg=#f0d8e6 guibg=NONE
highlight CursorColumn term=reverse ctermbg=Black guibg=NONE
" Show ZenkakuSpace "{{{
au BufNewFile,BufRead * match ZenkakuSpace /　/
highlight ZenkakuSpace gui=NONE guifg=NONE guibg=#2f2f2f "}}}



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
  function! <SID>X(group, fg, bg, attr) "{{{
    if a:fg != ""
      exec "highlight " . a:group . " guifg=#" . a:fg . " ctermfg=" . <SID>rgb(a:fg)
    endif
    if a:bg != ""
      exec "highlight " . a:group . " guibg=#" . a:bg . " ctermbg=" . <SID>rgb(a:bg)
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

"END "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
