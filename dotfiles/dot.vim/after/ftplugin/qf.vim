" For quickfix setting

" written by thinca
" https://thinca.hatenablog.com/entry/20130708/1373210009
" +a

let s:save_cpo = &cpo
set cpo&vim

" Load c/lfilter
packadd cfilter


" Option
setlocal nonumber
setlocal nocursorline
setlocal signcolumn=no

let w:quickfix_type = ''
if exists('w:quickfix_title')
  if match(w:quickfix_title, '^\:l.*') < 0
    let w:quickfix_type = 'Quickfix'
  else
    let w:quickfix_type = 'Location'
  endif
endif


" status line
"setlocal statusline="%t%{exists('w:quickfix_title')? ' '.w:quickfix_title : ''} %=%-15(%l,%c%V%) %P \ %L"
"setlocal statusline="%t%{exists('w:quickfix_title')? ' '.w:quickfix_title : ''} %=%-15(%l,%c%V%) %l / %L  [%P] "

setlocal statusline=%!MakeQfStatusline()

if !exists("*MakeQfStatusline")
  function! MakeQfStatusline() abort "{{{

    let l:qstatusline = ''
    let l:pretitle = ''

    "if win_gettype('%') == 'loclist'
    "  let l:pretitle = '[Location List]'
    "elseif win_gettype('%') == 'quickfix'
    "  let l:pretitle = '[Quickfix List]'
    "else
    "  let l:pretitle = ''
    "endif
    "let l:pretitle = "'%t' ==? '[Quickfixリスト]' ? '[QuickFix List]' :
    "      \           '%t' ==? '[ロケーションリスト]' ? '[Location List]' : '%t'"
    "echomsg l:pretitle

    if exists('w:quickfix_type')
      if w:quickfix_type != ''
        if w:quickfix_type == 'Quickfix'
          let l:pretitle = '[QuickFix List]'
        elseif w:quickfix_type == 'Location'
          let l:pretitle = '[Location List]'
        endif
      endif
    else
      if exists('w:quickfix_title')
        if match(w:quickfix_title, '^\:l.*') < 0
          let l:pretitle = '[QuickFix List]'
        else
          let l:pretitle = '[Location List]'
        endif
      endif
    endif

    "let l:max = line('$')
    "let l:list = getloclist(0)
    "if empty(l:list) || len(l:list) != l:max
    "  let l:pretitle = '[QuickFix List]'
    "else
    "  let l:pretitle = '[Location List]'
    "endif

    let l:qstatusline .= l:pretitle
    "echomsg printf("l:pretitle : %s",l:pretitle)
    let l:qstatusline .= '%y'
    let l:qstatusline .= "%{exists('w:quickfix_title')? ' ' .. w:quickfix_title : ''}"
    let l:qstatusline .= '%=%-15(%l,%c%V%)'
    let l:qstatusline .= ' '
    let l:qstatusline .= '%l / %L'
    let l:qstatusline .= ' '
    let l:qstatusline .= '[%P]'
    let l:qstatusline .= ' '

    return l:qstatusline

  endfunction "}}}
endif

" j k press next item
noremap <silent> <buffer> <expr> j <SID>jk(v:count1)
noremap <silent> <buffer> <expr> k <SID>jk(-v:count1)

" from vital.vim Math.vim modulo
if !exists("*modulo")
function! s:modulo(n, m) abort "{{{
  let d = a:n * a:m < 0 ? 1 : 0
  return a:n + (-(a:n + (0 < a:m ? d : -d)) / a:m + d) * a:m
endfunction

function! s:jk(motion)
  let max = line('$')
  let list = getloclist(0)
  if empty(list) || len(list) != max
    let list = getqflist()
  endif
  let cur = line('.') - 1
  let pos = <SID>modulo(cur + a:motion, max)
  let m = 0 < a:motion ? 1 : -1
  while cur != pos && list[pos].bufnr == 0
    let pos = s:modulo(pos + m, max)
  endwhile
  return (pos + 1) . 'G'
endfunction "}}}
endif



" Press p preview
"noremap <buffer> p  <CR>zz<C-w>p
noremap <silent> <buffer> p  <ESC>:call <SID>markuppreviewitem()<CR><CR>zz<C-w>p
"noremap <silent> <buffer> p  <ESC>:call <SID>popuppreviewitem()<CR><CR>zz<C-w>p

