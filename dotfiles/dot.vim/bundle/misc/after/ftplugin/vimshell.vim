
" Insert vimshell history
function! s:complete_history()
  call complete(len(vimshell#get_prompt()) + 1, g:vimshell#hist_buffer)
  return ''
endfunction

" inoremap <buffer> <silent> <C-l> <C-r>=<SID>complete_history()<CR><C-p>
