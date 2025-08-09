" My vim config

" Init: "{{{1
"use vim not vi
set nocompatible

" Windows
let s:iswin = has('win16') || has('win32') || has('win64')
" Mac
let s:ismac = !s:iswin && has('macunix') || has('mac')

" map clear
mapclear!
mapclear! <buffer>

let s:tmp = &runtimepath
"set all&
let &runtimepath = s:tmp
unlet s:tmp

" Even Windows use "$HOME/.vim".
set shellslash
let &rtp = substitute(&rtp,
  \ escape($HOME, '\') . '/vimfiles', escape($HOME, '\') . '/.vim', 'g')

let s:tmp = &runtimepath
if s:iswin
  "use path separete '/'
  let s:tmp = substitute(s:tmp, '\\', '\/', 'g')
endif

let &runtimepath = s:tmp
unlet s:tmp

if !exists('$MYGVIMRC')
  if s:iswin
    let $MYGVIMRC = expand('~/.gvimrc')
  else
    let $MYGVIMRC = expand('~/.gvimrc')
  endif
endif

filetype off

" Initialize autocmd.
augroup MyAutoCmd
  autocmd!
augroup END

if exists('&msghistlen')
  set msghistlen=9999
endif

if s:iswin
  " Exchange path separator.
  set shellslash
endif

" Position of vim runtime "{{{2
if s:iswin
  " let g:vim_dir = expand('~/vimfiles')
  let g:vim_dir = expand('~/.vim')
else
  " Define $DOTVIM is ~/.vim on *nix
  let g:vim_dir = expand('~/.vim')
endif
let g:vim_info_dir = g:vim_dir . '/info'
let g:vim_misc_dir = g:vim_dir . '/bundle/misc'
" Make directory "{{{3
if !isdirectory(g:vim_dir)
  call mkdir(g:vim_dir, 'p')
endif
if !isdirectory(g:vim_info_dir)
  call mkdir(g:vim_info_dir, 'p')
endif
if !isdirectory(g:vim_misc_dir)
  call mkdir(g:vim_misc_dir, 'p')
endif "}}}2

if s:iswin
  let $DOTVIM =  g:vim_dir
else
  let $DOTVIM = expand('~/.vim')
endif


filetype plugin on
filetype indent on

" Functions: "{{{1

" Edit now colorschem file
nnoremap <silent><Space>ec :call <SID>EditNowColorScheme()<CR>
function! s:EditNowColorScheme() "{{{
  if exists('g:colors_name')
    let nowcolorscheme = g:colors_name
  else
    finish
  endif
  let colorlist = map(split(globpath(&runtimepath, 'colors/*.vim'), '\n'),
      \'[fnamemodify(v:val, ":t:r"), fnamemodify(v:val, ":h")]')
  let pos = 0
  for c in colorlist
    if nowcolorscheme  =~# c[0]
      break
    endif
    let pos += 1
  endfor
  " Edit way tab, other tab "{{{
  "if (tabpagenr('$') <= 1 &&  (line('$') <= 1 && col('.') <= 1)) || g:colors_name =~? expand('%:t:r')
  "  edit colorfilepass
  "else
  "  tabedit colorfilepass
  "endif "}}}
  execute 'edit ' colorlist[pos][1] . '/' . colorlist[pos][0] . '.vim'
  unlet! colorlist
  unlet! nowcolorscheme
  unlet! pos
endfunction "}}}

" Edit rcfile way
function! s:EditRcFileWay(ui) "{{{2
  if a:ui =~? 'cui'
    if tabpagenr('$') <= 1 || (line('$') <= 1 && col('.') <= 1) || bufname('#') =~? '.vimrc'
      edit $MYVIMRC
    else
      tabedit $MYVIMRC
    endif
  else
    " GVIMRC
    if tabpagenr('$') <= 1 &&  (line('$') <= 1 && col('.') <= 1) || bufname('#') =~? '.gvimrc'
      edit $MYGVIMRC
    else
      tabedit $MYGVIMRC
    endif
  endif
endfunction

function! s:SnipMid(str, len, mask) "{{{2
  if a:len >= len(a:str)
    return a:str
  elseif a:len <= len(a:mask)
    return a:mask
  endif

  let len_head = (a:len - len(a:mask)) / 2
  let len_tail = a:len - len(a:mask) - len_head

  return (len_head > 0 ? a:str[: len_head - 1] : '') . a:mask . (len_tail > 0 ? a:str[-len_tail :] : '')
endfunction


" Omit file types (filetype(array) initlaize flag state, and,or?)
function! s:omitfiletype(fts, flagini, aor) "{{{2
  let flag = a:flagini
  let unflag = a:flagini ? 0 : 1
  if a:aor
    " and
    for filetype in a:fts
      if (&ft =~? filetype)
        let flag = unflag
      endif
    endfor
  else
    " or
    for filetype in a:fts
      if (&ft =~? filetype)
        let flag = unflag
        break
      endif
    endfor
  endif

  return flag
endfunction "}}}2
" Anywhere SID. "{{{2
function! s:SID_PREFIX()
  return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction


" SNR  "{{{2
function! s:SNR(map)
    return printf("<SNR>%d_%s", s:SID(), a:map)
endfunction


" include path "{{{2
function! s:invatepath(partpath)
  return globpath(&rtp, a:partpath) != '' ? 1 : 0
endfunction


" Get name of colorscheme file "{{{2
function! s:ColorschemeRandom()
  let colorlist = map(split(globpath(&runtimepath, 'colors/*.vim'), '\n'),
  \'[fnamemodify(v:val, ":t:r"), fnamemodify(v:val, ":h")]')
  let s:limit = len(colorlist)
  let number  = float2nr(s:limit / sqrt(s:limit))
  let csname = colorlist[number][0]
  unlet s:limit
  return (csname)
endfunction


function! s:syntax_additional() "{{{2
  let preset = exists('w:syntax_additional')
  if &l:list
    if !preset
      let w:syntax_additional = matchadd('ZenkakuSpace', '　')
    endif
  elseif preset
    call matchdelete(w:syntax_additional)
    unlet w:syntax_additional
  endif
endfunction

function! s:highlight_additional() "{{{2
  " Highlight "ZenkakuSpace".
  highlight ZenkakuSpace term=underline ctermbg=9 gui=NONE guifg=#cfcfcf guibg=#4f304f
  " Change the cursor color when IME is on.
  highlight CursorIM  gui=NONE guifg=#000000 guibg=#7f0f2f
  let env = has('gui_running') ? 'gui' : 'cterm'
  " for hi in ['TabLine', 'TabLineSel']
  "   let bg = synIDattr(synIDtrans(hlID(hi)), 'bg', env)
  "   let bg = bg != '-1' ? env . 'bg=' . bg : ''
  "   "echo bg
  "   execute 'highlight ' . hi . 'Number ' . env . 'fg=DarkMagenta ' . bg
  " endfor
endfunction

function! s:syntax_misc() "{{{2
  if bufname('%') =~? 'Highlight test'
    setlocal nolist
  endif
endfunction


" Get buffer name
function!  s:GetBufferName(bufnr) "{{{2
  let l:bufname = ''
  if l:bufname == ''
    let l:bufname = fnamemodify(bufname(a:bufnr),':t')
    if l:bufname == ''
      if &buftype == 'quickfix'
        let l:bufname = '[Quickfix List]'
      else
        let l:bufname = '[No Name]'
      endif
    endif
  endif
  return l:bufname
endfunction



" Options: "{{{1

set timeout
set timeoutlen=3000
set ttimeoutlen=100
set updatetime=1000

set notagbsearch

set keywordprg=:help
set helplang=ja,en

" Antialias
if s:ismac
  set antialias
endif

set number
set numberwidth=10
set list
set listchars=tab:>-,trail:_
set fillchars&
set wrap
set whichwrap+=h,l,<,>,[,],b,s,~

set cmdheight=2
set showcmd
set showcmdloc=last

set diffopt=vertical


" Encoding: "{{{2
set encoding=utf-8
scriptencoding=utf-8

set fileencoding=utf-8

set fileformat=unix
set fileformats=unix,dos,mac
set ambiwidth=double

" Search: "{{{2
set ignorecase
set smartcase
set incsearch
set hlsearch
set wrapscan


" Edit: "{{{2
" tab setting
set smarttab
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround

set modeline

" Use clipboard
"set clipboard

autocmd MyAutoCmd FileType * set textwidth=0

set backspace=indent,eol,start
set showmatch
set matchtime=3
" Highlight <>.
set matchpairs&
set matchpairs+=<:>

set hidden
set autoread
"set infercase

" Ime: "{{{3
set iminsert=0
set imsearch=0
set noimcmdline
inoremap <ESC> <ESC>:set iminsert=0<CR>
nnoremap / <ESC>:set imsearch=0<CR>/

" Colorscheme: "{{{2

" Enable syntax color.
syntax enable
" Make directory "{{{3
let s:save_color_dir = g:vim_info_dir . "/color"
let s:save_color_file = s:save_color_dir . "/.vimcolor"

if !isdirectory(s:save_color_dir)
  call mkdir(s:save_color_dir, 'p')
endif "}}}3
" Save colorschme
augroup SaveColor "{{{3
  autocmd!
  autocmd VimLeavePre * call s:save_color()
  function! s:save_color() "{{{4
    let options = [
    \ 'colorscheme ' . g:colors_name
    \]
    call writefile(options, s:save_color_file)
  endfunction
augroup END "}}}3

if filereadable(s:save_color_file)
  try
    execute 'source ' s:save_color_file
    color Layven
  catch /E185/
    " Not sloved colorscheme ...
    let csname = <SID>ColorschemeRandom()
    execute 'colorscheme ' csname
    "execute 'colorscheme Layven'
  endtry
endif

" Terminal "{{{2
if has('terminal')

  if &term =~# 'g:bulitin_gui'
    set &t_EI = "\<Esc>[2 q" " ブロック (点滅なし)
    let &t_EI .= "\e[1 q"
  endif

  " Terminal color
  let g:terminal_ansi_colors = [
        \ "#0c0c0c", "#c50f1f", "#13a10e", "#c19c00",
        \ "#0037da", "#881798", "#3a96dd", "#cccccc",
        \ "#767676", "#e74856", "#16c60c", "#eadf84",
        \ "#3b78ff", "#b4009e", "#61d6d6", "#e8e8e8"
        \ ]
endif

" Indent "{{{2
set autoindent
set smartindent
set cindent

" Fold: "{{{2
set foldenable
set foldmethod=marker
" Show folding level.
set foldcolumn=10


" Title: "{{{2
set title
set titlelen=999
" make titlestring "{{{3
function! Titlestr() abort
  let l:tstr = ''
  let l:tstr .= '%t'
  "let l:tstr .= s:GetBufferName('%')
  let l:tstr .= "%(%m%r%w %)"
  let l:tstr .= "%q"
  let l:tstr .= "%y"
  let l:tstr .= "%([%{fnamemodify(expand('%:h'), ':~')}]%)"
  if v:servername !=# ""
    let l:tstr .= " - " . v:servername
  endif
  let l:tstr .= '@' . hostname()
  return l:tstr
endfunction "}}}3
let &titlestring = Titlestr()
set titleold="" "}}}2
" Tabline: "{{{2
" Always show tab
set showtabline=2


" my_tabline "{{{3
function! My_tabline() abort

  let l:s = ''

  for l:i in range(1, tabpagenr('$'))
    let l:bufnrs = tabpagebuflist(l:i)
    let l:curbufnr = l:bufnrs[tabpagewinnr(l:i) - 1]  " first window, first appears

    let l:no = (l:i <= 10 ? l:i-1 : '#')  " display 0-origin tabpagenr.
    let l:mod = len(filter(bufnrs, 'getbufvar(v:val, "&modified")')) ? '+' : ' '
    let l:title = gettabwinvar(l:i, tabpagewinnr(l:i), 'title')
    if l:title == ''
      let l:title = s:GetBufferName(l:curbufnr)
    endif

    let l:stabn = l:i
    if &showtabpanel > 1
      let l:stabn += 1
    endif

    let l:s .= '%'. l:stabn .'T'
    let l:ts = '%#' . (l:i == tabpagenr() ? 'TabLineSel' : 'TabLine') . '#'
    let l:s .= l:ts . ' ' . l:no . ':' . l:title . l:mod
    let l:s .= '%#TabLineFill#'
    let l:s .= ' | '
  endfor

  let l:s .= '%#TabLineFill#%T%=%#TabLine#[%999X %{fnamemodify(getcwd(), ":~")} ]'

  return l:s

endfunction "}}}3

set tabline=%!My_tabline()

" Tabpanel: "{{{2
if has('tabpanel')
  set fillchars=tpl_vert:\
  set tabpanelopt=align:left,vert,columns:25


  function! s:tabpage_label() abort

    let l:ret = "\n"

    let l:tabnr = g:actual_curtabpage
    let l:label = ''
    let l:bufname = ''
    let l:mod = ''
    let l:markcurbuf = ''
    let l:buflist = tabpagebuflist(l:tabnr)
    for l:bufnr in l:buflist
      let l:bufname = s:GetBufferName(l:bufnr)
      let l:mod = getbufvar(l:bufnr, "&modified") ? '+' : ' '
      let l:mrkcurbuf = l:bufnr ==# bufnr('%') ? '>>' : printf("%2s", ' ')
    let l:label .= l:mrkcurbuf .. l:bufname .. l:mod .. l:ret
    endfor

    let l:hi = l:tabnr is tabpagenr() ? '%#TabPanelSel#' : '%#TabPanel#'

    let l:title = gettabwinvar(l:bufnr, tabpagewinnr(l:bufnr), 'title')
    if l:title ==# ''
      let l:title = printf("%s:%02d", "tabpage", l:tabnr)
    endif

    return l:hi .. '%' .. l:tabnr .. 'T' .. l:title ..  l:ret ..   l:label .. '%T'

  endfunction


  " tabpanel "{{{3
  function! My_tabpanel() abort
    let l:label = s:tabpage_label()
    return l:label
  endfunction "}}}3


  function! s:tabpanel_update()
    if &columns > 125
      set showtabpanel=2
      redrawtabpanel
    else
      set showtabpanel=0
    endif
  endfunction


  set tabpanel=%!My_tabpanel()

  augroup vim-tabpanel-display
    autocmd!

    " show tabpanel ?
    autocmd VimResized * call s:tabpanel_update()
  augroup END
endif


"  Statusline "{{{2
" Always display statusline.
set laststatus=2
"makes statusline "{{{3
function! Makestatusline() abort
  " mode
  let l:sts = ''
  let l:sts .= s:GetBufferName('%')
  let l:sts .= '%m'
  let l:sts .= '%r'
  let l:sts .= '%h'
  let l:sts .= '%w'
  let l:sts .= '%q'
  let l:sts .= " "
  let l:sts .= "%{'['.(&fileencoding!='' ? &fileencoding : &encoding)}"
  let l:sts .= "|"
  let l:sts .= "%{&fileformat}]"
  let l:sts .= "%y"

  let l:sts .= "%="
  let l:sts .= "%S"
  let l:sts .= "%("
  let l:sts .= "%)"
  if !empty(expand('%:h'))
    let l:sts .= "[%{fnamemodify(expand('%:h'), ':~')}]"
  endif
 return l:sts
endfunction "}}}3
set statusline=%!Makestatusline()


" Ruler "{{{2
set ruler
set rulerformat=%15(%c%V\ %3p%%%) "}}}2
" Guitablabel "{{{2
function GuiTabLabel()
  let label = ''
  let bufnrlist = tabpagebuflist(v:lnum)

  " Add '+' if one of the buffers in the tab page is modified
  for bufnr in bufnrlist
    if getbufvar(bufnr, "&modified")
      let label = '+'
      break
    endif
  endfor

  " Append the number of windows in the tab page if more than one
  let wincount = tabpagewinnr(v:lnum, '$')
  if wincount > 1
    let label ..= wincount
  endif
  if label != ''
    let label ..= ' '
  endif

  " Append the buffer name
  return label .. bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
endfunction

set guitablabel=%{GuiTabLabel()}
"}}}2

set linebreak
if s:iswin || !has('gui_running')
  "let &showbreak='->'
   let &showbreak='>\'
else
  let &showbreak='->'
endif
set breakat=\ \	;:,!?
" Do not display greetings message at the time of Vim start.
set shortmess=aTI

" sound on errors
set noerrorbells

" Disable bell.
set visualbell t_bv=
set belloff=all

" Display candidate supplement.
set wildmenu
set wildmode=list:longest,full
" Increase history amount.
set history=200
" Display all the information of the tag by the supplement of the Insert mode.
set showfulltag
" Can supplement a tag in a command-line.
set wildoptions=tagfile
set wildoptions+=pum

" Enable spell check.
set spelllang=en_us

" Completion setting.
set completeopt=menuone,preview
"set completeopt=menuone,popup

" Don't complete from other buffer.
"set complete+=.
"set &complete complete+=k
"formatoptions
set complete=.,w,b,i,t
" Set popup menu max height.
set pumheight=20

" Report changes.
set report=0

" Maintain a current line at the time of movement as much as possible.
set nostartofline

set splitbelow
set splitright

set winwidth=60
set winheight=20
set cmdwinheight=5
set noequalalways

set previewheight=3
set helpheight=12

set lazyredraw

set display=lastline
set display+=uhex

autocmd MyAutoCmd FileType * setl formatoptions-=ro | setl formatoptions+=mM

set formatoptions+=mM

if has('signs')
  set signcolumn=yes
endif

set suffixes&
"set winfixbuf

set switchbuf=uselast

set smoothscroll

"cursorline
set cursorlineopt=number,line
" Scroll Off "{{{2
"set scrolloff=0
let g:scrolloff = 10    " see below

" Hack for <LeftMouse> not to adjust ('scrolloff') when single-clicking.
" Implement 'scrolloff' by auto-command to control the fire.
autocmd MyAutoCmd CursorMoved * call s:reinventing_scrolloff()
let s:last_lnum = -1
function! s:reinventing_scrolloff() "{{{3
    if g:scrolloff ==# 0 || s:last_lnum > 0 && line('.') ==# s:last_lnum
        return
    endif
    let s:last_lnum = line('.')
    let winline     = winline()
    let winheight   = winheight(0)
    let middle      = winheight / 2
    let upside      = (winheight / winline) >= 2
    " If upside is true, add winlines to above the cursor.
    " If upside is false, add winlines to under the cursor.
    if upside
        let up_num = g:scrolloff - winline + 1
        let up_num = winline + up_num > middle ? middle - winline : up_num
        if up_num > 0
            execute 'normal!' up_num."\<C-y>"
        endif
    else
        let down_num = g:scrolloff - (winheight - winline)
        let down_num = winline - down_num < middle ? winline - middle : down_num
        if down_num > 0
            execute 'normal!' down_num."\<C-e>"
        endif
    endif
endfunction "}}}3


"  Free cursor: "{{{2
if has('virtualedit')
  set virtualedit=all
  if has('virtualedit') && &virtualedit =~# '\<all\>'
    nnoremap <expr> <SID>($-if-right-of-$)  (col('.') >= col('$') ? '$' : '')
    nnoremap        <SID>(noremap-p)        p
    nmap p <SID>($-if-right-of-$)<SID>(noremap-p)
  endif
endif

" Bkup: "{{{2
if v:version >= 703
  set nowritebackup
else
  set writebackup
endif
set backup
set backupcopy=auto
" Make directory "{{{3
let s:bkupdir = g:vim_info_dir . '/.bkup'
if !isdirectory(s:bkupdir)
  call mkdir(s:bkupdir, 'p', '700')
endif
let &backupdir=s:bkupdir
unlet s:bkupdir


" Swap file: "{{{2
set swapfile
set directory-=.
" Make directory. "{{{3
let s:swapdir = g:vim_info_dir . '/.swap'
if !isdirectory(s:swapdir)
  call mkdir(s:swapdir, 'p')
endif
let &directory=s:swapdir
unlet s:swapdir

" View: "{{{2
" save and load fold settings automatically
" Reference: http://vim-users.jp/2009/10/hack84/
" Don't save options.
set viewoptions-=options
let &viewdir = g:vim_info_dir . '/view'
" Make directory "{{{3
if !isdirectory(&viewdir)
  call mkdir(&viewdir, 'p')
endif "}}}3
augroup MyAutoCmd
    autocmd BufWritePost *
    \   if expand('%') != '' && &buftype !~ 'nofile'
    \|      mkview
    \|  endif
    autocmd BufRead *
    \   if expand('%') != '' && &buftype !~ 'nofile'
    \|      silent loadview
    \|  endif
augroup END

" Session: "{{{2
set sessionoptions=buffers,curdir,folds,tabpages
" Make directory "{{{3
let s:session_dir = g:vim_info_dir . '/.session'
if !isdirectory(s:session_dir)
  call mkdir(s:session_dir, 'p')
endif
let s:session_file = s:session_dir . '/session.vim'
function! s:save_session() "{{{3
  let cwd = getcwd()
  " echomsg "cwd : " . cwd
  " echomsg "s:session_dir : " . s:session_dir
  " echomsg "s:session_file : " . s:session_file
  try
    cd `=s:session_dir`
  catch /E121/
    echo "Failed cd ."
  catch /E15/
    echo "Failed cd ."
  endtry
  try
    mksession! `=s:session_file`
    echo "Session saved."
  catch /E121/
    echo "Failed session saved."
  catch /E15/
    echo "Failed session saved."
  finally
    cd `=cwd`
  endtry
endfunction

function! s:load_session() "{{{3
    if filereadable(s:session_file)
        let cwd = getcwd()
        cd ~
        source `=s:session_file`
        cd `=cwd`
    endif
    tabdo cd
endfunction

" Undo: "{{{2
if has('persistent_undo')
  " Set undofile.
  set undofile
  "let &undodir=&directory
  " Make directory "{{{3
  let s:undorectory = g:vim_info_dir . '/.undo'
  if !isdirectory(s:undorectory)
    call mkdir(s:undorectory, 'p')
  endif "}}}3
  let &undodir=s:undorectory
  unlet s:undorectory
endif



" Verbose: "{{{2
"set verbose=15
" Make directory "{{{3
let s:verbosedir = g:vim_info_dir . '/.verbose'
if !isdirectory(s:verbosedir)
  call mkdir(s:verbosedir, 'p')
endif
let $VIMVERBOSEINFO=s:verbosedir
" set verbosefile=$VIMVERBOSEINFO/verboseinfo.txt "}}}3
unlet s:verbosedir

" Viminfo: "{{{2
" Set place for save infofile
" Make directory "{{{3
let s:infodir = g:vim_info_dir . '/info'
if !isdirectory(s:infodir)
  call mkdir(s:infodir, 'p')
endif "}}}3
let $VIMINFO=s:infodir
unlet! s:infodir
"set viminfo=<50,'10,h,r/a,n$INFO/.viminfo
set viminfo&
set viminfo='50,h,f1,n$VIMINFO/.viminfo
" Don't make viminfo
"set viminfo=


" Mouse: "{{{2
set mouse=a


" Make: "{{{2
if has('iconv')
  set makeencoding=char
else
  set makeencoding='utf-8'
endif

" Grep: "{{{2
if executable('rg')
  set grepprg='rg -n --vimgrep $* /dev/null'
elseif executable('grep')
  set grepprg='grep -n $* /dev/null'
else
  set grepprg='internal'
endif


" File type options: "{{{2
" vim "{{{3
let g:no_vim_maps = 1


" python "{{{3
let g:python_recommended_style = 0


" Autocmd: "{{{1

" Delete space at end of line (File type is not vim, help) "{{{2
augroup vim-delete-space-end-of-line
  " Omit file types
  let s:rtm_filetypes = [
    \ 'help',
    \ ]

  autocmd!
  autocmd BufWritePre * let expr_ft = s:omitfiletype(s:rtm_filetypes, 1, 0)
  autocmd BufWritePre * if expr_ft | call s:RTrim() | endif

  function! s:RTrim() "{{{3
    let s:cursor = getpos(".")
    %s/\s\+$//e
    call setpos(".", s:cursor)
  endfunction

augroup END


" Cursorline "{{{2
augroup vimrc-auto-cursorline

  let expr_ft = 0

  " Omit filetypes
  let s:cl_filetypes = [
    \ 'vimshell',
    \ 'vimfiler',
    \ 'unite',
    \ 'int-*',
    \ 'term-*',
    \ ]

  autocmd!
  " Don't draw cursorline that filetype is vimshell and more
  autocmd CursorHold,WinEnter,BufEnter,CursorMoved,CursorMovedI,WinLeave *
  \       let expr_ft = s:omitfiletype(s:cl_filetypes, 1, 0)
  autocmd CursorMoved,CursorMovedI * if expr_ft | call s:auto_cursorline('CursorMoved') | endif
  autocmd CursorHold,CursorHoldI * if expr_ft | call s:auto_cursorline('CursorHold') | endif
  autocmd WinEnter * if expr_ft | call s:auto_cursorline('WinEnter') | endif
  autocmd WinLeave * call s:auto_cursorline('WinLeave')

  let s:cursorline_lock = 0
  function! s:auto_cursorline(event) "{{{3
    if a:event ==# 'WinEnter'
      setlocal cursorline
      let s:cursorline_lock = 2
    elseif a:event ==# 'WinLeave'
      setlocal nocursorline
    elseif a:event ==# 'CursorMoved'
      if s:cursorline_lock
        if 1 < s:cursorline_lock
          let s:cursorline_lock = 1
        else
          setlocal nocursorline
          let s:cursorline_lock = 0
        endif
      endif
    elseif a:event ==# 'CursorHold'
      setlocal cursorline
      let s:cursorline_lock = 1
    endif
  endfunction

augroup END


" Reload .vimrc and .gvimrc automatically.{{{2
augroup ReLoad
  autocmd!
  if !has('gui_running') && !(has('win32') || has('win64'))
    " At first load .vimrc
    autocmd  BufWritePost $MYVIMRC nested source $MYVIMRC | echo "source $MYVIMRC"
  else
    " Change color also reload .vimrc
    autocmd BufWritePost $MYVIMRC nested source $MYVIMRC |
          \ if has('gui_running') | source $MYGVIMRC | echo "source $MYVIMRC"
    autocmd BufWritePost $MYGVIMRC nested if has('gui_running') | source $MYGVIMRC | echo "source $MYGVIMRC"
  endif
augroup END


augroup vimrc-highlight "{{{2

  let s:hi_filetypes = [
   \ 'txt',
   \ 'text',
   \ 'help',
   \ 'vimfiler',
   \ ]

  autocmd!
  " Special Characters
  autocmd ColorScheme * let expr_ft = s:omitfiletype(s:hi_filetypes, 1, 0)
  autocmd ColorScheme * if expr_ft | call s:highlight_additional() | endif
  autocmd VimEnter,WinEnter * call s:syntax_additional()
  " Misc
  autocmd ColorScheme * call s:syntax_misc()

augroup END


"augroup vim-print-source-colorscheme "{{{2
"  autocmd!
"  autocmd ColorScheme * echomsg 'ColorScheme ' . g:colors_name
"augroup END


augroup MyAutoCmd "{{{2

  " Because textwidth is auto setted 78, in ftplugin of vim
  " This line Position is under next sentence, that 'ftplugin on' and 'ftpindent on'
  autocmd FileType vim setl textwidth=0

  " Easily load VimScript.
  autocmd FileType vim nnoremap <silent><buffer> [Space]so :write \| source % \| echo "source " . bufname('%')<CR>

  " Auto reload VimScript.
  autocmd BufWritePost,FileWritePost *.vim if &autoread | source <afile> | echo "source " . bufname('%') | endif

  " Manage long Rakefile easily
  autocmd BufNewfile,BufRead Rakefile foldmethod=syntax foldnestmax=1

  " Close help and git window by pressing q.
  autocmd FileType help,git-status,git-log,qf,gitcommit,quickrun,qfreplace,ref,simpletap-summary,ucw-history nnoremap <buffer><silent> q :<C-u>close<CR>
  autocmd FileType * if &readonly | nnoremap <buffer><silent> q :<C-u>close<CR> | endif
  " Add bufname is Highlight test and filetype is te*xt
  " Finding to better way
  autocmd BufNewFile,BufRead * if ((bufname('%') =~? 'Highlight test')) | nnoremap <silent><buffer> q :<C-u>close<CR>| endif

  " Close help and git window by pressing q.
  autocmd FileType ref nnoremap <buffer> <TAB> <C-w>w

  "autocmd FileType c setlocal ts=4 sw=4 sts=4 foldmethod=syntax
  autocmd FileType c setlocal ts=4 sw=4 sts=4


augroup END


"augroup test-startup "{{{2
"
"  autocmd ColorScheme * echo g:colors_name
"
"augroup END


" display resize window site: "{{{2
augroup display-window-size
  autocmd!
  autocmd VimResized * call s:display_window_size()

  function s:display_window_size()
    echo(printf("Columns : %d - Lines : %d", &columns, &lines))
  endfunction

augroup END


" vimrc misc "{{{2
augroup vimrc-misc
  autocmd!

  autocmd InsertLeave * if &paste | set nopaste | endif
  autocmd FocusGained,WinEnter * if &autoread | checktime %
   " Auto open/close Quickfix/location window.
  autocmd QuickFixCmdPost [^l]* leftabove cwindow | redraw!
  autocmd QuickFixCmdPost l* lwindow | redraw!
augroup END


" Keymaps: "{{{1

" map leader
let g:mapleader = ","

" quick save
nnoremap <silent> <Space>w  :<C-u>update<CR>
nnoremap <silent> <Space>fw :<C-u>write!<CR>
" quick close
" nnoremap <silent> <Space>q  :<C-u>quit<CR>
nnoremap <silent> <Space>q  :<C-u>quit<CR>
nnoremap <silent> <Space><leader>q  :<C-u>quit!<CR>
nnoremap <silent> <Space>aq :<C-u>quitall<CR>
" nnoremap <silent> <Space>fq :<C-u>quitall!<CR>
nnoremap <silent> <Space>fq :<C-u>close!<CR>

" Edit vim config file
nnoremap <silent> <Space>ev :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> <Space>eg :<C-u>edit $MYGVIMRC<CR>

" Swapping j gj k gk
noremap j gj
noremap k gk
noremap gj j
noremap gk k

noremap ^ g^

" Clear highlight
nnoremap <silent> <ESC><ESC> :nohlsearch<CR>

" Highlight test
command! -nargs=0 Hitest source<bang> $VIMRUNTIME/syntax/hitest.vim

" Command-line mode keymappings:"{{{
" <C-a>, A: move to head.
cnoremap <C-a>          <Home>
"" <C-b>: previous char.
cnoremap <C-b>          <Left>
" <C-d>: delete char.
cnoremap <C-d>          <Del>
" <C-e>, E: move to end.
cnoremap <C-e>          <End>
" <C-f>: next char.
cnoremap <C-f>          <Right>
" <C-n>: next history.
cnoremap <C-n>          <Down>
" <C-p>: previous history.
cnoremap <C-p>          <Up>
" <C-k>, K: delete to end.
cnoremap <C-k> <C-\>e getcmdpos() == 1 ? '' : getcmdline()[:getcmdpos()-2]<CR>
" <C-y>: paste.
cnoremap <C-y>          <C-r>*
" <C-s>: view history.
cnoremap <C-s>          <C-f>
" <C-l>: view completion list.
cnoremap <C-l>          <C-d>
" <A-b>, W: move to previous word.
cnoremap <A-b>          <S-Left>
" <A-f>, B: move to next word.
cnoremap <A-f>          <S-Right>
cnoremap <S-TAB>        <C-p>
" <C-g>: decide candidate.
cnoremap <C-g>          <Space><C-h>
" <C-t>: insert space.
cnoremap <C-t>          <Space>
"}}}
"
" Switch the tab page
nnoremap <silent> <C-n> :<C-u>tabnext<CR>
nnoremap <silent> <C-p> :<C-u>tabprevious<CR>

" Display position on search
nnoremap n  nzvzz
nnoremap N  Nzvzz
nnoremap #  #zvzz
nnoremap g*  g*zvzz
nnoremap g#  g#zvzz


" Load .gvimrc after .vimrc edited at GVim.
nnoremap <silent> <Space>rv :<C-u>source $MYVIMRC \| if has('gui_running') \| source $MYGVIMRC \| endif \| echo "source $MYVIMRC"<CR>
nnoremap <silent> <Space>rg :<C-u>source $MYGVIMRC \| echo "source $MYGVIMRC"<CR>

" Session
nnoremap <silent> <Space>Se :<C-u>call <SID>save_session()<CR>
nnoremap <silent> <Space>se :<C-u>call <SID>load_session()<CR>

" Redraw.
nnoremap <silent> <C-l>    :<C-u>redraw!<CR>

" Y
nnoremap <silent> Y y$

" quickfix
nmap Q [Qucik_Fix]
nnoremap [Quick_Fix] <Nop>

nnoremap [Quick_Fix]n cn
nnoremap [Quick_Fix]p cp
nnoremap [Quick_Fix]ln ln
nnoremap [Quick_Fix]lp lp

" Tab
nnoremap <silent><Left>  <C-u>:tabprev<CR>
nnoremap <silent><Right> <C-u>:tabNext<CR>
nnoremap <silent><Up>    <C-u>:tabprev<CR>
nnoremap <silent><Down>  <C-u>:tabNext<CR>


" Terminal "{{{2
tnoremap <M-a> :<C-u>call <SID>sendtoterm("\<C-a>")
tnoremap <M-b> <C-w>
tnoremap <M-c> <c-c>
tnoremap <M-d> <c-d>
tnoremap <M-e> <c-e>
tnoremap <M-f> <C-f>
tnoremap <M-g> <c-g>
tnoremap <M-h> <c-h>
tnoremap <M-i> <c-i>
tnoremap <M-j> <c-j>
tnoremap <M-k> <c-k>
tnoremap <M-l> <c-l>
tnoremap <M-m> <C-m>
tnoremap <M-n> <C-n>
tnoremap <M-o> <C-o>
tnoremap <M-p> <C-p>
tnoremap <M-q> <C-q>
tnoremap <M-r> <C-r>
tnoremap <M-s> <C-s>
tnoremap <M-t> <C-t>
tnoremap <M-u> <C-u>
tnoremap <M-v> <C-v>
tnoremap <M-w> <C-w>
tnoremap <M-x> <C-x>
tnoremap <M-y> <C-y>
tnoremap <M-z> <C-z>
tnoremap <M-.> <M-.>

function! s:sendtoterm(keys) abort
  call term_sendkeys('', a:keys)
  return ''
endfunction

" Plugins: "{{{1

" matchit
packadd! matchit

" help:
"packadd! ~/.vim/bundle/vimdoc-ja
set runtimepath+=~/.vim/pack/vimdoc-ja


" Command: "{{{1

" Rename file "{{{2
command!
\  -nargs=1 -bang
\  -bar -complete=file
\  Rename saveas <bang> <args>
\  call delete(expand("#:p"))


" Capture ex command "{{{2
command!
\  -nargs=+ -bang
\  -complete=command
\  Capture
\  call s:cmd_capture([<f-args>], <bang>0)


function! C(cmd) "{{{3
  redir => result
  silent execute a:cmd
  redir END
  return result
endfunction

function! s:cmd_capture(args, banged) "{{{3
  new
  silent put =C(join(a:args))
  1,2delete _
endfunction


" Print all mapping "{{{2
command!
\  -nargs=* -complete=mapping
\  AllMaps
\  map <args> | map! <args> | lmap <args>



" Misc: "{{{1

set secure

" End: "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim


