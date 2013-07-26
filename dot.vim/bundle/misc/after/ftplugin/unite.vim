" Insert vimshell history
let s:context = unite#get_context()
if s:context.buffer_name =~? 'completion'
  inoremap <buffer> <expr> <C-y> unite#do_action('insert')
endif

" vim: fen:fdm=marker
" vim: filetype=vim
