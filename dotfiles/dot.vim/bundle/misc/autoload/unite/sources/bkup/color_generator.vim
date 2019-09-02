"=============================================================================
" File: color_generator.vim <Unite source file>
" Ex:
"=============================================================================

let s:save_cpo = &cpo
set cpo&vim

" Variables "{{{
let s:generator_item_length=20
let g:useable_key_count = 0

let g:useable_colors_key = {}

if has('gui_running')
  " gui "{{{
  let g:useable_colors_key = {
        \ '0': '0',
        \ '1': '1',
        \ '2': '2',
        \ '3': '3',
        \ '4': '4',
        \ '5': '5',
        \ '6': '6',
        \ '7': '7',
        \ '8': '8',
        \ '9': '9',
        \ '10' : 'a',
        \ '11' : 'b',
        \ '12' : 'c',
        \ '13' : 'd',
        \ '14' : 'e',
        \ '15' : 'f',
        \ }
  "}}}
else
  " cui "{{{
  let i = 0
   while i < g:useable_key_count
     let g:useable_colors_key[i] = i
     let i = i + 1
   endwhile
   "}}}
endif
"}}}

" Source
let s:source = {
      \ 'name'           : 'color_generator',
      \ 'description'    : 'Source for color generator',
      \ 'default_action' : 'execute',
      \ 'max_candidates' : s:generator_item_length,
      \ 'hooks'          : {},
      \ 'action_table'   : {},
      \ 'syntax'         : 'uniteSource__ColorGenerator',
      \ }

" Functions "{{{

" Define
function! unite#sources#color_generator#define() "{{{
  return s:source
endfunction "}}}

" Main
function! s:source.async_gather_candidates(args, context) "{{{
  let result = []

  let cl = g:useable_colors_key
  let limit = g:useable_key_count - 1
  if has('gui_running')
    " gui
    let zero = 0
    let one = 0
    let two = 0
    let three = 0
    let four = 0
    let five = 0

    let item_count = 0
    let color_item = {}
    while zero < limit
      let one = 0
      let two = 0
      let three = 0
      let four = 0
      let five = 0
      while one < limit
        let two = 0
        let three = 0
        let four = 0
        let five = 0
        while two < limit
          let three = 0
          let four = 0
          let five = 0
          while three < limit
            let four = 0
            let five = 0
            while four < limit
              let five = 0
              while five < limit
                let color_item[item_count] = string(cl[zero] . cl[one] . cl[two] . cl[three] . cl[four] . cl[five])
                call add(result, {
                \ "word" : color_item[item_count],
                \ "abbr" : printf('%-16s', color_item[item_count]),
                \ "kind" : "command",
                \ "action_command" : "highlight lCursor guifg=#" . color_item[item_count] . " guibg=#000000 gui=NONE"
                \})
                " For debug"{{{
                " echomsg "five : " . five
                " echomsg "item_count : " . item_count
                " echomsg "color_item : " . color_item[item_count]
                "}}}
                let item_count += 1
                let five += 1
              endwhile
              let color_item[item_count] = string(cl[zero] . cl[one] . cl[two] . cl[three] . cl[four] . cl[five])
              call add(result, {
              \ "word" : color_item[item_count],
              \ "abbr" : printf('%-16s', color_item[item_count]),
              \ "kind" : "command",
              \ "action_command" : "highlight lCursor guifg=#" . color_item[item_count] . " guibg=#000000 gui=NONE"
              \})
              " For debug"{{{
              " echomsg "four : " . four
              " echomsg "item_count : " . item_count
              " echomsg "color_item : " . color_item[item_count]
              "}}}
              let item_count += 1
              let four += 1
            endwhile
            let color_item[item_count] = string(cl[zero] . cl[one] . cl[two] . cl[three] . cl[four] . cl[five])
            call add(result, {
            \ "word" : color_item[item_count],
            \ "abbr" : printf('%-16s', color_item[item_count]),
            \ "kind" : "command",
            \ "action_command" : "highlight lCursor guifg=#" . color_item[item_count] . " guibg=#000000 gui=NONE"
            \})
            " For debug"{{{
            " echomsg "three : " . three
            " echomsg "item_count : " . item_count
            " echomsg "color_item : " . color_item[item_count]
            "}}}
            let item_count += 1
            let three += 1
          endwhile
          let color_item[item_count] = string(cl[zero] . cl[one] . cl[two] . cl[three] . cl[four] . cl[five])
          call add(result, {
          \ "word" : color_item[item_count],
          \ "abbr" : printf('%-16s', color_item[item_count]),
          \ "kind" : "command",
          \ "action_command" : "highlight lCursor guifg=#" . color_item[item_count] . " guibg=#000000 gui=NONE"
          \})
          " For debug "{{{
          " echomsg "two : " . two
          " echomsg "item_count : " . item_count
          " echomsg "color_item : " . color_item[item_count]
          "}}}
          let item_count += 1
          let two += 1
        endwhile
        let color_item[item_count] = string(cl[zero] . cl[one] . cl[two] . cl[three] . cl[four] . cl[five])
        call add(result, {
        \ "word" : color_item[item_count],
        \ "abbr" : printf('%-16s', color_item[item_count]),
        \ "kind" : "command",
        \ "action_command" : "highlight lCursor guifg=#" . color_item[item_count] . " guibg=#000000 gui=NONE"
        \})
        " For debug "{{{
        " echomsg "one : " . one
        " echomsg "item_count : " . item_count
        " echomsg "color_item : " . color_item[item_count]
        "}}}
        let item_count += 1
        let one += 1
      endwhile
      let color_item[item_count] = string(cl[zero] . cl[one] . cl[two] . cl[three] . cl[four] . cl[five])
      call add(result, {
      \ "word" : color_item[item_count],
      \ "abbr" : printf('%-16s', color_item[item_count]),
      \ "kind" : "command",
      \ "action_command" : "highlight lCursor guifg=#" . color_item[item_count] . " guibg=#000000 gui=NONE"
      \})

      " For debug "{{{
      " echomsg "zero : " . zero
      " echomsg "item_count : " . item_count
      " echomsg "color_item : " . color_item[item_count]
      "}}}
      let item_count += 1
      let zero += 1
    endwhile

    " For debug
    " let i = 0
    " while i < item_count
    "   echomsg "color_item : " . color_item[i]
    "   let i += 1
    " endwhile

  else
    " cui
  endif

  return result
endfunction "}}}

" Actions
" Add custom actions table "{{{

"}}}

" Hook
" Init
function! s:source.hooks.on_init(args, context) "{{{
  let g:useable_key_count = has('gui_running') ? 16 : &t_Co
  " For debug"{{{
  echomsg "g:useable_key_count : " . g:useable_key_count
  "}}}
endfunction "}}}
" Syntax
function! s:source.hooks.on_syntax(args, context) "{{{

  " for hl_rule in s:hl_item.hl_rule
  " execute 'syntax match uniteSource__ColorGenerator' . hl_rule.name hl_rule.pattern
  " \ 'contained containedin=uniteSource__ColorGenerator'
  " execute 'syntax match uniteSource__Colorset_' . hl_rule.name . ' /:.*\zs'
  "       \ . substitute(hl_rule.name, '\([/\\]\)', '\\\1', 'g')
  "       \ . '/ contained containedin=uniteSource__Colorset'
  " execute 'highlight default link uniteSource__ColorGenerator_' . hl_rule.name hl_rule.name
  " endfor

endfunction "}}}

" Utility
" Misc "{{{
"}}}
"}}}

let &cpo = s:save_cpo
unlet s:save_cpo

" End "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
