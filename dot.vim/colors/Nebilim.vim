" #- Vim color file -# "{{{1
" NOTE: "{{{2
" MatchParen "{[(*)]}
" highlighting ZenkakuSpace /　/
" !date
" Guicolorscheme file
"

" #- Vim color file reset -#{{{1
" First remove all existing highlighting.
set background=dark
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

"#- colorscheme name -#{{{1
let g:colors_name = "Nebilim"

"#- highlighting groups for various occasions -# "{{{1
highlight Normal ctermbg=black ctermfg=white guifg=#cccccc guibg=#303030
highlight SpecialKey term=bold ctermfg=LightBlue gui=NONE guifg=#6f3faf guibg=#303030
highlight NonText term=NONE ctermfg=LightBlue gui=NONE guifg=#4ef9c8 guibg=#3f3f3f
highlight Directory term=bold ctermfg=LightCyan guifg=#5f7fff guibg=#303030
highlight ErrorMsg term=standout ctermbg=DarkBlue ctermfg=White gui=NONE guifg=#f84865 guibg=#303030
"search "{{{
highlight IncSearch term=reverse cterm=reverse gui=NONE guifg=#303030 guibg=#bf9fef
highlight Search term=reverse ctermbg=white ctermfg=Black gui=NONE guifg=#000000 guibg=#4f88f1
"}}}
highlight MoreMsg term=NONE ctermfg=LightGreen gui=NONE guifg=#95d5d9 guibg=#3a3b3c
"highlight ModeMsg term=bold cterm=bold ctermfg=white gui=NONE guifg=#bfd9c0 guibg=#3a3b3c
highlight ModeMsg term=bold cterm=bold ctermfg=white gui=NONE guifg=#bfd9ff guibg=#3a3b3c
highlight LineNr term=NONE ctermbg=black gui=NONE ctermfg=white gui=NONE guifg=#c3bcb4 guibg=#353535
highlight Question term=standout ctermfg=LightGreen gui=NONE guifg=#6ab3b5 guibg=#303030
"statusline "{{{
highlight StatusLine ctermbg=black ctermfg=white gui=NONE guifg=#cccccc guibg=#2f2f2f
highlight StatusLineNC term=reverse cterm=reverse gui=NONE guifg=#565234 guibg=#b2a089
"}}}
"highlight Title term=bold ctermfg=LightMagenta gui=NONE guifg=#a6dc72 guibg=#3d3d3d
highlight Title term=bold ctermfg=LightMagenta gui=NONE guifg=#72dc95
"highlight VertSplit term=reverse cterm=reverse gui=NONE guifg=#aaaaaa guibg=#363636
highlight VertSplit term=reverse cterm=reverse gui=NONE guifg=#3059ff guibg=#2f2f2f
"visual "{{{
"highlight Visual term=reverse ctermbg=blue gui=NONE guifg=#ffeedd guibg=#2f3f5f
highlight Visual term=reverse ctermbg=blue gui=NONE guifg=#ffeedd guibg=#2f4f8f
"
highlight VisualNOS term=underline,bold cterm=underline,bold gui=underline guibg=#aaeeee guifg=#3d3d3d
"}}}
highlight WarningMsg term=standout ctermfg=LightRed guifg=#ff4f5f guibg=#303030
"highlight WildMenu term=standout ctermbg=Yellow ctermfg=Black gui=NONE guifg=#3a85d2 guibg=#3f3f3f
highlight WildMenu term=standout ctermbg=Yellow ctermfg=Black gui=NONE guifg=#dfdfdf guibg=#2f3f5f
"fold "{{{
highlight Folded term=standout ctermbg=LightGrey ctermfg=DarkBlue guifg=#3f7fff guibg=#2f2f2f
"highlight FoldColumn term=standout ctermbg=LightGrey ctermfg=DarkBlue guifg=#3b54ec guibg=#303030
highlight FoldColumn term=standout ctermbg=LightGrey ctermfg=DarkBlue gui=bold guifg=#4bcf7f guibg=#2f2f2f
"}}}
"diff "{{{
highlight DiffAdd term=bold ctermbg=DarkBlue gui=NONE guifg=#2f7fff guibg=#303030
"
highlight DiffChange term=bold ctermbg=DarkMagenta gui=NONE guifg=#ffff9f guibg=#303030
"
"highlight DiffDelete term=bold ctermfg=Blue ctermbg=DarkCyan gui=bold guifg=#f62c74 guibg=#303030
highlight DiffDelete term=bold ctermfg=Blue ctermbg=DarkCyan gui=NONE guifg=#f62c74 guibg=#303030
highlight DiffText term=reverse cterm=bold ctermbg=Red gui=NONE guifg=#c9cbce guibg=#303030
"}}}
highlight SignColumn term=NONE gui=NONE guifg=#56a7f4  guibg=#303030
if v:version >= 703
  highlight Conceal term=NONE gui=NONE guifg=#000000  guibg=#303030
endif
"spell "{{{
highlight SpellBad term=NONE gui=NONE guifg=#795099 guibg=#303030
highlight SpellCap term=NONE gui=NONE guifg=#506399 guibg=#303030
highlight SpellRare term=NONE gui=NONE guifg=#509982 guibg=#303030
highlight SpellLocal term=NONE gui=NONE guifg=#998c50 guibg=#303030
"}}}
"pmenu "{{{
highlight Pmenu gui=NONE guifg=#aaaaaa guibg=#2f2f2f
highlight PmenuSel gui=NONE guifg=#cccccc guibg=#415676
highlight PmenuSbar gui=bold guifg=#9c9c9c guibg=#303030
highlight PmenuThumb gui=reverse guifg=#415676 guibg=#303030
"}}}
"tabline "{{{
highlight TabLine term=NONE gui=underline guifg=#000000 guibg=#9f9f9f
"highlight TabLineSel term=NONE gui=bold guifg=#ffffff guibg=#21569f
highlight TabLineSel term=NONE gui=NONE guifg=#ffffff guibg=#21569f
"highlight TabLineFill term=NONE gui=underline guifg=#415676 guibg=#303030
highlight TabLineFill term=NONE gui=underline guifg=#000000 guibg=#aaaaaa
"}}}
"cursor "{{{
"highlight CursorLine ctermbg=magenta guibg=#303030
highlight CursorLine ctermbg=magenta gui=NONE guifg=NONE guibg=#2f3f5f
highlight ColorColumn ctermbg=magenta gui=NONE guifg=NONE guibg=#892f30
" IME status color for cursor "{{{
if has('multi_byte_ime')
  "highlight Cursor gui=NONE guifg=#000000 guibg=#2f458f
  highlight Cursor gui=NONE guifg=#000000 guibg=#2fa58f
  highlight CursorIM gui=NONE guifg=#000000 guibg=#ffb6c1
endif
" }}}
" }}}
" }}}
" #- syntax highlighting group -#{{{1
highlight lCursor gui=NONE guifg=#575757 guibg=#7ea3a6
highlight MatchParen gui=bold guifg=#575757 guibg=#5f93cd
"highlight comment term=bold gui=NONE guifg=#2d79c6 guibg=#3f3f3f
highlight comment term=bold gui=NONE guifg=#5088e1 guibg=#303030
highlight Constant term=underline ctermfg=Magenta gui=NONE guifg=#aa7777 guibg=#303030
highlight Identifier gui=NONE guifg=#879fff guibg=#303030
highlight Special term=bold ctermfg=LightRed gui=NONE guifg=#cfffff guibg=#303030
if &t_Co > 8
  highlight Statement term=bold cterm=bold ctermfg=Yellow guifg=#5c71ab guibg=#303030
endif
"highlight Statement gui=NONE guifg=#9be188 guibg=#303030
highlight Statement gui=NONE guifg=#85baff guibg=#303030
"highlight PreProc guifg=#b871b7 guibg=#303030
highlight PreProc guifg=#aaffff guibg=#303030
"highlight type gui=NONE guifg=#71ffaf guibg=#303030
highlight type gui=NONE guifg=#61cf8f guibg=#303030
highlight underlined guifg=#6699cc guibg=#303030
highlight Ignore ctermfg=DarkGrey guifg=#a3ffa2 guibg=#303030
highlight Error gui=NONE guifg=#f84865 guibg=#303030
"highlight Todo gui=bold guifg=#a0a0ff guibg=#303030
highlight Todo gui=NONE guifg=#50a0ff guibg=#303030
highlight string gui=NONE guifg=#f0d8e6 guibg=#303030
highlight CursorColumn term=reverse ctermbg=Black guibg=#303030
" Setting of vimshell "{{{
highlight VimShellPrompt  gui=underline guifg=#aaffff guibg=NONE
highlight def link VimShellPrompt Identifier
highlight def link VimShellUserPrompt Special
highlight def link VimShellQuoted Special
highlight def link VimShellString Constant
highlight def link VimShellArguments Type
highlight def link VimShellConstants Constant
highlight def link VimShellSpecial PreProc
highlight def link VimShellVariable Special
highlight def link VimShellComment Comment
highlight def link VimShellHistory Special
highlight def link VimShellGrep Comment
highlight def link VimShellNormal Normal
highlight def link VimShellExe Statement
highlight def link VimShellDirectory Preproc
"highlight VimShellDirectory gui=NONE guifg=#3a85d2 guibg=#3a3b3c
highlight def link VimShellSocket Constant
highlight def link VimShellLink Comment
highlight def link VimShellDotFiles Identifier
highlight def link VimShellError Error
highlight def link VimShellErrorHidden Ignore
highlight def link VimShellUserPromptHidden Ignore
" }}}
" Setting of vimfiler "{{{
highlight VimFilerPrompt  gui=underline guifg=#cfaabf guibg=NONE
highlight def link FilerPrompt Identifier
highlight def link VimFilerNonMarkedFile Special
highlight def link VimFilerMarkedFile Statement
highlight def link VimFilerDirectory Directory
highlight def link VimFilerSize Constant
highlight def link VimFilerDateToday Statement
highlight def link VimFilerDateWeek Special
highlight def link VimFilerDate Identifier

highlight def link VimFilerTypeText Constant
highlight def link VimFilerTypeImage Type
highlight def link VimFilerTypeArchive Special
highlight def link VimFilerTypeExecute Statement
highlight def link VimFilerTypeMultimedia Identifier
highlight def link VimFilerTypeDirectory Preproc
highlight def link VimFilerTypeSystem Comment
" }}}
" }}}
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

" #- END -# "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
