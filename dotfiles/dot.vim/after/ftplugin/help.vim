" For help

let s:save_cpo = &cpo
set cpo&vim

" Option
setlocal signcolumn=no


" statusline
setlocal statusline=%!MakeHelpStatusline()

if !exists("*MakeHelpStatusline")
  function! MakeHelpStatusline() abort "{{{

    let l:sts =''

    let l:sts = '[%Y]'
    "let l:sts = '[%h]'
    let l:sts .= ' '
    let l:sts .= '%f'
    let l:sts .= ' '
    let l:sts .= "%{'['.(&fileencoding!='' ? &fileencoding : &encoding)}"
    let l:sts .= ':'
    let l:sts .= '%{&fileformat}]'
    let l:sts .= ' '
    let l:sts .= '%y'
    let l:sts .= '%r'
    let l:sts .= '%h'
    let l:sts .= '%w'
    let l:sts .= '%q'
    let l:sts .= '%m'
    let l:sts .= '%='
    let l:sts .= '%l'
    let l:sts .= '/'
    let l:sts .= '%L'
    let l:sts .= ' '
    let l:sts .= '[%-03p%%]'
    let l:sts .= '%('
    let l:sts .= '%)'

    "echomsg l:sts
    return l:sts

  endfunction "}}}
endif

" option undo
if exists('b:undo_ftplugin')
    let b:undo_ftplugin .= ' |'
else
    let b:undo_ftplugin = ''
endif
let b:undo_ftplugin .= '
      \ setlocal signcolumn< statusline<'

let &cpo = s:save_cpo
unlet s:save_cpo
