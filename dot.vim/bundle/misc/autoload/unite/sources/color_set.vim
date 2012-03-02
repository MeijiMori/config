"=============================================================================
" File: color_set.vim <Unite source file>
" Ex:   Replace highlight test and more ?
" Todo: Overwrite syntax to variable
"       Auto update
" Note: Refer to unite-outline that way of syntax Highlight and autocmds
"       Refer to unite-colorscheme that way of run colorscheme
"=============================================================================

let s:save_cpo = &cpo
set cpo&vim

" Variables "{{{

" Refer to link that syntax color
let s:highlight_colom = {
      \ 'default' : {},
      \ }

" Default
" Default color item "{{{
let s:highlight_colom.default = [
      \ 'SpecialKey', 'NonText',
      \ 'Directory', 'ErrorMsg',
      \ 'IncSearch', 'Search',
      \ 'MoreMsg', 'ModeMsg',
      \ 'LineNr', 'Question',
      \ 'StatusLine', 'StatusLinenc',
      \ 'VertSplit', 'Title',
      \ 'Visual', 'VisualNos',
      \ 'WarningMsg', 'WildMenu',
      \ 'Folded', 'FoldColumn',
      \ 'DiffAdd', 'DiffChange',
      \ 'DiffDelete', 'DiffText',
      \ 'SignColumn', 'Conceal',
      \ 'SpellBad', 'SpellCap',
      \ 'SpellRare', 'SpellLocal',
      \ 'Pmenu', 'PmenuSel',
      \ 'PmenuSbar', 'PmenuThumb',
      \ 'TabLine', 'TabLineSel',
      \ 'TabLineFill', 'CursorColumn',
      \ 'CursorLine', 'ColorColumn',
      \ 'Cursor', 'CursorIM',
      \ 'lCursor', 'MatchParen',
      \ 'Normal', 'Comment',
      \ 'Constant', 'Special',
      \ 'Identifier', 'Statement',
      \ 'PreProc', 'Type',
      \ 'Underlined', 'Ignore',
      \ 'Error', 'Todo',
      \ 'String',
      \ ]
"}}}

if exists('g:highlight_colom.custom')
  let color_item_length = len(g:highlight_colom.custom)
  let s:use_color_item = g:highlight_colom.custom
else
  let color_item_length = len(s:highlight_colom.default)
  let s:use_color_item = s:hightlight_colom.default
endif

" Highlight rule
let s:hl_item  = {
      \ 'hl_rule' : [],
      \ }

let s:BUFVAR_COLORSET_DATA = 'unite_source_colorset_data'

"}}}

" Source
let s:source = {
      \ 'name'           : 'color_set',
      \ 'description'    : 'candidates from highlight test',
      \ 'default_action' : 'execute',
      \ 'max_candidates' : color_item_length,
      \ 'hooks'          : {},
      \ 'action_table'   : {},
      \ 'syntax'         : 'uniteSource__ColorSet',
      \ }

" Functions "{{{

" Define
function! unite#sources#color_set#define() "{{{
  return s:source
endfunction "}}}

" Main
function! s:source.gather_candidates(args, context) "{{{

  " info
  let s:buffer_info  = bufnr('%')

  let result = []
  let s:hl_rule = []

  " Add colorscheme name
  let mess = '++++++ Now colorscheme name ++++++'
  let l:colorlist = map(split(globpath(&runtimepath, 'colors/*.vim'), '\n'),
        \ '[fnamemodify(v:val, ":t:r"), fnamemodify(v:val, ":h")]')

  " Debug "{{{
  " for list in l:colorlist
  "   echomsg "list[0] : " . list[0]
  "   echomsg "list[1] : " . list[1]
  " endfor "}}}

  " colorscheme name
  if exists('g:colors_name')
    let s:colorscheme_name = g:colors_name
  else
    let s:colorscheme_name = ''
  endif

  if exists('s:colorscheme_name')
    let colorscheme_file_path = l:colorlist[s:colorscheme_name][1] . '/' . l:colorlist[s:colorscheme_name][0] . '.vim'
    " Debug"{{{
    " echomsg "pass : " . colorscheme_file_path"}}}
  else
    let colorscheme_file_path = ""
    echomsg "pass : " . colorscheme_file_path
  endif

  if exists('s:colorscheme_name')
    call add(result, {
          \ "word" : s:colorscheme_name,
          \ "abbr" : printf('%-16s %s', s:colorscheme_name, mess),
          \ "kind" : ["file", "command"],
          \ "action__command" : s:colorscheme(s:colorscheme_name),
          \ "action__type": ": ",
          \ "action__path" : colorscheme_file_path,
          \})
  else
    " s:colorscheme_name is not exists.

  endif

  for coloritem in g:highlight_colom.custom

  " Get highlight item
  redir  => highlight
  execute 'silent! highlight ' . coloritem
  redir END

  let word = matchstr(highlight, '\a\w*')

    " Analyze colorinfo.
    let end = matchend(highlight, '\a\w*')
    let args = matchstr(highlight, 'x\{3}', end)
    if args == ""
    else
    endif
    let x3end = matchend(highlight, 'x\{3}\s', end)
    let colorinfo = matchstr(highlight, '[a-zA-Z0-9=#,\ ]*', x3end)

    " Get envioroment
    let env = has('gui_running')  ? 'gui' : 'cterm'
    " Get syntax font style
    let fontstyle =
      \ synIDattr(synIDtrans(hlID(coloritem)), 'bold', env)      ? env . '=bold' :
      \ synIDattr(synIDtrans(hlID(coloritem)), 'italic', env)    ? env . '=italic' :
      \ synIDattr(synIDtrans(hlID(coloritem)), 'reverse', env)   ? env . '=reverse' :
      \ synIDattr(synIDtrans(hlID(coloritem)), 'inverse', env)   ? env . '=inverse' :
      \ synIDattr(synIDtrans(hlID(coloritem)), 'standout', env)  ? env . '=standout' :
      \ synIDattr(synIDtrans(hlID(coloritem)), 'underline', env) ? env . '=underline' :
      \ synIDattr(synIDtrans(hlID(coloritem)), 'undercurl', env) ? env . '=undercurl' :
      \                                                            env . '=NONE'

    " Get front color
    if synIDattr(synIDtrans(hlID(coloritem)), 'fg#', env) != ''
      let frontcolor = env . 'fg=' . synIDattr(synIDtrans(hlID(coloritem)), 'fg#', env) . ' '
    else
      let frontcolor = ''
    endif

    " Get back color
    if synIDattr(synIDtrans(hlID(coloritem)), 'bg#', env) != ''
      let backgroundcolor = env . 'bg=' . synIDattr(synIDtrans(hlID(coloritem)), 'bg#', env) . ' '
    else
      let backgroundcolor = ''
    endif

    " color info
    let colorinfo = frontcolor . backgroundcolor . fontstyle

    " Debug "{{{
    " echomsg "env : " . env
    " echomsg "coloritem : " . coloritem
    " echomsg "colorinfo : " . colorinfo
    " echomsg "frontcolor : " . frontcolor
    " echomsg "backgroundcolor : " . backgroundcolor
    " echomsg "fontstyle : " . fontstyle
    "}}}

    " For syntax
    call add(s:hl_rule, {
          \ 'name' : coloritem,
          \ 'pattern' : '/\<' . coloritem . '\>/'
          \ })

    call add(result, {
          \ "word" : coloritem,
          \ "abbr" : printf('%-16s %s', coloritem, colorinfo),
          \ "kind" : "command",
          \ "action__command" : "highlight " . coloritem
          \ })

  endfor

  let s:hl_item.hl_rule = s:hl_rule

  " Debug "{{{
  " for item in s:hl_rule
  "   echomsg "hl_name : " . item.name
  "   echomsg "hl_pattern : " . item.pattern
  " endfor
  " for item in s:hl_item.hl_rule
  "   echomsg "name : " . item.name
  "   echomsg "pattern : " . item.pattern
  " endfor
  "}}}

  return result

endfunction "}}}

" Actions
" Add custom actions table "{{{
" Save
let s:source.action_table.savecolor = {
      \ 'description' : 'save color that select color item',
      \ 'is_invalidate_cache' : 1,
      \ 'is_quit' : 0,
      \ 'is_selectable' : 1,
      \ }

" save color
function! s:source.action_table.savecolor.func(candidates) "{{{

endfunction "}}}

" change
let s:source.action_table.changecolor = {
      \ 'description' : 'change color that select color item',
      \ 'is_invalidate_cache' : 1,
      \ 'is_quit' : 0,
      \ 'is_selectable' : 0,
      \ }

" change color
function! s:source.action_table.changecolor.func(candidates) "{{{
  let syntax_calom = input("input color syntax : ", a:candidates.abbr)
  execute 'highlight ' . syntax_calom
endfunction "}}}

" change colorscheme
let s:source.action_table.change_colorscheme = {
      \ 'description' : 'change colorscheme',
      \ 'is_invalidate_cache' : 1,
      \ 'is_quit' : 0,
      \ 'is_selectable' : 1,
      \ }

function! s:source.action_table.change_colorscheme.func(candidates) "{{{
  " Unite colorscheme
  if globpath(&rtp, 'bundle/unite-colorscheme') != ''
    execute 'Unite  colorscheme -auto-preview'
  else
    " Refer to my gvimrc (ColorToggle)
    call s:colorscheme_changer
  endif
endfunction "}}}

"}}}

" Hook
" Init
function! s:source.hooks.on_init(args, context) "{{{
  call s:initialize_colorSet_data()
endfunction "}}}
" Syntax
function! s:source.hooks.on_syntax(args, context) "{{{

  for hl_rule in s:hl_item.hl_rule
    execute 'syntax match uniteSource__Colorset_' . hl_rule.name hl_rule.pattern
    \ 'contained containedin=uniteSource__Colorset'
    " execute 'syntax match uniteSource__Colorset_' . hl_rule.name . ' /:.*\zs'
    "       \ . substitute(hl_rule.name, '\([/\\]\)', '\\\1', 'g')
    "       \ . '/ contained containedin=uniteSource__Colorset'
    execute 'highlight default link uniteSource__Colorset_' . hl_rule.name hl_rule.name
  endfor

endfunction "}}}

" Misc
function! s:initialize_colorSet_data() "{{{
  let bufnr = bufnr('%')
  let bufvars = getbufvar(bufnr, '')
  if !has_key(bufvars, s:BUFVAR_COLORSET_DATA)
    let bufvars[s:BUFVAR_COLORSET_DATA] = { 'state' : 'OK'}
    call s:register_autocmds()
  endif
endfunction "}}}

" autocmds
function! s:register_autocmds() "{{{

  " Autocommands
  augroup plugin-unite-source-color_set "{{{
    autocmd! * <buffer>
    autocmd CursorHoldI <buffer>  call s:on_cursor_hold_i()
    autocmd CursorHold  <buffer>  call s:on_cursor_hold()
    autocmd ColorScheme <buffer>  call s:on_colorscheme()
  augroup END "}}}

endfunction "}}}

" Autocmd
function! s:on_cursor_hold_i() "{{{
  let bufnr = bufnr('%')
  if !s:has_colorset_data(bufnr)
    return
  endif
  call s:update_buffer_changenr()
  call unite#redraw()
endfunction "}}}
function! s:on_cursor_hold() "{{{
  let bufnr = bufnr('%')
  if !s:has_colorset_data(bufnr)
    return
  endif
  call s:update_buffer_changenr()
  call unite#redraw()
  syntax clear uniteCandidateInputKeyword
endfunction "}}}
function! s:on_colorscheme() "{{{
  let bufnr = bufnr('%')
  if !s:has_colorset_data(bufnr)
    return
  endif
  call s:update_buffer_changenr()
  call unite#redraw()
endfunction "}}}

" Utility
function! s:colorscheme_changer() "{{{
  let l:colorlist = map(split(globpath(&runtimepath, 'colors/*.vim'), '\n'),
        \ '[fnamemodify(v:val, ":t:r"), fnamemodify(v:val, ":h")]')
  let l:index = 0
  let l:limit = len(colorlist)
  while l:index < l:limit
    if l:colorlist[l:index][0] !~# g:colors_name
      let l:index += 1
    else
      break
    endif
  endwhile
  if  l:index == l:limit - 1
    let l:index = 0
  elseif l:index < l:limit - 1
    let l:index += 1
  endif
  s:colorscheme(colorlist[l:index][0])
endif
endfunction "}}}
function! s:colorscheme(x) "{{{
  return printf("%s %s",
        \ s:lookup("g:unite_color_set_command", "colorscheme"),
        \ a:x)
endfunction "}}}
function! s:lookup(varname, default) "{{{
  return exists(a:varname) ? eval(a:varname) : a:default
endfunction "}}}
function! s:update_buffer_changenr() "{{{
  call s:set_colorset_data(bufnr('%'), 'buffer_changenr', changenr())
endfunction "}}}
function! s:has_colorset_data(bufnr, ...) "{{{
  if a:0
    let key = a:1
    let data = getbufvar(a:bufnr, s:BUFVAR_COLORSET_DATA)
    return has_key(data, key)
  else
    let bufvars = getbufvar(a:bufnr, '')
    return has_key(bufvars, s:BUFVAR_COLORSET_DATA)
  endif
endfunction "}}}
function! s:set_colorset_data(bufnr, key, value) "{{{
  let data = getbufvar(a:bufnr, s:BUFVAR_COLORSET_DATA)
  let data[a:key] = a:value
endfunction "}}}
"}}}

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: fen:fdm=marker
" vim: filetype=vim
