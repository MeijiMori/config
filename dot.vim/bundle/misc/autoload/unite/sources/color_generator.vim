"=============================================================================
" File: color_generator.vim <Unite source file>
" Ex:
" Note: It's too heavy because too many syntax define.
"=============================================================================

let s:save_cpo = &cpo
set cpo&vim

" Variables "{{{
let s:generator_item_length=88
let g:useable_key_count = 0

let g:useable_colors_key = {}
let g:useable_colors_key = {}

" Highlight rule
let s:hl_item  = {
    \ 'hl_rule' : [],
    \ }

"}}}

" Source
let s:source = {
    \ 'name'           : 'color_generator',
    \ 'description'    : 'Source for color generator',
    \ 'default_action' : 'execute',
    \ 'max_candidates' : s:generator_item_length,
    \ 'hooks'          : {},
    \ 'action_table'   : {},
    \ 'syntax'         : 'uniteSource__Colorgenerator',
    \ }

" Functions "{{{

" Define
function! unite#sources#color_generator#define() "{{{
  return s:source
endfunction "}}}

" Main
function! s:source.gather_candidates(args, context) "{{{
  let result = []
  let hl_rule = []

  let cl = g:useable_colors_key
  let limit = g:useable_key_count
  let item_count = 0

  if has('gui_running')
    " gui
    let zero = 0
    let one = 0
    let two = 0

    let color_item = {}
    let step_range = 1
    let cs = 'f'
    while zero < limit
      let one = 0
      let two = 0
      while one < limit
        let two = 0
        while two < limit
          let str = substitute(string(cl[zero] . cs . cl[one] . cs . cl[two] . cs), "'",  '', 'g')
          " For debug"{{{
          " echomsg str
          "}}}
          let color_item[item_count] = str
          " For syntax
          call add(hl_rule, {
          \ 'name' : color_item[item_count],
          \ 'pattern' : '/\<' . color_item[item_count] . '\>/'
          \})

          call add(result, {
          \ "word" : color_item[item_count],
          \ "abbr" : printf('%-16s', color_item[item_count]),
          \ "kind" : "command",
          \ "action__command" : "highlight lCursor guifg=#" . color_item[item_count] . " guibg=#000000 gui=NONE"
          \})
          " For debug "{{{
          " echomsg "two : " . two
          " echomsg "item_count : " . item_count
          " echomsg "color_item : " . color_item[item_count]
          "}}}
          let item_count += step_range
          let two += step_range
        endwhile
        " For debug "{{{
        " echomsg "one : " . one
        " echomsg "item_count : " . item_count
        " echomsg "color_item : " . color_item[item_count]
        "}}}
        let item_count += step_range
        let one += step_range
      endwhile

      " For debug "{{{
      " echomsg "zero : " . zero
      " echomsg "item_count : " . item_count
      " echomsg "color_item : " . color_item[item_count]
      "}}}
      let item_count += step_range
      let zero += step_range
    endwhile

    " For debug "{{{
    " let i = 0
    " while i < item_count
    "   echomsg "color_item : " . color_item[i]
    "   let i += 1
    " endwhile
    "}}}

  else
    " cui

    while item_count < limit
      " For debug"{{{
      " echomsg "color_item : " . cl[item_count]
      "}}}

      " For syntax
      call add(hl_rule, {
      \ 'name' : cl[item_count],
      \ 'pattern' : '/\* ' . cl[item_count] . ' \*/'
      \})

      call add(result, {
      \ "word" : cl[item_count],
      \ "abbr" : printf('%-16s', ' * ' . cl[item_count] . ' * '),
      \ "kind" : "command",
      \ "action__command" : "highlight lCursor ctermfg=" . cl[item_count] . " ctermbg=0 cterm=NONE"
      \})

      let item_count += 1

    endwhile
  endif
  let s:hl_item.hl_rule = hl_rule

  return result

endfunction "}}}

" Actions
" Add custom actions table "{{{

"}}}

" Hook
" Init
function! s:source.hooks.on_init(args, context) "{{{
  let g:useable_key_count = has('gui_running') ? 16 : &t_Co
  " color item key
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
    " For debug"{{{
    " while i < g:useable_key_count
    "   echomsg g:useable_colors_key[i]
    "   let i = i+1
    " endwhile
    "}}}
    "}}}
  endif
  " For debug"{{{
  " echomsg "g:useable_key_count : " . g:useable_key_count
  "}}}
endfunction "}}}
" Syntax
function! s:source.hooks.on_syntax(args, context) "{{{

  let env = has('gui_running') ? 'gui' : 'cterm'
  let sepa = has('gui_running') ? '#' : ''

  for hl_rule in s:hl_item.hl_rule
    " execute 'syntax match uniteSource__Colorgenerator_' . hl_rule.name '/#[0-9a-f]\{,6}/'
    execute 'syntax match uniteSource__Colorgenerator_' . hl_rule.name hl_rule.pattern
    \ . ' contained containedin=uniteSource__Colorgenerator'
    execute 'highlight uniteSource__Colorgenerator_' . hl_rule.name
    \ . ' ' . env .'fg=' . sepa . hl_rule.name . ' ' . env . 'bg=' . sepa . hl_rule.name
    \ . ' ' . env . '=NONE'
  endfor

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