if !exists("*markuppreviewitem")
  function! s:markuppreviewitem() abort "{{{
    let l:sign_id = 2 " sign id
    let l:sign_group_name = "qfpreview" "sign group name
    let l:sign_name = "qfpreviewmarker" "sign name
    " Defile sign
    "execute printf("sign define %s text=>> texthl=NONE linehl=cursorline numhl=CursorLineNr", l:sign_name)
    "sign define qfpreviewmarker text=>> texthl=NONE linehl=CursorLine numhl=CursorLineNr
    call sign_define(l:sign_name, {
          \ 'text'    : '>>',
          \ 'texttl'  : 'NONE',
          \ 'linehl'  : 'CursorLine',
          \ 'numhl'   : 'CursorLineNr'
          \ })

    let l:max = line('$')
    let l:list = getloclist(0)
    if empty(l:list) || len(l:list) != l:max
      let l:list = getqflist()
    endif
    let l:pos = getpos(".")
    let l:cur = l:pos[1] " bufnum, lnum, col, off
    let l:oldbufnr = l:pos[0]
    let l:oldlnum = l:pos[1]
    let l:oldcol = l:pos[2]
    let l:oldoff = l:pos[3]
    "echo printf("l:oldbufnr : %d l:oldlnum : %d l:oldcol: %d l:oldoff %d",
    "      \ l:oldbufnr, l:oldlnum, l:oldcol, l:oldoff)
    "echo printf("l:cur : %d", l:cur)
    let l:pressppos = l:list[l:cur-1].lnum
    "echo printf("l:pressppos : %d", l:pressppos)
    let l:bufnr = l:list[l:cur-1].bufnr
    call sign_place(l:sign_id, l:sign_group_name, l:sign_name, l:bufnr,
          \ {'lnum' : l:pressppos})
    "let l:markuptime = &updatetime
    call setpos(".", [l:oldbufnr, l:oldlnum, l:oldcol, l:oldoff])
    let l:markuptime = 2000 "ms
    let l:markeroff = timer_start(l:markuptime, function('s:sign_invisible'))
  endfunction "}}}
endif

if !exists("*sign_invisible")
  function! s:sign_invisible(timer) abort "{{{
    let l:sign_group_name = "qfpreview"
    let l:sign_id = 2
    call sign_unplace(l:sign_group_name, { 'id' : l:sign_id})
  endfunction "}}}
endif

if !exists("*popuppreviewitem")
  function! s:popuppreviewitem() abort "{{{
    let l:max = line('$')
    let l:list = getloclist(0)
    if empty(l:list) || len(l:list) != l:max
      let l:list = getqflist()
    endif
    let l:pos = getpos(".")
    let l:cur = l:pos[1] " bufnum, lnum, col, off
    let l:pressppos = l:list[l:cur-1].lnum
    let l:bufnr = l:list[l:cur-1].bufnr
    "let l:displaytime = &updatetime
    let l:displaytime = 3000 "ms
    let l:lnum = l:list[l:cur-1].lnum
    let l:col = l:list[l:cur-1].col
    let l:nowcolcurpos = l:pos[2]
    let l:lnumcurpos = l:cur
    let l:previewtextwidth = len(l:list[l:cur-1].text)
    let l:popupwinwidth = l:previewtextwidth >= &columns ? &columns / 2 : l:previewtextwidth
    let l:popupwinheight = &lines / 7
    let l:firstline = l:pressppos - 3
    let l:popupwin = popup_create(l:bufnr, #{
          \   maxheight : popupwinheight,
          \   minheight : 2,
          \   maxwidth :  l:popupwinwidth,
          \   minwidth :  5,
          \   line : 'cursor+5',
          \   col : 'cursor+10',
          \   title : '[preview]',
          \   firstline : l:firstline,
          \   wrap : 'TRUE',
          \   drag : 'TRUE',
          \   close : 'click',
          \   padding : [1, 1, 1, 1],
          \   border : [1, 1, 1, 1],
          \   scrollbar : 'TRUE',
          \   scrollbarhighlight : 'Scrollbar',
          \   thunbhighlight : 'PmenuThumb',
          \   time : l:displaytime,
          \   moved : 'any',
          \   cursorline : 'TRUE',
          \})

    unlet list
  endfunction "}}}
endif


" Delete items
nnoremap <silent> <buffer> dd :call <SID>del_entry()<CR>
nnoremap <silent> <buffer> x :call <SID>del_entry()<CR>
vnoremap <silent> <buffer> d :call <SID>del_entry()<CR>
vnoremap <silent> <buffer> x :call <SID>del_entry()<CR>
nnoremap <silent> <buffer> u :<C-u>call <SID>undo_entry()<CR>

if exists('*s:undo_entry')
  finish
endif

if !exists("*popuppreviewitem")
  function! s:undo_entry() "{{{
    let history = get(w:, 'qf_history', [])
    if !empty(history)
      call setqflist(remove(history, -1), 'r')
    endif
  endfunction "}}}
endif

if !exists("*del_entry")
  function! s:del_entry() range abort "{{{
    let qf = getqflist()
    let history = get(w:, 'qf_history', [])
    call add(history, copy(qf))
    let w:qf_history = history
    unlet! qf[a:firstline - 1 : a:lastline - 1]
    call setqflist(qf, 'r')
    execute a:firstline
  endfunction "}}}
endif

" option undo
if exists('b:undo_ftplugin')
    let b:undo_ftplugin .= ' |'
else
    let b:undo_ftplugin = ''
endif
let b:undo_ftplugin .= '
      \ setlocal number< nocursorline< signcolumn< statusline<'

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: setlocal foldenable\:foldmethod=marker
" vim: setlocal filetype=vim
