" ============================================================
" File : autoload/unite/source/outline/text.vim
" ============================================================

" outline file for text file

function! unite#sources#outline#text#outline_info()
  return s:outline_info
endfunction

" --------------------------------------------------------------------------------
" Outline Info

let s:outline_info = {
      \ 'heading' : '^[■□◆◇※*ー-＝=]\*\S',
      \
      \ 'highlight_rules' : [
      \ { 'name'    : 'level_1',
      \   'pattern' : '/1\. ../' },
      \ ],
      \ }


function! s:outline_info.create_heading(which, heading_line, matched_line, context)
endfunction

" vim: filetype=vim
