" For quickfix

" written by thinca
" https://thinca.hatenablog.com/entry/20130708/1373210009
" +a

" Option
setlocal nonumber
setlocal nocursorline
setlocal signcolumn=no

" status line
"setlocal statusline="%t%{exists('w:quickfix_title')? ' '.w:quickfix_title : ''} %=%-15(%l,%c%V%) %P \ %L"

setlocal statusline=%!MakeQfStatusline()

function! MakeQfStatusline() abort "{{{
  let l:qstatusline = ''
  let l:qstatusline .= '%t'
  let l:qstatusline .= "%{exists('w:quickfix_title')? ' '.w:quickfix_title : ''}"
  let l:qstatusline .= '%=%-15(%l,%c%V%)'
  let l:qstatusline .= '%P'
  let l:qstatusline .= ' '
  let l:qstatusline .= '%L'

  return l:qstatusline

endfunction "}}}

" Load c/lfilter
packadd cfilter

" j k press next item
noremap <silent> <buffer> <expr> j <SID>jk(v:count1)
noremap <silent> <buffer> <expr> k <SID>jk(-v:count1)

" from vital.vim Math.vim modulo
function! s:modulo(n, m) abort
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
endfunction



" Press p preview
"noremap <buffer> p  <CR>zz<C-w>p
noremap <silent> <buffer> p  <ESC>:call <SID>markuppreviewitem()<CR><CR>zz<C-w>p

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

function! s:sign_invisible(timer)
  let l:sign_group_name = "qfpreview"
  let l:sign_id = 2
  call sign_unplace(l:sign_group_name, { 'id' : l:sign_id})
endfunction




" Delete items
nnoremap <silent> <buffer> dd :call <SID>del_entry()<CR>
nnoremap <silent> <buffer> x :call <SID>del_entry()<CR>
vnoremap <silent> <buffer> d :call <SID>del_entry()<CR>
vnoremap <silent> <buffer> x :call <SID>del_entry()<CR>
nnoremap <silent> <buffer> u :<C-u>call <SID>undo_entry()<CR>

if exists('*s:undo_entry')
  finish
endif

function! s:undo_entry()
  let history = get(w:, 'qf_history', [])
  if !empty(history)
    call setqflist(remove(history, -1), 'r')
  endif
endfunction

function! s:del_entry() range
  let qf = getqflist()
  let history = get(w:, 'qf_history', [])
  call add(history, copy(qf))
  let w:qf_history = history
  unlet! qf[a:firstline - 1 : a:lastline - 1]
  call setqflist(qf, 'r')
  execute a:firstline
endfunction

