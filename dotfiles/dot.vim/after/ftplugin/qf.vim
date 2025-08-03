" for quickfix

" written by thinca
" https://thinca.hatenablog.com/entry/20130708/1373210009
" +a

" item
setlocal statusline +=\ %L

setlocal nonumber
setlocal nocursorline
setlocal signcolumn=no

" load c/lfilter
packadd cfilter

" j k press next item
noremap <silent> <buffer> <expr> j <SID>jk(v:count1)
noremap <silent> <buffer> <expr> k <SID>jk(-v:count1)

" press p preview
noremap <buffer> p  <CR><ESC><C-u>:setlocal cursorline<CR>zz<C-w>p

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
    let pos = g:V.modulo(pos + m, max)
  endwhile
  return (pos + 1) . 'G'
endfunction


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

