" Note: "{{{
" <If> do not 0
" Highlight with ZenkakuSpace /　/
" via Shougo's vimrc
"}}}

"---------------------------------------------------------------------------
" Initialize:"{{{
"

" Disable Vi compatible commands.
set nocompatible

" Platform detection
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

" Position of vim runtime "{{{
if s:iswin
  " let g:vim_dir = expand('~/vimfiles')
  let g:vim_dir = expand('~/.vim')
else
  " Define $DOTVIM is ~/.vim on *nix
  let g:vim_dir = expand('~/.vim')
endif
let g:vim_info_dir = g:vim_dir . '/initfiles'
" Make directory "{{{
if !isdirectory(g:vim_dir)
  call mkdir(g:vim_dir, 'p')
endif
if !isdirectory(g:vim_info_dir)
  call mkdir(g:vim_info_dir, 'p')
endif "}}}
"}}}

" Use English interface.
if s:iswin
  " For Windows.
  language message en
  " language message ja
else
  " For Linux.
  language mes C
endif

if exists('&msghistlen')
  set msghistlen=9999
endif

" Use ',' instead of '\'.
" It is not mapped with respect well unless I set it before setting for plug in.
let mapleader = ','
" Use <Leader> in global plugin.
let g:mapleader = ','
" Use <LocalLeader> in filetype plugin.
let g:maplocalleader = 'm'

" Release keymappings for plug-in.
"nnoremap ;  <Nop>
"xnoremap ;  <Nop>
"nnoremap m  <Nop>
"xnoremap m  <Nop>
"nnoremap ,  <Nop>
"xnoremap ,  <Nop>

if s:iswin
  " Exchange path separator.
  set shellslash
endif

" In Windows/Linux, take in a difference of ".vim" and "$VIM/vimfiles".
if s:iswin
  "let $DOTVIM = expand('$VIM')
  let $DOTVIM =  g:vim_dir
else
  "let $DOTVIM = expand('~/.vim')
  let $DOTVIM = expand('~/.vim')
endif

" Because a value is not set in $MYGVIMRC with the console, set it.
if !exists('$MYGVIMRC')
  if s:iswin
    "let $MYGVIMRC = expand('$MY_HOME/_gvimrc')
    let $MYGVIMRC = expand('~/.gvimrc')
  else
    let $MYGVIMRC = expand('~/.gvimrc')
  endif
endif

" Setting for only first booting "{{{
if has('vim_starting')
  if s:iswin
    " Setting of path for use tools
    let mingw_pass = 'z:\MinGW'
    let msys_pass = 'z:\msys'
    let git_pass = 'z:\usr\bin\Git'
    let gow_pass = 'z:\usr\bin\gow'
    let plus_bin = '\bin'
    let $PATH = msys_pass . plus_bin . ';' . mingw_pass . plus_bin . ';' . git_pass . plus_bin . ';' . gow_pass . ';' . $PATH
    unlet gow_pass
  else
  " Set path.
  let $PATH = expand('~/ws/local/bin') . ':/usr/local/bin:' . $PATH
  endif
endif
"}}}

" Easily edit .vimrc and .gvimrc "{{{
nnoremap <silent> <Space>ev :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> <Space>eg :<C-u>edit $MYGVIMRC<CR>

"nnoremap <silent> <Space>ev :<C-u>call <SID>EditRcFileWay('cui')<CR>
"nnoremap <silent> <Space>eg :<C-u>call <SID>EditRcFileWay('gui')<CR>

" Edit rcfile way
function! s:EditRcFileWay(ui) "{{{
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
endfunction "}}}
" }}}

" Load .gvimrc after .vimrc edited at GVim. "{{{
nnoremap <silent> <Space>rv :<C-u>source $MYVIMRC \| if has('gui_running') \| source $MYGVIMRC \| endif \| echo "source $MYVIMRC"<CR>
nnoremap <silent> <Space>rg :<C-u>source $MYGVIMRC \| echo "source $MYGVIMRC"<CR>
"}}}

" Func "{{{
" Anywhere SID. "{{{
function! s:SID_PREFIX()
  return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction "}}}
function! s:set_default(var, val) "{{{
  if !exists(a:var) || type({a:var}) != type(a:val)
    let {a:var} = a:val
  endif
endfunction "}}}
function! s:SNR(map) "{{{
    return printf("<SNR>%d_%s", s:SID(), a:map)
endfunction "}}}
"}}}

filetype off
filetype plugin on
filetype indent on

" Initialize autocmd.
augroup MyAutoCmd
  autocmd!
augroup END

" Reload .vimrc and .gvimrc automatically.{{{
augroup ReLoad
  autocmd!
  if !has('gui_running') && !(has('win32') || has('win64'))
    " At first load .vimrc
    autocmd  BufWritePost $MYVIMRC nested source $MYVIMRC | echo "source $MYVIMRC"
  else
    " Change color also reload .vimrc
    autocmd  BufWritePost $MYVIMRC nested source $MYVIMRC |
          \if has('gui_running') | source $MYGVIMRC | echo "source $MYVIMRC"
    autocmd  BufWritePost $MYGVIMRC nested if has('gui_running') | source $MYGVIMRC | echo "source $MYGVIMRC"
  endif
augroup END
"}}}

" Load settings for each location."{{{

" Even Windows use "$HOME/.vim".
let &rtp = substitute(&rtp,
  \ escape($HOME, '\') . '/vimfiles', escape($HOME, '\') . '/.vim', 'g')

" Set runtimepath.
let pmps = expand('~/.vim/bundle/rtputil.vim')
if isdirectory(pmps)
  let &runtimepath = join([g:vim_dir, g:vim_dir . '/after', pmps, expand('$VIM'), expand('$VIMRUNTIME')], ',')
else
  let &runtimepath = join([g:vim_dir, g:vim_dir . '/after', expand('$VIM'), expand('$VIMRUNTIME')], ',')
endif
unlet pmps
"}}}

" Load file "{{{
if filereadable(expand('~/.secret_vimrc'))
  execute 'source ' expand('~/.secret_vimrc')
endif
"}}}
"}}}

"---------------------------------------------------------------------------
" Encoding:"{{{
"
" The automatic recognition of the character code.

" Setting of the encoding to use for a save and reading.
" Make it normal in UTF-8 in Unix.
set encoding=utf-8

" Setting of terminal encoding."{{{
if !has('gui_running')
  if &term == 'win32' || &term == 'win64'
    " Setting when use the non-GUI Japanese console.

    " Garbled unless set this.
    set termencoding=cp932
    " Japanese input changes itself unless set this.
    " Be careful because the automatic recognition of the character code is not possible!
    set encoding=japan
  else
    if $ENV_ACCESS ==# 'linux'
      set termencoding=euc-jp
    elseif $ENV_ACCESS ==# 'colinux'
      set termencoding=utf-8
    else  " fallback
      set termencoding=  " same as 'encoding'
    endif
  endif
elseif s:iswin
  " For system.
  set termencoding=cp932
endif
"}}}

" The automatic recognition of the character code."{{{
if !exists('did_encoding_settings') && has('iconv')
  let s:enc_euc = 'euc-jp'
  let s:enc_jis = 'iso-2022-jp'

  " Does iconv support JIS X 0213?
  if iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'euc-jisx0213,euc-jp'
    let s:enc_jis = 'iso-2022-jp-3'
  endif

  " Build encodings.
  let &fileencodings = 'ucs-bom'
  if &encoding !=# 'utf-8'
    let &fileencodings = &fileencodings . ',' . 'ucs-2le'
    let &fileencodings = &fileencodings . ',' . 'ucs-2'
  endif
  let &fileencodings = &fileencodings . ',' . s:enc_jis

  if &encoding ==# 'utf-8'
    let &fileencodings = &fileencodings . ',' . s:enc_euc
    let &fileencodings = &fileencodings . ',' . 'cp932'
  elseif &encoding =~# '^euc-\%(jp\|jisx0213\)$'
    let &encoding = s:enc_euc
    let &fileencodings = &fileencodings . ',' . 'utf-8'
    let &fileencodings = &fileencodings . ',' . 'cp932'
  else  " cp932
    let &fileencodings = &fileencodings . ',' . 'utf-8'
    let &fileencodings = &fileencodings . ',' . s:enc_euc
  endif
  let &fileencodings = &fileencodings . ',' . &encoding

  unlet s:enc_euc
  unlet s:enc_jis

  let did_encoding_settings = 1
endif
"}}}

if has('kaoriya')
  " For Kaoriya only.
  set fileencodings=guess
endif

" When do not include Japanese, use encoding for fileencoding.
function! AU_ReCheck_FENC()
  if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0
    let &fileencoding=&encoding
  endif
endfunction

autocmd MyAutoCmd BufReadPost * call AU_ReCheck_FENC()

" Default fileformat.
set fileformat=unix
" Automatic recognition of a new line cord.
set fileformats=unix,dos,mac
" A fullwidth character is displayed in vim properly.
set ambiwidth=double

" Command group opening with a specific character code again."{{{
" In particular effective when I am garbled in a terminal.
" Open in UTF-8 again.
command! -bang -bar -complete=file -nargs=? Utf8 edit<bang> ++enc=utf-8 <args>
" Open in iso-2022-jp again.
command! -bang -bar -complete=file -nargs=? Iso2022jp edit<bang> ++enc=iso-2022-jp <args>
" Open in Shift_JIS again.
command! -bang -bar -complete=file -nargs=? Cp932 edit<bang> ++enc=cp932 <args>
" Open in EUC-jp again.
command! -bang -bar -complete=file -nargs=? Euc edit<bang> ++enc=euc-jp <args>
" Open in UTF-16 again.
command! -bang -bar -complete=file -nargs=? Utf16 edit<bang> ++enc=ucs-2le <args>
" Open in UTF-16BE again.
command! -bang -bar -complete=file -nargs=? Utf16be edit<bang> ++enc=ucs-2 <args>

" Aliases.
command! -bang -bar -complete=file -nargs=? Jis  Iso2022jp<bang> <args>
command! -bang -bar -complete=file -nargs=? Sjis  Cp932<bang> <args>
command! -bang -bar -complete=file -nargs=? Unicode Utf16<bang> <args>
"}}}

" Tried to make a file note version."{{{
" Don't save it because dangerous.
command! WUtf8 setlocal fenc=utf-8
command! WIso2022jp setlocal fenc=iso-2022-jp
command! WCp932 setlocal fenc=cp932
command! WEuc setlocal fenc=euc-jp
command! WUtf16 setlocal fenc=ucs-2le
command! WUtf16be setlocal fenc=ucs-2
" Aliases.
command! WJis  WIso2022jp
command! WSjis  WCp932
command! WUnicode WUtf16
"}}}

" Handle it in nkf and open.
command! Nkf !nkf -g %

" Appoint a line feed."{{{
command! -bang -bar -complete=file -nargs=? Unix edit<bang> ++fileformat=unix <args>
command! -bang -bar -complete=file -nargs=? Mac edit<bang> ++fileformat=mac <args>
command! -bang -bar -complete=file -nargs=? Dos edit<bang> ++fileformat=dos <args>
command! -bang -complete=file -nargs=? WUnix write<bang> ++fileformat=unix <args> | edit <args>
command! -bang -complete=file -nargs=? WMac write<bang> ++fileformat=mac <args> | edit <args>
command! -bang -complete=file -nargs=? WDos write<bang> ++fileformat=dos <args> | edit <args>
"}}}"}}}

"---------------------------------------------------------------------------
" Search:"{{{
"
" Ignore the case of normal letters.
set ignorecase
" If the search pattern contains upper case characters, override ignorecase option.
set smartcase

" Enable incremental search.
set incsearch
" highlight search result.
set hlsearch

" Searches wrap around the end of the file.
set wrapscan
"}}}

"---------------------------------------------------------------------------
" Input Japanese:"{{{
"
if has('multi_byte_ime')
  " Settings of default ime condition.
  set iminsert=0 imsearch=0
  nnoremap / :<C-u>set imsearch=0<CR>/
  xnoremap / :<C-u>set imsearch=0<CR>/
  nnoremap ? :<C-u>set imsearch=0<CR>?
  xnoremap ? :<C-u>set imsearch=0<CR>?
endif

" Use ime ?
" set noimdisable
let &imdisable = 1

"}}}

"---------------------------------------------------------------------------
" Edit:"{{{
"

" Smart insert tab setting.
set smarttab
" Exchange tab to spaces.
set expandtab
" Substitute <Tab> with blanks.
set tabstop=2
" Spaces instead <Tab>.
set softtabstop=2
" Autoindent width.
set shiftwidth=2
" Round indent by shiftwidth.
set shiftround

" Enable modeline.
set modeline

" Use clipboard register.
set clipboard& clipboard+=unnamed

" Disable auto wrap.
autocmd MyAutoCmd FileType * set textwidth=0

" Enable backspace delete indent and newline.
set backspace=indent,eol,start

" Highlight parenthesis.
set showmatch
" Highlight when CursorMoved.
set cpoptions-=m
set matchtime=3
" Highlight <>.
set matchpairs&
set matchpairs+=<:>

" Display another buffer when current buffer isn't saved.
set hidden

" Auto reload if file is changed.
set autoread

" Ignore case on insert completion.
set infercase

" Search home directory path on cd.
" But can't complete.
set cdpath+=~

" Editing buffer position is same edit file location
"set browsedir=buffer

" Enable folding.
set foldenable
set foldmethod=marker
" Show folding level.
set foldcolumn=7

" Use vimgrep.
"set grepprg=internal
" Use grep.
set grepprg=grep\ -nH

" Exclude = from isfilename.
set isfname-==

" Keymapping timeout.
set timeout timeoutlen=3000 ttimeoutlen=100

" CursorHold time.
set updatetime=1000

" Don't create backup?
" Set of backup "{{{
" Set directory bkup. "{{{
let s:bkupdir = g:vim_info_dir . '/.bkup'
if !isdirectory(s:bkupdir)
  call mkdir(s:bkupdir, 'p')
endif
let &backupdir=s:bkupdir
unlet s:bkupdir "}}}
if v:version >= 703
  set nowritebackup
else
  set writebackup
endif
" }}}
set backup
" No backup
"set backup

" Don't create swap file
" Set swap file directory. "{{{
set directory-=.
let s:swapdir = g:vim_info_dir . '/.swap'
if !isdirectory(s:swapdir)
  call mkdir(s:swapdir, 'p')
endif
let &directory=s:swapdir
unlet s:swapdir "}}}
set noswapfile

" save and load fold settings automatically
" Reference: http://vim-users.jp/2009/10/hack84/
" Don't save options.
set viewoptions-=options
let &viewdir = g:vim_info_dir . '/view'
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

" Session
set sessionoptions=buffers,curdir,folds,tabpages
let s:session_dir = g:vim_info_dir . '/.session'
" Make directory "{{{
if !isdirectory(s:session_dir)
  call mkdir(s:session_dir, 'p')
endif "}}}
let s:session_file = s:session_dir . '/session.vim'
function! s:save_session() "{{{
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
endfunction "}}}
function! s:load_session() "{{{
    let neco_enabled = exists(':NeoComplCacheDisable')
    if neco_enabled
        NeoComplCacheDisable
    endif
    if filereadable(s:session_file)
        let cwd = getcwd()
        cd ~
        source `=s:session_file`
        cd `=cwd`
    endif
    tabdo CD
    if neco_enabled
        NeoComplCacheEnable
    endif
endfunction "}}}
nnoremap <silent> [Space]Se :<C-u>call <SID>load_session()<CR>
nnoremap <silent> [Space]se :<C-u>call <SID>save_session()<CR>

" Undo
if has('persistent_undo')
  " Set undofile. "{{{
  set undofile
  "let &undodir=&directory
  let s:undorectory = g:vim_info_dir . '/.undo'
  if !isdirectory(s:undorectory)
    call mkdir(s:undorectory, 'p')
  endif
  let &undodir=s:undorectory
  unlet s:undorectory "}}}
endif

" Set tags file.
if has('path_extra')
" Don't search tags file in current directory. And search upward.
set tags& tags-=tags tags+=./tags;
endif
set notagbsearch

" Enable virtualedit in all mode "{{{
if has('virtualedit')
  set virtualedit=all
  if has('virtualedit') && &virtualedit =~# '\<all\>'
    nnoremap <expr> <SID>($-if-right-of-$)  (col('.') >= col('$') ? '$' : '')
    nnoremap        <SID>(noremap-p)        p
    nmap p <SID>($-if-right-of-$)<SID>(noremap-p)
  endif
endif " }}}

" Set keyword help.
set keywordprg=:help

" Binary whith xxd
augroup Binary "{{{
  autocmd!
  autocmd BufReadPre  *.bin let &bin=1
  autocmd BufReadPost *.bin if &bin | %!xxd
  autocmd BufReadPost *.bin set ft=xxd | endif
  autocmd BufWritePre *.bin if &bin | %!xxd -r
  autocmd BufWritePre *.bin endif
  autocmd BufWritePost *.bin if &bin | %!xxd
  autocmd BufWritePost *.bin set nomod | endif
augroup END "}}}

" Delete space at end of line (File type is not vim, help)
augroup vim-delete-space-end-of-line "{{{
  " Omit file types
  let filetypes = [
    \ "help",
    \ ]

  autocmd!
  autocmd BufWritePre *
  \ let expr_ft = s:omitfiletype(filetypes,0,0)
  autocmd BufWritePre * if expr_ft | call s:RTrim() | endif

  function! s:RTrim() "{{{
    let s:cursor = getpos(".")
    %s/\s\+$//e
    call setpos(".", s:cursor)
  endfunction "}}}

augroup END "}}}

"}}}

"---------------------------------------------------------------------------
" View:"{{{
"

" Antialias
if has('mac')
  set antialias
endif

" set cursorline
augroup vimrc-auto-cursorline "{{{

  " Omit filetypes
  let filetypes = [
    \ 'vimshell',
    \ 'vimfiler',
    \ 'int-*',
    \ 'term-*',
    \ 'unite',
    \ ]

  autocmd!
  " Don't draw cursorline that filetype is vimshell and more
  autocmd CursorHold,WinEnter,CursorMoved,CursorMovedI *
  \       let expr_ft = s:omitfiletype(filetypes, 1, 0)
  autocmd CursorMoved,CursorMovedI * call s:auto_cursorline('CursorMoved')
  autocmd CursorHold,CursorHoldI * if expr_ft | call s:auto_cursorline('CursorHold') | endif
  autocmd WinEnter * if expr_ft | call s:auto_cursorline('WinEnter') | endif
  autocmd WinLeave * call s:auto_cursorline('WinLeave')

  let s:cursorline_lock = 0
  function! s:auto_cursorline(event) "{{{
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
  endfunction "}}}

augroup END "}}}

" Show line number.
set number
" set relativenumber
" Show space for line number
set numberwidth=10
" Show special key
set list
"set listchars=eol:.,tab:>-,trail:],extends:>,precedes:<
" Show <TAB>, lastspace
set listchars=tab:>-,trail:_
" Wrap long line.
set wrap
" Wrap conditions.
set whichwrap+=h,l,<,>,[,],b,s,~
" Show ruler
set ruler
"set rulerformat=%15(%c%V\ %p%%%)
" Always display statusline.
set laststatus=2
" Height of command line.
set cmdheight=2
" Show command on statusline.
set showcmd
"diff Settings
set diffopt=vertical

" Show toole.
set title
" Title length.
set titlelen=999
" Title string.
" Next function is invilid, why?
function! s:my_titlestring() "{{{
  let l:titlestr = ''
  let l:titlestr .= "%{expand('%:p:.')} "
  let l:titlestr .= "%(%m%r%w%) "
  let l:titlestr .= "%<\(%{SnipMid(getcwd(),80-len(expand('%:p:.')),'...')}\) "
  let l:titlestr .= "\[%n\]"
  return l:titlestr
endfunction "}}}
let &titlestring = '%!' . s:SID_PREFIX() . 'my_titlestring()'
let &titlestring="%{expand('%:p:.')}%(%m%r%w%) %<\(%{SnipMid(getcwd(),80-len(expand('%:p:.')),'...')}\) \[%n\] - VIM"

" Set tabline.
function! s:my_tabline() "{{{
  let l:s = ''
  " let l:s .= '%#TabLineFill#'

  for l:i in range(1, tabpagenr('$'))
    let l:bufnrs = tabpagebuflist(i)
    let l:curbufnr = l:bufnrs[tabpagewinnr(l:i) - 1]  " first window, first appears

    "let l:no = (l:i <= 10 ? l:i-1 : '#')  " display 0-origin tabpagenr.
    let l:no = (l:i <= 10 ? l:i : '#')  " display tabpagenr.
    let l:mod = getbufvar(bufnr("%"), "&modified") ? '!' : ' '
    let l:title = gettabwinvar(l:i, tabpagewinnr(l:i), 'title')
    if l:title == ''
      let l:title = fnamemodify(gettabwinvar(l:i, tabpagewinnr(l:i), 'cwd'), ':t')
      if l:title == ''
        let l:title = fnamemodify(bufname(l:curbufnr),':t')
        if l:title == ''
          let l:title = '[No Name]'
        endif
      endif
    endif

    let l:s .= '%'.l:i.'T'
    let l:s .= '%#' . (l:i == tabpagenr() ? 'TabLineSel' : 'TabLine') . '#'
    let l:s .= ' ' . l:no . ':' . l:title . l:mod
    let l:s .= '%#TabLineFill#'
    let l:s .= ' | '
  endfor

  " let l:s .= '%#TabLineFill#%T%=%#TabLine#|%999X %X'
    let l:s .= '%#TabLineFill#%T%=%#TabLine#[%999X %{fnamemodify(getcwd(), ":~")} ]'

  return l:s
endfunction "}}}
let &tabline = '%!' . s:SID_PREFIX() . 'my_tabline()'
" Always show tab
set showtabline=2

" Set statusline. "{{{

"let &statusline="[%n] \%{winnr('$')>1?'['.winnr().'/'.winnr('$').(winnr('#')==winnr()?'#':'').']':''}\ %{expand('%:p:.')}\ %m%r%h\ %<\(%{SnipMid(getcwd(),80-len(expand('%:p:.')),'...')}\)\ %=%{'['.(&fenc!=''?&fenc:&enc)}:%{&ff}%{(&ft!=''?':'.&ft:'').']'}\ %<\<%05l\/%05L\>"

function! s:makestatusline() "{{{
  " mode
  let l:sts = "[%{mode()}] "
  " let l:sts .= "[%n] %{winnr('$')>1 ? '[' . winnr() . '/' . winnr('$') . (winnr('#') == winnr() ? '#':'').']':''} "
  let l:sts .= "%{winnr('$')>1 ? '[' . winnr() . '/' . winnr('$') . (winnr('#') == winnr() ? '#':'').']':''} "
  let l:sts .= "%{expand('%:p:.')} %m%r%h %<(%{SnipMid(getcwd(), 80-len(expand('%:p:.')), '..')}) "

  let l:sts .= "%="
  let l:sts .= "%("
  if exists('g:loaded_eskk')    " eskk.vim
    "let l:sts .= ' %{eskk#statusline("IM:%s", "IM:off")}'
    " Too hevey
    let l:sts .= ' %{eskk#statusline()}'
  elseif exists('g:skk_loaded')    " skk.vim
    let l:sts .= ' %{SkkGetModeStr()}'
  endif
  let l:sts .= "%)"
  let l:sts .= "%{'['.(&fenc!=''?&fenc:&enc)}:%{&ff}%{(&ft!='' ? ':'.&ft : '').']'}\ %(%<\<%05l\/%05L\>%)"
 return l:sts
endfunction "}}}
let &statusline = '%!' . s:SID_PREFIX() . 'makestatusline()'
" }}}

" Set folded line
" setlocal foldtext=getline(v:foldstart+1)

" Turn down a long line appointed in 'breakat'
" Set linebreak
set linebreak
if s:iswin || !has('gui_running')
  " let &showbreak='-->'
  let &showbreak='>\'
else
  let &showbreak='>\'
endif
set breakat=\ \	;:,!?

" Do not display greetings message at the time of Vim start.
set shortmess=aTI

" sound on errors
set noerrorbells

" Disable bell.
set visualbell t_bv=

" Display candidate supplement.
set wildmenu
set wildmode=list:longest,full
" Increase history amount.
set history=200
" Display all the information of the tag by the supplement of the Insert mode.
set showfulltag
" Can supplement a tag in a command-line.
set wildoptions=tagfile

" Enable spell check.
set spelllang=en_us

" Completion setting.
set completeopt=menuone,preview
" Don't complete from other buffer.
set complete=.
"set complete=.,w,b,i,t
" Set popup menu max height.
set pumheight=20

" Report changes.
set report=0

" Maintain a current line at the time of movement as much as possible.
set nostartofline

" Splitting a window will put the new window below the current one.
set splitbelow
" Splitting a window will put the new window right the current one.
set splitright
" Set minimal width for current window.
set winwidth=60
" Set minimal height for current window.
set winheight=20
" Set maximam maximam command line window.
set cmdwinheight=5
" No equal window size.
set noequalalways

" Adjust window size of preview and help.
set previewheight=3
set helpheight=12

" Don't redraw while macro executing.
set lazyredraw

" When a line is long, do not omit it in @.
set display=lastline
" Display an invisible letter with hex format.
set display+=uhex

" Disable automatically insert comment.
autocmd MyAutoCmd FileType * setl formatoptions-=ro | setl formatoptions+=mM
" Enable multibyte format.
set formatoptions+=mM

" Scroll Off
"set scrolloff=0
let g:scrolloff = 5    " see below

" Hack for <LeftMouse> not to adjust ('scrolloff') when single-clicking.
" Implement 'scrolloff' by auto-command to control the fire.
autocmd MyAutoCmd CursorMoved * call s:reinventing_scrolloff()
let s:last_lnum = -1
function! s:reinventing_scrolloff() "{{{
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
endfunction "}}}

" Todo: Setting for way of window split (filetype,bufname)

"}}}

"---------------------------------------------------------------------------
" Syntax:"{{{
"

" Enable syntax color.
syntax enable

" Enable smart indent.
set autoindent smartindent

augroup MyAutoCmd "{{{

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
  autocmd BufNewFile,BufRead * if ((bufname('%') =~? 'Highlight test') || (&ft =~? 'te*xt')) | nnoremap <silent><buffer> q :<C-u>close<CR>| endif

  " Close help and git window by pressing q.
  autocmd FileType ref nnoremap <buffer> <TAB> <C-w>w

  "autocmd FileType c setlocal ts=4 sw=4 sts=4 foldmethod=syntax
  autocmd FileType c setlocal ts=4 sw=4 sts=4

  " Enable omni completion."{{{
  autocmd FileType ada setlocal omnifunc=adacomplete#Complete
  autocmd FileType c setlocal omnifunc=ccomplete#Complete
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  "autocmd FileType java setlocal omnifunc=javacomplete#Complete
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  "autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
  "autocmd FileType sql setlocal omnifunc=sqlcomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  "autocmd FileType * if &l:omnifunc == '' | setlocal omnifunc=syntaxcomplete#Complete | endif
  "}}}

  " Set file type addme "{{{
  " If you open txt file
  autocmd BufReadPost,BufNewFile *.txt call s:structured_text()
  function! s:structured_text() "{{{
    let line1 = getline(1)
    let line2 = getline(2)
    execute 'setfiletype'
          \ line1 =~ '^\([=-`:''"~^_*+#<>]\)\1*$' ? 'rst' :
          \ line1 =~ '^*'      ? 'hatena'   :
          \ line1 =~ '^#' ||
          \ line2 =~ '^=\+$'   ? 'markdown' :
          \                      'text'
  endfunction "}}}
  " If you open lisp file
  " autocmd BufNewFile,BufRead *.l,*.xyzzy,.emacs setlocal filetype=lisp
  autocmd BufNewFile,BufRead *.xyzzy,.emacs setlocal filetype=lisp
  " If you open vb file
  autocmd BufNewFile,BufRead *.vb setlocal filetype=vb
  " }}}

augroup END " }}}

augroup vimrc-misc "{{{
  " Update filetype.
  autocmd BufWritePost * if &l:filetype == '' || exists('b:ftdetect')
        \ | unlet! b:ftdetect | filetype detect | endif

  " Jump to the last editing position.
  autocmd BufReadPost * if line("'\"") && line("'\"") <= line('$')
  \ | execute 'normal! g`"' | endif

  " Set 'dictionary'.
  autocmd FileType * if filereadable(expand('~/.vim/dict/' . &l:ft . '.dict'))
  \ | let &l:dict='~/.vim/dict/' . &l:ft . '.dict' | endif

  autocmd FileType * if &l:buftype !=# 'help' && &l:kp == '' &&
  \ mapcheck('K', 'n') == ''
  \ | silent! execute 'nnoremap <buffer> <unique> K <C-w>}' | endif

  " Auto open/close Quickfix/location window.
  autocmd QuickFixCmdPost [^l]* cwindow | redraw!
  autocmd QuickFixCmdPost l* lwindow | redraw!

  autocmd BufWritePost * if &l:filetype == '' || exists('b:ftdetect')
  \                      | unlet! b:ftdetect | filetype detect | endif

  autocmd BufReadPost bzr_log.* let &l:fileencoding = &termencoding
  " Edit something to avoid the confirmation when aborting.
  autocmd BufReadPost bzr_log.* 1 delete _ | silent write

augroup END  " }}}

augroup vimrc-highlight "{{{

  let filetype = [
   \ 'txt', 
   \ 'text', 
   \ 'help', 
   \ 'vimfiler', 
   \ 'unite', 
   \ ]

  autocmd!
  " Special Characters
  autocmd ColorScheme * let expr_ft = s:omitfiletype(filetype, 1, 0)
  autocmd ColorScheme * if !expr_ft | call s:highlight_additional() | endif
  autocmd VimEnter,WinEnter * call s:syntax_additional()
  " Misc
  autocmd ColorScheme * call s:syntax_misc()
augroup END

function! s:syntax_additional() "{{{
  let preset = exists('w:syntax_additional')
  if &l:list
    if !preset
      let w:syntax_additional = matchadd('ZenkakuSpace', '　')
    endif
  elseif preset
    call matchdelete(w:syntax_additional)
    unlet w:syntax_additional
  endif
endfunction "}}}
function! s:highlight_additional() "{{{
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
endfunction "}}}

function! s:syntax_misc() "{{{
  if bufname('%') =~? 'Highlight test'
    setlocal nolist
  endif
endfunction "}}}

"}}}

" html
let g:html_dynamic_folds = 1

" c
let c_no_comment_fold = 1

" Java
let g:java_highlight_functions = 'style'
let g:java_highlight_all = 1
let g:java_allow_cpp_keywords = 1

"Perl
let perl_fold = 1
let perl_fold_blocks = 1

" PHP
let g:php_folding = 1
let g:php_sql_query = 1
let php_htmlInStrings = 1

" Python
let g:python_highlight_all = 1

" XML
let g:xml_syntax_folding = 1

" Vim
let g:vimsyntax_noerror = 1
let g:vim_indent_cont = 0

" Lisp
let g:lisp_rainbow = 1

"}}}

"---------------------------------------------------------------------------
" Plugin:"{{{
"

" #- rtputil.vim -# "{{{
if globpath(&rtp, 'autoload/rtputil.vim') != ''
  " path manager
  call rtputil#bundle()
  call rtputil#helptags()
endif
"}}}

" #- singleton.vim -# "{{{
if globpath(&rtp, 'autoload/singleton.vim') != ''
  call singleton#enable()
  let g:singleton#opener = 'tab drop'
endif
"}}}

" #- neocomplcache.vim -# "{{{
if globpath(&rtp, 'autoload/neocomplcache.vim') != ''
  " Setting of directory for neocomplcache "{{{
  let s:neocon_temp_dir = g:vim_info_dir . '/.neco'
  " For snippets
  let s:neocon_snip_dir = s:neocon_temp_dir . '/snippets'
  if !isdirectory(s:neocon_temp_dir)
    call mkdir(s:neocon_temp_dir, 'p')
  endif
  if !isdirectory(s:neocon_snip_dir)
    call mkdir(s:neocon_snip_dir, 'p')
  endif
  let g:neocomplcache_temporary_dir = s:neocon_temp_dir
  let g:neocomplcache_snippets_dir = s:neocon_snip_dir " }}}

  " Use neocomplcache.
  let g:neocomplcache_enable_at_startup = 1
  " Use smartcase.
  let g:neocomplcache_enable_smart_case = 1
  " Use camel case completion.
  "let g:neocomplcache_enable_camel_case_completion = 1
  " Use underbar completion.
  let g:neocomplcache_enable_underbar_completion = 1
  " Set minimum syntax keyword length.
  let g:neocomplcache_min_syntax_length = 3
  " Set auto completion length.
  let g:neocomplcache_auto_completion_start_length = 2
  " Set manual completion length.
  let g:neocomplcache_manual_completion_start_length = 0
  " Set minimum keyword length.
  let g:neocomplcache_min_keyword_length = 3
  let g:neocomplcache_enable_cursor_hold_i = 1
  let g:neocomplcache_cursor_hold_i_time = 250
  let g:neocomplcache_enable_auto_select = 1
  let g:neocomplcache_enable_auto_delimiter = 1
  "let g:neocomplcache_disable_caching_buffer_name_pattern = '[\[*]\%(unite\)[\]*]'
  let g:neocomplcache_disable_caching_file_path_pattern = '[\[*]\%(unite\)[\]*]'
  "let g:neocomplcache_disable_auto_select_buffer_name_pattern = '^\[\d\+\]vimshell'
  "let g:neocomplcache_disable_auto_complete = 0
  let g:neocomplcache_max_list = 100

  " Define dictionary.
  let g:neocomplcache_dictionary_filetype_lists = {
        \ 'default' : '',
        \ 'vimshell' : g:vim_info_dir . '/.vimshell/command-history',
        \ 'text' : $HOME . '/.dict/SKK-JISYO.L',
        \ 'txt' : $HOME . '/.dict/SKK-JISYO.L',
        \ 'int-termtter' : g:vim_info_dir . '/.vimshell/int-history/int-termtter',
        \ }

  if !s:iswin
    let g:neocomplcache_dictionary_filetype_lists.help = '/usr/share/dict/words'
  endif

  let g:neocomplcache_omni_functions = {
        \ 'python' : 'pythoncomplete#Complete',
        \ 'ruby' : 'rubycomplete#Complete',
        \ }

  " Define keyword pattern.
  if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
  endif
  let g:neocomplcache_keyword_patterns['default'] = '\h\w*'


  if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
  endif
  "let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
  "let g:neocomplcache_omni_patterns.php = '[^. *\t]\.\w*\|\h\w*::'

  if !exists('g:neocomplcache_same_filetype_lists')
    let g:neocomplcache_same_filetype_lists = {}
  endif
  "let g:neocomplcache_same_filetype_lists.perl = 'ref'

  let g:neocomplcache_vim_completefuncs = {
        \ 'Ref' : 'ref#complete',
        \ 'Unite' : 'unite#complete_source',
        \ 'VimShellExecute' : 'vimshell#complete#vimshell_execute_complete#completefunc',
        \ 'VimShellInteractive' : 'vimshell#complete#vimshell_execute_complete#completefunc',
        \ 'VimShellTerminal' : 'vimshell#complete#vimshell_execute_complete#completefunc',
        \}

  " Completion rank "{{{
  "let g:neocomplcache_plugin_completion_length = {
  "\ 'snippets_complete' : 1,
  "\ 'vim_complete' : 2,
  "\ 'buffer_complete' : 3,
  "\ 'syntax_complete' : 3,
  "\ 'tags_complete' : 4,
  "\ }
  " }}}

  " Plugin key-mappings."{{{
  imap <silent>L     <Plug>(neocomplcache_snippets_jump)
  "imap <expr>L    neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : "\<C-n>"
  smap <silent>L     <Plug>(neocomplcache_snippets_jump)
  imap <silent>G     <Plug>(neocomplcache_snippets_force_expand)
  " imap <silent>J     <Plug>(neocomplcache_snippets_jump)

  inoremap <expr><C-g>     neocomplcache#undo_completion()
  inoremap <expr><C-l>     neocomplcache#complete_common_string()
  "}}}

  " For neocomplcache."{{{
  " <C-f>, <C-b>: page move.
  inoremap <expr><C-f>  pumvisible() ? "\<PageDown>" : "\<Right>"
  inoremap <expr><C-b>  pumvisible() ? "\<PageUp>"   :
        \neocomplcache#sources#completefunc_complete#call_completefunc('googlesuggest_complete#completefunc')
  " <C-y>: paste.
  inoremap <expr><C-y>  pumvisible() ? neocomplcache#close_popup() :  "\<C-r>\""
  " <C-e>: close popup.
  inoremap <expr><C-e>  pumvisible() ? neocomplcache#cancel_popup() : "\<End>"
  " <C-k>: omni completion.
  " inoremap <expr> <C-k>  &filetype == 'vim' ? neocomplcache#start_manual_complete('vim_complete') : neocomplcache#manual_omni_complete()
  if globpath(&rtp, 'autoload/unite.vim') != ''
    " <C-k>: unite completion.
    imap <C-k>  <Plug>(neocomplcache_start_unite_complete)
    imap <C-q>  <Plug>(neocomplcache_start_quick_match)
    imap <C-s>  <Plug>(neocomplcache_start_unite_snippet)
  endif
  "inoremap <expr> O  &filetype == 'vim' ? "\<C-x>\<C-v>" : "\<C-x>\<C-o>"
  " <C-h>, <BS>: close popup and delete backword char.
  inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
  inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
  " <C-n>: neocomplcache.
  inoremap <expr><C-n>  pumvisible() ? "\<C-n>" : "\<C-x>\<C-u>\<C-p>\<Down>"
  " <C-p>: keyword completion.
  inoremap <expr><C-p>  pumvisible() ? "\<C-p>" : "\<C-p>\<C-n>"
  "inoremap <expr>'  pumvisible() ? neocomplcache#close_popup() : "'"
  inoremap <expr>'  pumvisible() ? "\<C-y>" : "'"
  inoremap <expr>[  pumvisible() ? "\<C-n>" : "["
  inoremap <expr>]  pumvisible() ? "\<C-p>" : "]"


  " <CR>: close popup and save indent.
  inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
  " <TAB>: completion.
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : "\<C-x>\<C-u>\<C-p>\<Down>"
  function! s:check_back_space()"{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
  endfunction"}}}
  " <S-TAB>: completion back.
  inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<C-h>"
  "}}}
endif

"}}}

" #- vimshell.vim -# "{{{
if globpath(&rtp, 'autoload/vimshell.vim') != ''
  " Set recoding directory and initalize file "{{{
  let s:shell_temp_dir = g:vim_info_dir . '/.vimshell'
  if !isdirectory(s:shell_temp_dir)
    call mkdir(s:shell_temp_dir, 'p')
  endif
  let g:vimshell_temporary_directory = s:shell_temp_dir " }}}
  " let g:vimshell_vimshrc_path = s:shell_temp_dir .  '/.vimshrc'
  let g:vimshell_vimshrc_path =  expand('~/.vimshrc')
  unlet s:shell_temp_dir

  "
  let g:vimshell_enable_smart_case = 1
  let g:vimshell_ignore_case = 1
  let g:vimshell_environment_term = 'xterm'

  " Platform detection
  if s:iswin
    " Windows "{{{
    " User name @ host name [ working directory]
    let g:vimshell_user_prompt=' $USERNAME . " @ " . hostname() . " [ " . fnamemodify(getcwd(), ":~") . " ]"'
    " Display user name on Windows.
    " let g:vimshell_prompt = $USERNAME . "@" . hostname() . " $ "
    let g:vimshell_prompt = $USERNAME . " $ "
    " Use ckw.
    let g:vimshell_use_ckw = 1
    let g:vimshell_use_terminal_command = 'ckw -e' "}}}
  else
    " linux, mac "{{{
    " User name @ host name [ working directory]
    let g:vimshell_user_prompt=' $USER . " @ " . hostname() . " [ " . fnamemodify(getcwd(), ":~") . " ]"'
    " Display user name on Linux.
    " let g:vimshell_prompt = $USER . "@" . hostname() . " $ "
    let g:vimshell_prompt = $USER . " $ "
    " Use normal shell history.
    "let g:vimshell_external_history_path = expand('~/.zsh-history')
    let g:vimshell_external_history_path = expand('~/.bash-history')
    let g:vimshell_use_terminal_command = 'gnome-terminal -e'
    " Prefix "{{{
    call vimshell#set_execute_file('gif,jpg,png', 'gexe viewnior')
    call vimshell#set_execute_file('3GP,mp4,mkv', 'gexe gxine')
    call vimshell#set_execute_file('mp3,wma,m4a', 'gexe aqualung') "}}}
    let g:vimshell_execute_file_list['zip'] = 'zipinfo'
    call vimshell#set_execute_file('tgz,gz', 'gzcat')
    call vimshell#set_execute_file('tbz,bz2', 'bzcat')
    " }}}
  endif

  if globpath(&rtp, 'autoload/vcs.vim') != ''
    let g:vimshell_right_prompt = 'vcs#info("(%s)-[%b]", "(%s)-[%b|%a]")'
  else
    let g:vimshell_right_prompt = ''
  endif

  " Initialize execute file list.
  let g:vimshell_execute_file_list = {}
  let g:vimshell_execute_file_list['pl'] = 'perl'
  let g:vimshell_execute_file_list['py'] = 'python'
  call vimshell#set_execute_file('txt,jax,vim,c,h,cpp,d,xml,java', 'vim')
  if s:iswin
    call vimshell#set_execute_file('l', 'gexe xyzzyclient')
    call vimshell#set_execute_file('xyzzy', 'gexe xyzzyclient')
    call vimshell#set_execute_file('3GP,mp4,mkv', 'gexe vlc.exe')
  else
    "let g:vimshell_execute_file_list['rb'] = 'ruby'
    call vimshell#set_execute_file('html,xhtml', 'gexe firefox')
    call vimshell#set_execute_file('gif,jpg,JPG,png,PNG', 'gexe viewnior')
  endif

  autocmd MyAutoCmd FileType vimshell call s:vimshell_settings()
  function! s:vimshell_settings() "{{{
    "imap <buffer><silent> &  <C-o>:call vimshell#mappings#push_and_execute('cd ..')<CR>
    "nnoremap <buffer> T  Ga
    "nmap <buffer> R   Gah<CR>
    "call vimshell#altercmd#define('g', 'git')
    call vimshell#altercmd#define('i', 'iexe')
    call vimshell#altercmd#define('t', 'texe')
    call vimshell#set_alias('sl', 'ls')
    call vimshell#set_alias('l.', 'ls -d .*')
    call vimshell#set_galias('ll', 'ls -l')
    call vimshell#set_galias('df', 'df -h')
    call vimshell#set_galias('du', 'du -h')
    call vimshell#hook#set('chpwd', [s:SID_PREFIX().'my_chpwd'])
    call vimshell#hook#set('emptycmd', [s:SID_PREFIX().'my_emptycmd'])
    call vimshell#hook#set('preexec', [s:SID_PREFIX().'my_preexec'])
    call vimshell#hook#set('preprompt', [s:SID_PREFIX().'my_preprompt'])
    "Like old style history
    inoremap <C-l> :<C-u>Unite -default-action=insert vimshell/history<CR>
    "call s:init_vimshell_normal()
  endfunction "}}}
  " preexe "{{{
  function! s:my_chpwd(args, context) "{{{
    call vimshell#execute('ls -a')
  endfunction "}}}
  function! s:my_emptycmd(cmdline, context) "{{{
    call vimshell#set_prompt_command('ls')
    return 'ls'
  endfunction "}}}
  function! s:my_preprompt(args, context) "{{{
    call vimshell#execute('echo "preprompt"')
  endfunction "}}}
  function! s:my_preexec(cmdline, context) "{{{
    call vimshell#execute('echo "preexec"')

    if a:cmdline =~# '^\s*diff\>'
      call vimshell#set_syntax('diff')
    endif
    return a:cmdline
  endfunction "}}}
  "}}}
  " Like old style vimshell history "{{{
  "augroup vimrc-plugin-vimshell "{{{
  "  autocmd!
  "  autocmd FileType int-* call s:init_vimshell_int()
  "augroup END "}}}
  function! s:init_vimshell_int() "{{{
    inoremap <buffer> <silent> <C-y> <C-r>=<SID>vimshell_complete_history()<CR><C-p>
  endfunction "}}}
  function! s:init_vimshell_normal() "{{{
    inoremap <buffer> <silent> <C-y> <C-r>=<SID>complete_history()<CR><C-p>
  endfunction "}}}
  function! s:complete_history() "{{{
    call complete(len(vimshell#get_prompt()) + 1, g:vimshell#hist_buffer)
    return ''
  endfunction "}}}
  function! s:vimshell_complete_history() "{{{
    call complete(len(vimshell#get_prompt()) + 1, b:interactive.command_history)
    return ''
  endfunction "}}}
  "let s:context  = unite#get_context()
  "if s:context.buffer_name  ==# 'completion'
  "  inoremap <buffer> <expr> <C-Y> unite#do_action('insert')
  "endif
  "}}}

  autocmd MyAutoCmd FileType int-* call s:interactive_settings()
  function! s:interactive_settings() "{{{
  endfunction "}}}

  autocmd MyAutoCmd FileType term-* call s:terminal_settings()
  function! s:terminal_settings() "{{{
    inoremap <silent><buffer><expr> <Plug>(vimshell_term_send_semicolon) vimshell#term_mappings#send_key(';')
    inoremap <silent><buffer><expr> j<Space> vimshell#term_mappings#send_key('j')
    "inoremap <silent><buffer><expr> <Up> vimshell#term_mappings#send_keys("\<ESC>[A")

    " Sticky key.
    imap <buffer><expr> ;  <SID>texe_sticky_func()

    " Escape key.
    iunmap <buffer><ESC> <ESC>
    imap <buffer><ESC>   <Plug>(vimshell_term_send_escape)
  endfunction
  function! s:texe_sticky_func()
    let l:sticky_table = {
          \',' : '<', '.' : '>', '/' : '?',
          \'1' : '!', '2' : '@', '3' : '#', '4' : '$', '5' : '%',
          \'6' : '^', '7' : '&', '8' : '*', '9' : '(', '0' : ')', '-' : '_', '=' : '+',
          \';' : ':', '[' : '{', ']' : '}', '`' : '~', "'" : "\"", '\' : '|',
          \}
    let l:special_table = {
          \"\<ESC>" : "\<ESC>", "\<Space>" : "\<Plug>(vimshell_term_send_semicolon)", "\<CR>" : ";\<CR>"
          \}

    if mode() !~# '^c'
      echo 'Input sticky key: '
    endif
    let l:char = ''

    while l:char == ''
      let l:char = nr2char(getchar())
    endwhile

    if l:char =~ '\l'
      return toupper(l:char)
    elseif has_key(l:sticky_table, l:char)
      return l:sticky_table[l:char]
    elseif has_key(l:special_table, l:char)
      return l:special_table[l:char]
    else
      return ''
    endif
  endfunction "}}}

  " Keymap "{{{
  nnoremap <silent> [Space]: :<C-u>VimShellTab<CR>
  nnoremap <silent> [Space]; :<C-u>VimShellCreate<CR>
  nnoremap <silent> [Space]l :<C-u>VimShellPop<CR>
  nnoremap [Space]i  :<C-u>VimShellInteractive<Space>
  nnoremap [Space]t  :<C-u>VimShellTerminal<Space>
  "}}}

endif
" }}}

" #- unite.vim -# "{{{
if globpath(&rtp, 'autoload/unite.vim') != ''
  " Set of unite directory "{{{
  let s:unite_dir = g:vim_info_dir . '/.unite'
  if !isdirectory(s:unite_dir)
    call mkdir(s:unite_dir, 'p')
  endif
  let g:unite_data_directory = s:unite_dir
  let g:unite_source_bookmark_directory = g:unite_data_directory . '/bookmark'
  unlet s:unite_dir " }}}
  " The prefix key. "{{{
  nnoremap    [unite]   <Nop>
  xnoremap    [unite]   <Nop>
  nmap    t [unite]
  xmap    t [unite]
  " }}}
  " Keymap for Source "{{{
  nnoremap [unite]u  :<C-u>Unite<Space>
  "nnoremap <silent> ;  :<C-u>Unite history/command command<CR>
  nnoremap <silent> [unite]b  :<C-u>UniteWithBufferDir -buffer-name=files -prompt=%\  buffer file_mru bookmark file<CR>
  nnoremap <silent> [unite]r  :<C-u>Unite -buffer-name=register register<CR>
  nnoremap <silent> [unite]o  :<C-u>Unite outline<CR>
  nnoremap  [unite]f  :<C-u>Unite source<CR>
  nnoremap <silent> [unite]t  :<C-u>UniteWithCursorWord -buffer-name=tag tag<CR>
  xnoremap <silent> [unite]r  d:<C-u>Unite -buffer-name=register register<CR>
  nnoremap <silent> [unite]w  :<C-u>UniteWithCursorWord -buffer-name=register buffer file_mru bookmark file<CR>
  nnoremap <silent> [unite]h  :<C-u>Unite history/command<CR>
  nnoremap <silent> [unite]q  :<C-u>Unite qflist -no-quit<CR>
  nnoremap <silent> [unite]g  :<C-u>Unite grep -no-quit<CR>
  nnoremap <silent> [unite]j  :<C-u>Unite poslist<CR>
  nnoremap <silent> [unite]ma  :<C-u>Unite mapping<CR>
  nnoremap <silent> [unite]me  :<C-u>Unite output:message<CR>
  inoremap <silent> <C-z>  <C-o>:call unite#start(['register'], {'is_insert' : 1})<CR>

  nnoremap <silent> [Window]s  :<C-u>Unite -buffer-name=files buffer_tab file_rec file file_mru<CR>
  " nnoremap <silent> [Window]s  :<C-u>Unite -buffer-name=files buffer_tab file file_mru file<CR>
  nnoremap <silent> [Window]t  :<C-u>Unite -buffer-name=files tab<CR>
  nnoremap <silent> [Window]w  :<C-u>Unite window<CR>
  nnoremap [Window]r  :<C-u>UniteResume<Space>
  nnoremap <silent> [Space]b  :<C-u>UniteBookmarkAdd<CR>

  " Execute help.
  " nnoremap <C-h>  :<C-u>help<Space>
  nnoremap <C-h>  :<C-u>Unite -start-insert help<CR>
  " Execute help by cursor keyword.
  " nnoremap <silent> g<C-h>  :<C-u>help<Space><C-r><C-w><CR>
  nnoremap <silent> g<C-h>  :<C-u>UniteWithCursorWord help<CR>

  " ColorScheme (Unite Beautiful Attack)
  nnoremap <silent> [unite]c :<C-u>Unite -auto-preview colorscheme<CR>
  " Font selecter
  nnoremap <silent> [unite]l :<C-u>Unite -auto-preview font
  " Bookmark
  nnoremap <silent> [unite]t :<C-u>Unite bookmark<CR>
  " buffer_tab
  nnoremap <silent> [Window]i :<C-u>Unite buffer_tab -buffer-name=buffer_tab -prompt=$$<CR>
  " file_mru
  nnoremap <silent> [Window]; :<C-u>UniteWithBufferDir file_mru -buffer-name=files -prompt=$$ <CR>
  " }}}

  let g:unite_enable_split_vertically = 1

  let g:unite_winheight = 20
  let g:unite_winwidth = 75

  autocmd MyAutoCmd FileType unite call s:unite_my_settings()

  call unite#set_substitute_pattern('files', '^\~', substitute($HOME, '\\', '/', 'g'))
  " Directory partial match.
  " call unite#set_substitute_pattern('files', '\%([~.*]\+\)\@<!/', '*/*', 100)
  " call unite#set_substitute_pattern('files', '^\\', substitute(substitute($HOME, '\\', '/', 'g'), ' ', '\\ ', 'g') . '/*', -100)
  " Test.
  call unite#set_substitute_pattern('files', '^\.v/', unite#util#substitute_path_separator($HOME).'/.vim/', 1000)
  call unite#custom_alias('file', 'h', 'left')

  " Custom actions."{{{
  " tab open "{{{
  let my_tabopen = {
        \ 'description' : 'my tabopen items',
        \ 'is_selectable' : 1,
        \ }
  function! my_tabopen.func(candidates)"{{{
    call unite#take_action('tabopen', a:candidates)

    let l:dir = isdirectory(a:candidates[0].word) ? a:candidates[0].word : fnamemodify(a:candidates[0].word, ':p:h')
    " execute g:unite_lcd_command '`=l:dir`'
  endfunction"}}}
  call unite#custom_action('file,buffer', 'tabopen', my_tabopen)
  unlet my_tabopen"}}}
  " replace "{{{
  let my_replace = {
        \ 'description' : 'replace quickfix',
        \ 'is_selectable' : 1,
        \ }
  function! my_replace.func(candidates)"{{{
    let l:qflist = []
    for candidate in a:candidates
      if bufnr(candidate.action__path) >= 0
        call add(l:qflist, {
              \ 'filename' : candidate.action__path,
              \ 'lnum' : candidate.action__line,
              \ 'text' : candidate.source__pattern,
              \ })
      endif
    endfor

    call setqflist(l:qflist)
    call qfreplace#start('')
  endfunction"}}}
  "}}}
  call unite#custom_action('source/grep/jump_list', 'replace', my_replace)
  unlet my_replace
  "}}}

  " Custom filters."{{{
  " call unite#custom_filters('file,buffer', ['sorter_default', 'converter_default'])
  "}}}

  let g:unite_enable_start_insert = 0

  function! s:unite_my_settings() "{{{
    " Overwrite settings.
    imap <buffer>  jj      <Plug>(unite_insert_leave)
    imap <buffer> <TAB>   <Plug>(unite_choose_action)
    "imap <buffer> <TAB>   <Plug>(unite_select_next_line)
    imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)
    imap <buffer> '     <Plug>(unite_quick_match_default_action)
    nmap <buffer> '     <Plug>(unite_quick_match_default_action)
    imap <buffer> <C-g>     <Plug>(unite_input_directory)
    nmap <buffer><expr> r     unite#do_action('replace')
    nmap <buffer> q     <Plug>(unite_exit)

    " <C-l>: manual neocomplcache completion.
    inoremap <buffer><C-l>  <C-x><C-u><C-p><Down>
    inoremap <buffer><expr> [  pumvisible() ? "\<C-y>" : "\<C-x>\<C-u>\<C-p>\<Down>"
  endfunction"}}}

  let g:unite_source_line_enable_highlight = 1
  let g:unite_source_line_search_word_highlight = 'PmenuSel'

  let g:unite_cursor_line_highlight = 'TabLineSel'
  let g:unite_abbr_highlight = 'Pmenu'

  " let g:unite_source_file_mru_time_format = ''
  let g:unite_source_file_mru_filename_format = ''
  let g:unite_source_file_mru_limit = 300
  let g:unite_source_directory_mru_time_format = ''
  let g:unite_source_directory_mru_limit = 200
  " grep
  let g:unite_source_grep_command = 'grep'
  let g:unite_source_grep_recursive_opt = '-r'
  let g:unite_source_grep_default_opts = '-Hn -i'
  " history/yank
  let g:unite_source_history_yank_enable = 1
  let g:unite_source_history_yank_limit = 1000
  let g:unite_source_history_yank_file = g:unite_data_directory . '/history_yank'
  " quick match table
  let g:unite_quick_match_table = {
        \'a' : 1, 's' : 2, 'd' : 3, 'f' : 4, 'g' : 5, 'h' : 6, 'k' : 7, 'l' : 8, ';' : 9,
        \'q' : 10, 'w' : 11, 'e' : 12, 'r' : 13, 't' : 14, 'y' : 15, 'u' : 16, 'i' : 17, 'o' : 18, 'p' : 19,
        \'1' : 20, '2' : 21, '3' : 22, '4' : 23, '5' : 24, '6' : 25, '7' : 26, '8' : 27, '9' : 28, '0' : 29,
        \}

  " call unite#custom_default_action('directory', 'cd')
endif
"}}}

" #- quickrun.vim -# "{{{
if globpath(&rtp, 'autoload/quickrun.vim') != ''
  function! s:init_quickrun()
    for [key, com] in items({
          \   '<Leader>x' : '<=@i >:',
          \   '<Leader>p' : '<=@i >!',
          \   '<Leader>"' : '<=@i >=@"',
          \   '<Leader>w' : '<=@i >',
          \   '<Leader>q' : '<=@i >>',
          \   '<Leader>vx' : '-eval 1 <=@i >:',
          \   '<Leader>vp' : '-eval 1 <=@i >!',
          \   '<Leader>v"' : '-eval 1 <=@i >=@"',
          \   '<Leader>vw' : '-eval 1 <=@i >',
          \   '<Leader>vq' : '-eval 1 <=@i >>',
          \ })
      execute 'nnoremap <silent>' key ':QuickRun' com '-mode n<CR>'
      execute 'vnoremap <silent>' key ':QuickRun' com '-mode v<CR>'
    endfor

    call s:set_default('g:QuickRunConfig', {'mkd': {'command': 'mdv2html'}})
    call s:set_default('g:QuickRunConfig', {'xmodmap': {}})
  endfunction
  call s:init_quickrun()
  nmap <silent> [Space]r <Plug>(quickrun-op)

  "if !exists('g:quickrun_config')
  "  " Enable async.
  "  let g:quickrun_config = {
  "        \   '*': {'runmode': 'async:vimproc'},
  "        \ }
  "
  "  if s:iswin
  "    function! TexEncoding()
  "      if &fileencoding ==# 'utf-8'
  "        let l:arg = 'utf8 '
  "      elseif &fileencoding =~# '^euc-\%(jp\|jisx0213\)$'
  "        let l:arg = 'euc '
  "      elseif &fileencoding =~# '^iso-2022-jp'
  "        let l:arg = 'jis '
  "      else " cp932
  "        let l:arg = 'sjis '
  "      endif
  "
  "      return l:arg
  "    endfunction
  "    let tex = 'platex -kanji={TexEncoding()}'
  "    let g:quickrun_config.tex = { 'command' : tex, 'exec': ['%c %s', 'dvipdfmx %s:r.dvi'] }
  "  else
  "    let tex = 'platex'
  "    let g:quickrun_config.tex = { 'command' : tex, 'exec': ['%c %s', 'dvipdfmx %s:r.dvi', 'open %s:r.pdf'] }
  "  endif
  "  unlet tex
  "
  "  let g:quickrun_config.vim = {}
  "endif
endif
"}}}

" #- vimfiler.vim -# "{{{
if globpath(&rtp, 'autoload/vimfiler.vim') != ''
  " Make directory "{{{
  let s:vimfiler_dir = g:vim_info_dir . '/.vimfiler'
  if !isdirectory(s:vimfiler_dir)
    call mkdir(s:vimfiler_dir, 'p')
  endif
  let g:vimfiler_data_directory = s:vimfiler_dir
  unlet s:vimfiler_dir "}}}

  nnoremap <silent>   [Space]v   :<C-u>silent! execute 'VimFiler ' fnamemodify(bufname('%'), ':p:h')<CR>
  nnoremap    [Space]fo  :<C-u>VimFilerTab<CR>
  nnoremap    [Space]ff   <Plug>(vimfiler_switch)
  nnoremap    [Space]si   <Plug>(vimfiler_simple)
  nnoremap    [Space]h   :<C-u>edit %:h<CR>

  " Set local mappings.
  nnoremap <C-P>     <Plug>(vimfiler_move_to_history_back)
  nnoremap <C-N>     <Plug>(vimfiler_move_to_history_forward)

  " suffix "{{{
  call vimfiler#set_execute_file('vim', 'vim')
  call vimfiler#set_execute_file('txt', 'vim')
  if s:iswin
    call vimfiler#set_execute_file('l', 'xyzzyclient')
    call vimfiler#set_execute_file('xyzzy', 'xyzzyclient')
    call vimfiler#set_execute_file('3GP,mp4,mkv', 'kmplayer')
  else
    call vimfiler#set_execute_file('gif,jpg,JPG,png,PNG', 'viewnior')
    call vimfiler#set_execute_file('3GP,mp4,mkv', 'gxine')
    call vimfiler#set_execute_file('mp3,wma,m4a', 'aqualung')
  endif
  " }}}

  let g:vimfiler_split_command = 'VertSplit'
  let g:vimfiler_edit_command = 'tabedit'
  let g:vimfiler_pedit_command = 'vnew'

  let g:vimfiler_enable_clipboard = 1
  let g:vimfiler_safe_mode_by_default = 0
  let g:vimfiler_cd_command = 'TabpageCD'

  " Define filer command "{{{
  if s:iswin
    " Windows default. "{{{
    let g:vimfiler_external_delete_command = 'system rmdir /Q /S $srcs'
    let g:vimfiler_external_copy_file_command = 'system copy $src $dest'
    let g:vimfiler_external_copy_file_command = 'system copy $src $dest'
    let g:vimfiler_external_copy_directory_command = 'xcopy /s $srcs $dest'
    let g:vimfiler_external_move_command = 'system move /Y $srcs $dest'
    " }}}
  else
    " Linux default. "{{{
    let g:vimfiler_external_copy_directory_command = 'cp -r $src $dest'
    let g:vimfiler_external_copy_file_command = 'cp $src $dest'
    let g:vimfiler_external_delete_command = 'rm -r $srcs'
    let g:vimfiler_external_move_command = 'mv $srcs $dest'
    " }}}
  endif "}}}

  let g:vimfiler_as_default_explorer = 1
  let g:vimfiler_detect_drives = s:iswin ?  [
        \ 'C:/', 'D:/', 'E:/', 'F:/', 'G:/', 'H:/', 'I:/',
        \ 'J:/', 'K:/', 'L:/', 'M:/', 'N:/', 'Z:/'] :
        \ split(glob('/mnt/*'), '\n') + split(glob('/media/*'), '\n') +
        \ split(glob('/Users/*'), '\n')

  " Set vimfiler use trash_box "{{{
  let s:filer_trash_dir = g:vim_info_dir . '/others/.trash_box'
  if !isdirectory(s:filer_trash_dir)
    call mkdir(s:filer_trash_dir, 'p')
  endif
  let g:vimfiler_trashbox_directory = s:filer_trash_dir
  unlet s:filer_trash_dir

  if s:iswin && globpath(&rtp, 'autoload/vimproc.vim') != ''
    let g:unite_kind_file_use_trashbox = 1
  endif "}}}

  " icons
  let g:vimfiler_tree_leaf_icon = ' | '
  let g:vimfiler_tree_opened_icon = '[-]'
  let g:vimfiler_tree_closed_icon = '[ ]'
  let g:vimfiler_file_icon = ' - '
  let g:vimfiler_marked_file_icon = ' * '

  autocmd MyAutoCmd FileType vimfiler call s:vimfiler_my_settings()
  function! s:vimfiler_my_settings() "{{{
    " Override setting
    " Keymappings
    nmap <buffer>za (plug)(vimfiler_expand_tree)

  endfunction "}}}
endif
"}}}

" #- surround.vim -# "{{{
if globpath(&rtp, 'plugin/surround.vim') != ''
  " Setting of surround for kana
  let surround = g:vim_dir . '/bundle/surround.vim/plugin/surround.vim'
  if filereadable(surround)
    execute 'source ' . surround
    unlet surround

    call SurroundRegister('g', 'jk', "「\r」")
    call SurroundRegister('g', 'jK', "【\r】")
    call SurroundRegister('g', 'js', "『\r』")
  endif

  let g:surround_no_mappings = 1
  autocmd MyAutoCmd FileType * call s:define_surround_keymappings()

  function! s:define_surround_keymappings()
    if !&modifiable
      return
    endif

    nmap <buffer> ds   <Plug>Dsurround
    nmap <buffer> cs   <Plug>Csurround
    nmap <buffer> ys   <Plug>Ysurround
    nmap <buffer> yS   <Plug>YSurround
    nmap <buffer> yss  <Plug>Yssurround
    nmap <buffer> ySs  <Plug>YSsurround
    nmap <buffer> ySS  <Plug>YSsurround
  endfunction
endif
"}}}

" #- altercmd.vim -# "{{{
if globpath(&rtp, 'autoload/altercmd.vim') != ''
  call altercmd#define('<buffer>', 'cd', 'CD', 'i')
  call altercmd#define('<buffer>', 'sp[lit]', 'split', 'i')
  if exists(':Tcolorscheme') == 2
    call altercmd#define('<buffer>', 'co[lor]', 'Tcolorscheme', 'i')
    call altercmd#define('<cmdwin>', 'co[lor]', 'Tcolorscheme', 'i')
  else
    call altercmd#define('<buffer>', 'co[lor]', 'colorscheme', 'i')
    call altercmd#define('<cmdwin>', 'co[lor]', 'colorscheme', 'i')
  endif
  call altercmd#define('<cmdwin>', 'cd', 'CD', 'i')
  call altercmd#define('<cmdwin>', 'sp[lit]', 'split', 'i')
endif
"}}}

" #- echodoc.vim -# "{{{
if globpath(&rtp, 'autoload/echodoc.vim') != ''
  let g:echodoc_enable_at_startup = 1
endif
" }}}

" #- ref.vim -# "{{{
if globpath(&rtp, 'autoload/ref.vim') != ''
  " Make cache directory "{{{
  let s:ref_dir =  g:vim_info_dir . '/.ref/.vim_ref_cache'
  if !isdirectory(s:ref_dir)
    call mkdir(s:ref_dir, 'p')
  endif
  let g:ref_cache_dir = s:ref_dir " }}}
  autocmd FileType ref call s:init_ref_viewer()
  function! s:init_ref_viewer()
    " Overwrite setting
    nmap <buffer> b <Plug>(ref-back)
    nmap <buffer> f <Plug>(ref-forward)
    nnoremap <buffer> q <C-w>c
    setlocal nonumber
  endfunction
endif
" }}}

" #- skk & eskk -# "{{{
" let s:skk_user_dir = g:vim_info_dir . '/others/dict/usr'
let skk_user_dir = expand('~/.dict')
" Make dictionary directory "{{{
if !isdirectory(skk_user_dir)
  call mkdir(skk_user_dir, 'p')
endif "}}}
" let s:skk_user_dict = s:skk_user_dir
let s:skk_user_dict = skk_user_dir . '/SKK-JISYO.L'
if s:iswin
  let s:skk_system_dict = g:vim_info_dir . '/others/dict/sys'
else
  let s:skk_system_dict = '/usr/local/share/skk'
endif

let s:skk_user_dict_encoding = 'utf-8'
let s:skk_system_dict_encoding = 'euc-jp'


if 1
  " Map <C-j> to eskk, Map <C-g><C-j> to skk.vim "{{{
  let g:skk_control_j_key = '<C-g><C-j>'
  " }}}
else
  " Map <C-j> to skk.vim, Map <C-g><C-j> to eskk "{{{
  let g:skk_control_j_key = '<C-j>'
  inoremap <C-g><C-j> <Plug>(eskk:toggle)
  cnoremap <C-g><C-j> <Plug>(eskk:toggle)
  " }}}
endif
"}}}

" #- skk.vim -# "{{{
if globpath(&rtp, 'plugin/skk.vim') != ''
  let g:skk_jisyo = s:skk_user_dict
  let g:skk_jisyo_encoding = s:skk_user_dict_encoding
  let g:skk_large_jisyo = s:skk_user_dict
  " let g:skk_large_jisyo_encoding = s:skk_system_dict_encoding
  let g:skk_large_jisyo_encoding = s:skk_system_dict_encoding

  let g:skk_control_j_key = '<C-g><C-j>'
  " Arpeggio map! fj    <Plug>(skk-enable-im)

  let g:skk_manual_save_jisyo_keys = ''

  let g:skk_egg_like_newline = 1
  let g:skk_auto_save_jisyo = 1
  let g:skk_imdisable_state = -1
  let g:skk_keep_state = 1
  let g:skk_show_candidates_count = 2
  let g:skk_show_annotation = 0
  let g:skk_sticky_key = ';'
  let g:skk_use_color_cursor = 1
  let g:skk_remap_lang_mode = 0

  " cursor colors "{{{
  if has('gui_running')
    let g:skk_cursor_hira_color='#ff0f5f'
    let g:skk_cursor_kata_color='#3fff5f'
    let g:skk_cursor_zenei_color='#ffff5f'
    let g:skk_cursor_ascii_color='#3f3fff'
    let g:skk_cursor_abbrev_color='#5f5f5f'
  else
    let g:skk_cursor_hira_color='14'
    let g:skk_cursor_kata_color='11'
    let g:skk_cursor_zenei_color='8'
    let g:skk_cursor_ascii_color='9'
    let g:skk_cursor_abbrev_color='0'
  endif
  "}}}

endif
"}}}

" #- eskk.vim -# "{{{
if globpath(&rtp, 'autoload/eskk.vim') != ''
  " make directory for eskk "{{{
  let s:eskk_dir =  g:vim_info_dir . '/.eskk'
  if !isdirectory(s:eskk_dir)
    call mkdir(s:eskk_dir, 'p')
  endif
  let g:eskk#directory = s:eskk_dir
   " }}}
  if !exists('g:eskk#disable') || !g:eskk#disable
    " Disable skk.vim
    let g:plugin_skk_disable  = 1

    let g:eskk#disable = 0
    let g:eskk#debug = 1
    let g:eskk#debug_out = "file"

    " Cursor color
    let g:eskk#use_color_cursor = 1
    let g:eskk#cursor_color = {
          \ 'ascii'  : ['#0f0f0f', '#2f5f8f'],
          \ 'hira'   : ['#0f0f0f', '#8f2f5f'],
          \ 'kata'   : ['#0f0f0f', '#2f8f4f'],
          \ 'abbrev' : '#2f3f7f',
          \ 'zenei'  : '#afbf2f',
          \ }

    let g:eskk#show_candidates_count = 2

    let g:eskk#show_annotation = 1
    " let g:eskk#rom_input_style = 'msime'
    let g:eskk#rom_input_style = 'skk'
    let g:eskk#egg_like_newline = 1

    " Don't keep state
    let g:eskk#keep_state = 0
    let g:eskk#keep_state_beyond_buffer = 1

    let g:eskk#marker_henkan = '$'
    let g:eskk#marker_okuri = '*'
    let g:eskk#marker_henkan_select = '@'
    let g:eskk#marker_jisyo_touroku = '?'
    let g:eskk#marker_popup = '#'

    let g:eskk#dictionary_save_count = 5

    "  set dictonary "{{{
    if has('vim_starting')
      let g:eskk#dictionary = {
            \   'path': s:skk_user_dict,
            \   'sorted' : 0,
            \   'encoding': s:skk_system_dict_encoding,
            \}

      let g:eskk#large_dictionary = {
            \   'path': s:skk_user_dict,
            \   'sorted' : 1,
            \   'encoding': s:skk_system_dict_encoding,
            \}
    endif

    " Backup
    let g:eskk#backup_dictionary = s:eskk_dir . '/SKK-JISYO.L.BAK'
    unlet s:eskk_dir "}}}

    " Define table.
    autocmd MyAutoCmd User eskk-initialize-pre call s:eskk_initial_pre()
    function! s:eskk_initial_pre() "{{{
      let t = eskk#table#new('rom_to_hira*', 'rom_to_hira')
      call t.add_map('z ', '　')
      call t.add_map('~', '〜')
      call t.add_map('zc', '©')
      call t.add_map('zr', '®')
      call t.add_map('z9', '（')
      call t.add_map('z0', '）')
      call eskk#register_mode_table('hira', t)
      unlet t
    endfunction "}}}
  endif
endif
" }}}

" #- Restart.vim -# "{{{
if globpath(&rtp, 'plugin/restart.vim') != ''
  let g:restart_sessionoptions = 'blank,curdir,folds,help,localoptions,tabpages,guifontwide'
  " key mapping
  nnoremap <silent> <Space><leader>r :<c-u>Restart<CR>
  nnoremap <silent> <Space><leader>rm :<c-u>Restart!<CR>
endif
" }}}

" #- caw.vim -# "{{{
if globpath(&rtp, 'autoload/caw.vim') != ''
  nmap gcc <Plug>(caw:i:toggle)
  xmap gcc <Plug>(caw:i:toggle)
endif
"}}}

" #- Vinarise -# "{{{
if globpath(&rtp, 'autoload/vinarise.vim') != ''
  let g:vinarise_enable_auto_detect = 1
endif
"}}}

" #- smartchr -# "{{{
if globpath(&rtp, 'autoload/smartchr.vim') != ''
  inoremap <expr> , smartchr#one_of(', ', ',')
  inoremap <expr> ? smartchr#one_of(' ? ', '?')

  " Smart =.
  inoremap <expr> = search('\(&\<bar><bar>\<bar>+\<bar>-\<bar>/\<bar>>\<bar><\) \%#', 'bcn')? '<bs>= '
        \ : search('\(*\<bar>!\)\%#', 'bcn') ? '= '
        \ : smartchr#one_of(' = ', '=', ' == ')

  augroup MyAutoCmd
    " Substitute .. into -> .
    autocmd FileType c,cpp inoremap <buffer> <expr> . smartchr#loop('.', '->', '...')
    autocmd FileType perl,php inoremap <buffer> <expr> . smartchr#loop(' . ', '->', '.')
    autocmd FileType perl,php inoremap <buffer> <expr> - smartchr#loop('-', '->')
    autocmd FileType vim inoremap <buffer> <expr> . smartchr#loop('.', ' . ', '..', '...')

    autocmd FileType haskell
          \ inoremap <buffer> <expr> + smartchr#loop('+', ' ++ ')
          \| inoremap <buffer> <expr> - smartchr#loop('-', ' <- ')
          \| inoremap <buffer> <expr> $ smartchr#loop(' $ ', '$')
          \| inoremap <buffer> <expr> \ smartchr#loop('\ ', '\')
          \| inoremap <buffer> <expr> : smartchr#loop(':', ' :: ', ' : ')
          \| inoremap <buffer> <expr> . smartchr#loop(' . ', '..', '.')

    autocmd FileType scala
          \ inoremap <buffer> <expr> - smartchr#loop('-', ' -> ', ' <- ')
          \| inoremap <buffer> <expr> = smartchr#loop(' = ', '=', ' => ')
          \| inoremap <buffer> <expr> : smartchr#loop(': ', ':', ' :: ')
          \| inoremap <buffer> <expr> . smartchr#loop('.', ' => ')

    autocmd FileType eruby
          \ inoremap <buffer> <expr> > smartchr#loop('>', '%>')
          \| inoremap <buffer> <expr> < smartchr#loop('<', '<%', '<%=')
  augroup END
endif
"}}}

" #- stickykey -# "{{{
if globpath(&rtp, 'autoload/stickykey.vim') != ''
endif
"}}}

" #- quickhl.vim -# "{{{
if globpath(&rtp, 'autoload/quickhl.vim') != ''
nmap ZZl <Plug>(quickhl-toggle)
xmap ZZl <Plug>(quickhl-toggle)
nmap <Space>M <Plug>(quickhl-reset)
xmap <Space>M <Plug>(quickhl-reset)

" nmap <Space>j <Plug>(quickhl-match)

" highlight color change
let g:quickhl_colors = [
      \ "guifg=#cfcfcf guibg=#2f002f gui=bold ",
      \ "guifg=#cfcfcf guibg=#3f007f gui=bold ",
      \ "guifg=#cfcfcf guibg=#0f2f5f gui=bold ",
      \ "guifg=#cfcfcf guibg=#0f0f5f gui=bold ",
      \ "guifg=#cfcfcf guibg=#0f3f3f gui=bold ",
      \ "guifg=#cfcfcf guibg=#1f3f0f gui=bold ",
      \ "guifg=#cfcfcf guibg=#2f5f3f gui=bold ",
      \ "guifg=#cfcfcf guibg=#3f1f1f gui=bold ",
      \ "guifg=#cfcfcf guibg=#5f4f2f gui=bold ",
      \ "guifg=#cfcfcf guibg=#2f5f3f gui=bold ",
      \ "guifg=#cfcfcf guibg=#3f2f4f gui=bold ",
      \ "guifg=#cfcfcf guibg=#4f1f5f gui=bold ",
      \ "guifg=#cfcfcf guibg=#2f5f1f gui=bold ",
      \ ]

let g:quickhl_keywords = [
      \ "t9md",
      \ "ujihisa",
      \ "thinca",
      \ "tyru",
      \ "kana",
      \ "mattn",
      \ "Shougo",
      \ ]

endif
" }}}

" #- textmanip.vim -# "{{{
if globpath(&rtp, 'autoload/textmanip.vim') != ''
  if has('gui_running')
    xmap <M-d> <Plug>(textmanip-duplicate-down)
    nmap <M-d> <Plug>(textmanip-duplicate-down)
    xmap <M-D> <Plug>(textmanip-duplicate-up)
    nmap <M-D> <Plug>(textmanip-duplicate-up)

    xmap <C-j> <Plug>(textmanip-move-down)
    xmap <C-k> <Plug>(textmanip-move-up)
    xmap <C-h> <Plug>(textmanip-move-left)
    xmap <C-l> <Plug>(textmanip-move-right)
  else
    xmap <Space>d <Plug>(textmanip-duplicate-down)
    nmap <Space>d <Plug>(textmanip-duplicate-down)
    xmap <Space>D <Plug>(textmanip-duplicate-up)
    nmap <Space>D <Plug>(textmanip-duplicate-up)

    xmap <C-j> <Plug>(textmanip-move-down)
    xmap <C-k> <Plug>(textmanip-move-up)
    xmap <C-h> <Plug>(textmanip-move-left)
    xmap <C-l> <Plug>(textmanip-move-right)
  endif
endif
"}}}

" #- ambicmd -# "{{{
if globpath(&rtp, 'autoload/ambicmd.vim') != ''
  cnoremap <expr> <Space> ambicmd#expand("\<Space>")
  cnoremap <expr> <CR>    ambicmd#expand("\<CR>")
  cnoremap <expr> <C-f> ambicmd#expand("\<Right>")
endif
" }}}

" #- colorv -# "{{{
if globpath(&rtp, 'plugin/colorv.vim') != ''
  let colorv_cache_dir = g:vim_info_dir . '/.ColorV'
  if !isdirectory(colorv_cache_dir)
    call mkdir(colorv_cache_dir, 'p')
  endif
  let g:ColorV_cache_File = colorv_cache_dir . '/ColorV_cache'
endif
" }}}

" #- visualstar -# "{{{
if globpath(&rtp, 'plugin/visualstar.vim') != ''
  map * <Plug>(visualstar-*)
  map # <Plug>(visualstar-#)
  map g* <Plug>(visualstar-g*)
  map g# <Plug>(visualstar-g#)
endif
"}}}

" #- openbrowser -# "{{{
if globpath(&rtp, 'autoload/openbrowser.vim') != ''
  nnoremap <silent>gx :<C-u>OpenBrowser expand('%')<CR>
endif
"}}}

" #- winmove -# "{{{
if globpath(&rtp, 'plugin/winmove.vim') != ''
  let g:wm_move_up = '<Up>'
  let g:wm_move_right = '<Right>'
  let g:wm_move_down = '<Down>'
  let g:wm_move_left = '<Left>'
endif
"}}}

" #- FoldCC -# "{{{
if globpath(&rtp, 'plugin/foldCC.vim') != ''
  set foldtext=FoldCCtext()
  set fillchars=vert:\|
endif
"}}}

" #- fontzoom -#"{{{
if globpath(&rtp, 'plugin/fontzoom.vim') != ''
  nmap <F11> <Plug>(fontzoom-larger)
  nmap <F12> <Plug>(fontzoom-smaller)
endif
"}}}

" #- netrw.vim -# "{{{
" Set of netrw configuration directory "{{{
let s:netrw_dir = g:vim_info_dir . '/.netrw'
if !isdirectory(s:netrw_dir)
  call mkdir(s:netrw_dir, 'p')
endif
let g:netrw_home = s:netrw_dir " }}}
let g:netrw_list_hide= '*.swp'
nnoremap <silent> <BS> :<C-u>Explore<CR>
" Change default directory.
"set browsedir=current
if executable('wget')
  let g:netrw_http_cmd = 'wget'
endif
"}}}

" #- matchit -# "{{{
if filereadable(expand('$VIMRUNTIME/macros/matchit.vim'))
  source $VIMRUNTIME/macros/matchit.vim
endif
" }}}

"}}}

"---------------------------------------------------------------------------
" Key-mappings: "{{{
"

" Too lazy to press Shift Key
" noremap ; :
" noremap : ;

inoremap <C-@> <ESC>

" Movement command line mode
nnoremap <C-J> :

" Quick save and quit. "{{{
nnoremap <silent> [Space]w  :<C-u>update<CR>
nnoremap <silent> [Space]fw :<C-u>write!<CR>
" nnoremap <silent> [Space]q  :<C-u>quit<CR>
nnoremap <silent> [Space]q  :<C-u>close<CR>
nnoremap <silent> [Space]<leader>q  :<C-u>quit!<CR>
nnoremap <silent> [Space]aq :<C-u>quitall<CR>
" nnoremap <silent> [Space]fq :<C-u>quitall!<CR>
nnoremap <silent> [Space]fq :<C-u>close!<CR>
"}}}

" Easy escape."{{{
inoremap jj           <ESC>
onoremap jj           <ESC>
cnoremap jj           <C-c>
inoremap j<Space>     j
onoremap j<Space>     j
cnoremap j<Space>     j
"}}}

" <CTRL> + j = Esc "{{{
"inoremap <C-j> <Esc>
" <CTRL> + [ = Esc
"}}}

" Movement on line "{{{
noremap j gj
noremap k gk
noremap gj j
noremap gk k
"}}}

" Search selected area.
vnoremap <silent> z/ <ESC>/\v%V
vnoremap <silent> z? <ESC>?\v%V

" Clear highlight
nnoremap <silent> <ESC><ESC> :nohlsearch<CR>

" Highlight test
if globpath(&rtp, 'autoload/unite.vim') != ''
  nnoremap <silent> <Space>eh :<C-u>Unite color_set -cursor-line-highlight=NONE<CR>
else
 nnoremap <silent> <Space>eh :<C-u>aboveleft source $VIMRUNTIME/syntax/hitest.vim<CR>
endif

" Edit setting of vimperator "{{{
if s:iswin
  nnoremap <silent><Space>ef :<C-u>edit $HOME/.vimperatorrc<CR>
  nnoremap <silent><Space>ep :<C-u>edit $HOME/.pentadactylrc<CR>
else
  nnoremap <silent><Space>ef :<C-u>edit $HOME/.vimperatorrc<CR>
  nnoremap <silent><Space>ep :<C-u>edit $HOME/.pentadactylrc<CR>
endif " }}}

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

" Auto escape / and ? in search command.
cnoremap <expr> / getcmdtype() == '/' ? '\.' : '/'

" Command line window. "{{{
nnoremap <sid>(command-line-enter) q:
xnoremap <sid>(command-line-enter) q:
nnoremap <sid>(command-line-norange) q:<C-u>

"noremap : q:i
"xnoremap : q:i

nmap :  <sid>(command-line-enter)
xmap :  <sid>(command-line-enter)
"
autocmd MyAutoCmd CmdwinEnter * call s:init_cmdwin()
function! s:init_cmdwin()  "{{{
  nnoremap <buffer> q :<C-u>quit<CR>
  nnoremap <buffer> <TAB> :<C-u>quit<CR>
  nnoremap <buffer> ; :
  xnoremap <buffer> ; :

  " Neocomplcache
  if globpath(&rtp, 'bundle/neocomplcache') != ''
   " inoremap <buffer><expr><CR> neocomplcache#close_popup()."\<CR>"
   " inoremap <buffer><expr><C-h> col('.') == 1 ? "\<ESC>:quit\<CR>" : neocomplcache#cancel_popup()"\<C-h>"
   " inoremap <buffer><expr><BS> col('.') == 1 ? "\<ESC>:quit\<CR>" : neocomplcache#cancel_popup()."\<C-h>"
  " Completion.
  "inoremap <buffer><expr><TAB>  pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : "\<C-x>\<C-u>\<C-p>"
  endif

  " Altercmd.
  if globpath(&rtp, 'bundle/altercmd') != ''
    "call altercmd#define('<buffer>', 'grep', 'Grep', 'i')
    "call altercmd#define('<buffer>', 'uniq', 'Uniq', 'i')
    call altercmd#define('<buffer>', 'sp[lit]', 'split', 'i')
  endif

  " ambicmd
  if globpath(&rtp, "bundle/ambicmd") != ''
    "inoremap <buffer> <expr> <Space> ambicmd#expand("\<Space>")
    "inoremap <buffer> <expr> <CR>    ambicmd#expand("\<CR>")
  endif

  startinsert!
endfunction "}}}
" }}}

" [Space]: Other useful commands "{{{
" Smart space mapping.
" Notice: when starting other <Space> mappings in noremap, disappeared [Space].
nnoremap  [Space]   <Nop>
xnoremap  [Space]   <Nop>
nmap  <Space>   [Space]
xmap  <Space>   [Space]

" Toggle Neocomplcache
nnoremap <silent> <expr> [Space]cl neocomplcache#is_locked() ? "\<Esc>:<C-u>NeoComplCacheUnlock\<CR> \<Esc>:<C-u>echo 'Neocon is unlock done.'\<CR>" : "\<Esc>:<C-u>NeoComplCacheLock\<CR> \<ESC>:<C-u>echo 'Neocon is lock done.'\<CR>"

" Echo syntax name.
nnoremap [Space]sy  :<C-u>echo synIDattr(synID(line('.'), col('.'), 1), "name")<CR>
"}}}

" Quickfix "{{{

" nnoremap Q q
nmap q [Quickfix]
nnoremap [Quickfix] <Nop>

" For quickfix list  "{{{
nnoremap <silent> [Quickfix]n  :<C-u>cnext<CR>
nnoremap <silent> [Quickfix]p  :<C-u>cprevious<CR>
nnoremap <silent> [Quickfix]r  :<C-u>crewind<CR>
nnoremap <silent> [Quickfix]N  :<C-u>cfirst<CR>
nnoremap <silent> [Quickfix]P  :<C-u>clast<CR>
nnoremap <silent> [Quickfix]fn :<C-u>cnfile<CR>
nnoremap <silent> [Quickfix]fp :<C-u>cpfile<CR>
nnoremap <silent> [Quickfix]l  :<C-u>clist<CR>
nnoremap <silent> [Quickfix]q  :<C-u>cc<CR>
nnoremap <silent> [Quickfix]o  :<C-u>copen<CR>
nnoremap <silent> [Quickfix]c  :<C-u>cclose<CR>
nnoremap <silent> [Quickfix]en :<C-u>cnewer<CR>
nnoremap <silent> [Quickfix]ep :<C-u>colder<CR>
nnoremap <silent> [Quickfix]m  :<C-u>make<CR>
nnoremap [Quickfix]M  :<C-u>make<Space>
nnoremap [Quickfix]g  :<C-u>grep<Space>
" Toggle quickfix window.
nnoremap <silent> [Quickfix]<Space> :<C-u>call <SID>toggle_quickfix_window()<CR>
function! s:toggle_quickfix_window()
  let _ = winnr('$')
  cclose
  if _ == winnr('$')
    copen
    setlocal nowrap
    setlocal whichwrap=b,s
  endif
endfunction

" For location list (mnemonic: Quickfix list for the current Window)  "{{{
nnoremap <silent> [Quickfix]wn  :<C-u>lnext<CR>
nnoremap <silent> [Quickfix]wp  :<C-u>lprevious<CR>
nnoremap <silent> [Quickfix]wr  :<C-u>lrewind<CR>
nnoremap <silent> [Quickfix]wP  :<C-u>lfirst<CR>
nnoremap <silent> [Quickfix]wN  :<C-u>llast<CR>
nnoremap <silent> [Quickfix]wfn :<C-u>lnfile<CR>
nnoremap <silent> [Quickfix]wfp :<C-u>lpfile<CR>
nnoremap <silent> [Quickfix]wl  :<C-u>llist<CR>
nnoremap <silent> [Quickfix]wq  :<C-u>ll<CR>
nnoremap <silent> [Quickfix]wo  :<C-u>lopen<CR>
nnoremap <silent> [Quickfix]wc  :<C-u>lclose<CR>
nnoremap <silent> [Quickfix]wep :<C-u>lolder<CR>
nnoremap <silent> [Quickfix]wen :<C-u>lnewer<CR>
nnoremap <silent> [Quickfix]wm  :<C-u>lmake<CR>
nnoremap [Quickfix]wM  :<C-u>lmake<Space>
nnoremap [Quickfix]w<Space>  :<C-u>lmake<Space>
nnoremap [Quickfix]wg  :<C-u>lgrep<Space>
"}}}

"}}}
"}}}

" Change current directory.
nnoremap <silent> [Space]cd :<C-u>CD %:h<CR>

" s: Windows and buffers(High priority) "{{{
" The prefix key.
nnoremap    [Window]   <Nop>
nmap    s [Window]
nnoremap C         s
xnoremap C         s
nnoremap <silent> [Window]p  :<C-u>call <SID>split_nicely()<CR>
nnoremap <silent> [Window]v  :<C-u>vsplit<CR>
nnoremap <silent> [Window]c  :<C-u>close<CR>
"nnoremap <silent> -  :<C-u>close<CR>
nnoremap <silent> [Window]o  :<C-u>only<CR>
"nnoremap <silent> [Window]w  <C-w>w

"" A .vimrc snippet that allows you to move around windows beyond tabs
nnoremap <silent> <Tab> :call <SID>NextWindowOrTab()<CR>
nnoremap <silent> <S-Tab> :call <SID>PreviousWindowOrTab()<CR>
nnoremap <silent> [Space]<Space> <C-w>p

function! s:NextWindowOrTab()
  if tabpagenr('$') == 1 && winnr('$') == 1
    call s:split_nicely()
  elseif winnr() < winnr("$")
    wincmd w
  else
    tabnext
    1wincmd w
  endif
endfunction

function! s:PreviousWindowOrTab()
  if winnr() > 1
    wincmd W
  else
    tabprevious
    execute winnr("$") . "wincmd w"
  endif
endfunction

nnoremap <silent> [Window]<Space>  :<C-u>call <SID>ToggleSplit()<CR>
function! s:MovePreviousWindow() " "{{{
  let l:prev_name = winnr()
  silent! wincmd p
  if l:prev_name == winnr()
    silent! wincmd w
  endif
endfunction " }}}
" If window isn't splited, split buffer. "{{{
function! s:ToggleSplit()
  let l:prev_name = winnr()
  silent! wincmd w
  if l:prev_name == winnr()
    split
  else
    close
  endif
endfunction " }}}
" Split nicely."{{{
"command! SplitNicely call s:split_nicely()
function! s:split_nicely()
  " Split nicely.
  if winwidth(0) > 2 * &winwidth
    vsplit
  else
    split
  endif
  wincmd p
endfunction
"}}}
" Delete current buffer."{{{
nnoremap <silent> [Window]d  :<C-u>call <SID>CustomBufferDelete(0)<CR>
nnoremap <silent> _  :<C-u>call <SID>CustomBufferDelete(0)<CR>
function! s:CustomBufferDelete(is_force)
  let current = bufnr('%')

  call s:CustomAlternateBuffer()

  if a:is_force
    silent! execute 'bdelete! ' . current
  else
    silent! execute 'bdelete ' . current
  endif
endfunction
"}}}
" Delete input buffer."{{{
nnoremap <silent> [Window]D  :<C-u>call <SID>InputBufferDelete(0)<CR>
function! s:InputBufferDelete(is_force)
  call s:ViewBufferList()

  " Create list.
  let [l:cnt, l:pos, l:list] = [0, 1, {}]
  while l:pos <= bufnr('$')
    if buflisted(l:pos)
      let l:list[l:cnt] = l:pos
      let l:cnt += 1
    endif
    let l:pos += 1
  endwhile

  let l:input = input('Select delete buffer: ', '')
  if l:input == ''
    " Cancel.
    return
  endif

  for l:in in split(l:input)
    if !has_key(l:list, l:in) || !bufexists(l:list[l:in])
      echo "\nDon't exists buffer " . l:in
      continue
    endif

    if l:in == bufnr('%') || l:in == bufname('%')
      call s:CustomAlternateBuffer()
    endif

    echo bufnr(l:list[l:in])
    if a:is_force
      silent! execute 'bdelete! ' . l:list[l:in]
    else
      silent! execute 'bdelete ' . l:list[l:in]
    endif
  endfor
endfunction
"}}}
" Force delete current buffer.
nnoremap <silent> [Window]fq  :<C-u>call <SID>CustomBufferDelete(1)<CR>
nnoremap <silent> [Window]fQ  :<C-u>call <SID>InputBufferDelete(1)<CR>
" Delete current buffer and close current window.
nnoremap <silent> [Window]d  :<C-u>call <SID>CustomBufferDelete(0)<CR>:if winnr() != 1 <Bar> close<CR>:endif<CR>
nnoremap <silent> [Window]fd  :<C-u>call <SID>CustomBufferDelete(1)<CR>:<C-u>close<CR>
" Buffer move.
" Fast buffer switch."{{{
function! s:CustomAlternateBuffer()
  if bufnr('%') != bufnr('#') && buflisted(bufnr('#'))
    buffer #
  else
    let l:cnt = 0
    let l:pos = 1
    let l:current = 0
    while l:pos <= bufnr('$')
      if buflisted(l:pos)
        if l:pos == bufnr('%')
          let l:current = l:cnt
        endif

        let l:cnt += 1
      endif

      let l:pos += 1
    endwhile

    if l:current > l:cnt / 2
      bprevious
    else
      bnext
    endif
  endif
endfunction
"}}}
"nnoremap <silent> [Window]q  :<C-u>call <SID>CustomBufferDelete(0)<CR>
" Edit"{{{
nnoremap [Window]b  :<C-u>edit<Space>
nnoremap <silent> [Window]en  :<C-u>new<CR>
nnoremap <silent> [Window]ee  :<C-u>JunkFile<CR>
" nnoremap [Window]r  :<C-u>REdit<Space>
"}}}
if globpath(&rtp, 'autoload/unite.vim') != ''
  " View buffer list.
  nnoremap <silent> [Window]l  :<C-u>Unite buffer<CR>
  " View tab list.
  nnoremap <silent> [Window]t  :<C-u>Unite tab<CR>
endif

" Scroll other window.
nnoremap <silent> <C-y> :<C-u>call <SID>ScrollOtherWindow(1)<CR>
inoremap <silent> <A-y> <C-o>:<C-u>call <SID>ScrollOtherWindow(1)<CR>
nnoremap <silent> <C-u> :<C-u>call <SID>ScrollOtherWindow(0)<CR>
inoremap <silent> <A-u> <C-o>:<C-u>call <SID>ScrollOtherWindow(0)<CR>

function! s:ScrollOtherWindow(direction)
  execute 'wincmd' (winnr('#') == 0 ? 'w' : 'p')
  execute (a:direction ? "normal! \<C-d>" : "normal! \<C-u>")
  wincmd p
endfunction
"}}}

" <C-t>: Tab pages"{{{
"
" The prefix key.
nnoremap [Tabbed]   <Nop>
nmap <C-t> [Tabbed]

" Create tab page.
nnoremap <silent> [Tabbed]c  :<C-u>tabnew<CR>
nnoremap <silent> [Tabbed]d  :<C-u>tabclose<CR>
nnoremap <silent> [Tabbed]o  :<C-u>tabonly<CR>
nnoremap <silent> [Tabbed]i  :<C-u>tabs<CR>
nmap [Tabbed]<C-n>  [Tabbed]n
nmap [Tabbed]<C-c>  [Tabbed]c
nmap [Tabbed]<C-o>  [Tabbed]o
nmap [Tabbed]<C-i>  [Tabbed]i
" Move to other tab page.
nnoremap <silent> [Tabbed]j
      \ :execute 'tabnext' 1 + (tabpagenr() + v:count1 - 1) % tabpagenr('$')<CR>
nnoremap <silent> [Window]j
      \ :execute 'tabnext' 1 + (tabpagenr() + v:count1 - 1) % tabpagenr('$')<CR>
nnoremap <silent> [Tabbed]k  :<C-u>tabprevious<CR>
nnoremap <silent> [Window]k  :<C-u>tabprevious<CR>
nnoremap <silent> [Tabbed]K  :<C-u>tabfirst<CR>
nnoremap <silent> [Window][  :<C-u>tabfirst<CR>
nnoremap <silent> [Tabbed]J  :<C-u>tablast<CR>
nnoremap <silent> [Window]]  :<C-u>tablast<CR>
nnoremap <silent> [Tabbed]l
      \ :<C-u>execute 'tabmove' min([tabpagenr() + v:count1 - 1, tabpagenr('$')])<CR>
nnoremap <silent> [Tabbed]h
      \ :<C-u>execute 'tabmove' max([tabpagenr() - v:count1 - 1, 0])<CR>
nnoremap <silent> [Tabbed]L  :<C-u>tabmove<CR>
nnoremap <silent> [Tabbed]H  :<C-u>tabmove 0<CR>
nmap [Tabbed]n  [Tabbed]j
nmap [Tabbed]p  [Tabbed]k
nmap [Tabbed]<C-t>  [Tabbed]j
nmap [Tabbed]<C-l>  [Tabbed]l
nmap [Tabbed]<C-h>  [Tabbed]h

" Change current tab like GNU screen.
" Note that the numbers in {lhs}s are 0-origin.  See also 'tabline'.
for i in range(10)
  execute 'nnoremap <silent>' ('[Tabbed]'.(i))  ((i+1).'gt')
  execute 'nnoremap <silent>' ('[Window]'.(i))  ((i+1).'gt')
endfor
unlet i
"}}}

" Switch the tab page
nnoremap <silent> <C-n> :<C-U>tabnext<CR>
nnoremap <silent> <C-p> :<C-U>tabprevious<CR>

" Move search word and fold open."{{{
nnoremap n  nzz
nnoremap N  Nzz
nnoremap #  #zz
nnoremap g*  g*zz
nnoremap g#  g#zz
"}}}

" Smart <C-f>, <C-b>.
nnoremap <silent> <C-f> z<CR><C-f>zz
nnoremap <silent> <C-b> z-<C-b>zz

" Execute help."{{{
"nnoremap <C-h>  :<C-u>help<Space>
"" Execute help by cursor keyword.
"nnoremap <silent> g<C-h>  :<C-u>help<Space><C-r><C-w><CR>
"}}}

" Nop "{{{
" Disable ZZ. and more "{{{
nnoremap [Nop]  <Nop>
nmap ZZ [Nop]
nmap ZQ [Nop]
nnoremap [Nop]l :<C-u>echo "colorscheme <" . g:colors_name . ">"<CR>
" Todo: [Nop]l -> Display info
nnoremap [Nop]l :<C-u>echo "colorscheme <" . g:colors_name . ">"<CR>

nnoremap [Zop] <Nop>
nmap <C-Z> [Zop]
nnoremap [Zop]l :<C-U>echo "colorscheme <" . g:colors_name . ">"<CR>

" Enter
nnoremap [Enter] <Nop>
nmap <CR> [Enter]

" Ctrl-c
nnoremap [C-c] <Nop>
nmap <C-c> [C-c]
" }}}
"}}}

" Redraw.
nnoremap <silent> <C-l>    :<C-u>redraw!<CR>

" Sticky shift in English keyboard."{{{
" Sticky key.
inoremap <expr> ;  <SID>sticky_func()
cnoremap <expr> ;  <SID>sticky_func()
snoremap <expr> ;  <SID>sticky_func()

function! s:sticky_func() "{{{
  let l:sticky_table = {
        \',' : '<', '.' : '>', '/' : '?',
        \'1' : '!', '2' : '"', '3' : '#', '4' : '$', '5' : '%',
        \'6' : '^', '7' : '&', '8' : '*', '9' : '(', '0' : ')', '-' : '_', '=' : '+',
        \';' : ':', '[' : '{', ']' : '}', '`' : '~', "'" : "\"", '\' : '|',
        \}
  let l:special_table = {
        \"\<ESC>" : "\<ESC>", "\<Space>" : ';', "\<CR>" : ";\<CR>"
        \}

  if mode() !~# '^c'
    echo 'Input sticky key: '
  endif
  let l:char = ''

  while l:char == ''
    let l:char = nr2char(getchar())
  endwhile

  if l:char =~ '\l'
    return toupper(l:char)
  elseif has_key(l:sticky_table, l:char)
    return l:sticky_table[l:char]
  elseif has_key(l:special_table, l:char)
    return l:special_table[l:char]
  else
    return ''
  endif
endfunction "}}}
"}}}

" Easy home directory."{{{
function! HomedirOrBackslash()
  if getcmdtype() == ':' && (getcmdline() =~# '^e\%[dit] ' || getcmdline() =~? '^r\%[ead]\?!' || getcmdline() =~? '^cd ')
    return '~/'
  else
    return '\'
  endif
endfunction
cnoremap <expr> <Bslash> HomedirOrBackslash()
"}}}

" use macro
nnoremap <C-q> q

"}}}

"---------------------------------------------------------------------------
" Commands:"{{{
"

" Toggle options. "{{{
function! ToggleOption(option_name)
  execute 'setlocal' a:option_name.'!'
  execute 'setlocal' a:option_name.'?'
endfunction  "}}}

" Toggle variables. "{{{
function! ToggleVariable(variable_name)
  if eval(a:variable_name)
    execute 'let' a:variable_name.' = 0'
  else
    execute 'let' a:variable_name.' = 1'
  endif
  echo printf('%s = %s', a:variable_name, eval(a:variable_name))
endfunction  "}}}

" Change current directory."{{{
command! -nargs=? -complete=dir -bang CD  call s:ChangeCurrentDir('<args>', '<bang>')
function! s:ChangeCurrentDir(directory, bang)
  if a:directory == ''
    lcd %:p:h
  else
    execute 'lcd' a:directory
  endif

  if a:bang == ''
    pwd
  endif
endfunction"}}}

" Rename file "{{{
command!
      \ -nargs=1 -bang
      \ -bar -complete=file
      \ Rename saveas<bang> <args>
      \ call delete(expand('#:p'))
"}}}

" Capture ex command "{{{
command!
      \ -nargs=+ -bang
      \ -complete=command
      \ Capture
      \ call s:cmd_capture([<f-args>], <bang>0)

function! C(cmd)
  redir => result
  silent execute a:cmd
  redir END
  return result
endfunction

function! s:cmd_capture(args, banged) "{{{
  new
  silent put =C(join(a:args))
  1,2delete _
endfunction "}}}
"}}}

" Print all mapping "{{{
command!
      \ -nargs=* -complete=mapping
      \ AllMaps
      \ map <args> | map! <args> | lmap <args>
"}}}

" :HighlightWith {filetype} ['a 'b]  XXX: Don't work in some case."{{{
command! -nargs=+ -range=% HighlightWith <line1>,<line2>call s:highlight_with(<q-args>)
" xnoremap [Space]h q:HighlightWith<Space>

function! s:highlight_with(args) range
  if a:firstline == 1 && a:lastline == line('$')
    return
  endif
  let c = get(b:, 'highlight_count', 0)
  let ft = matchstr(a:args, '^\w\+')
  if globpath(&rtp, 'syntax/' . ft . '.vim') == ''
    return
  endif
  unlet! b:current_syntax
  let save_isk= &l:isk  " For scheme.
  execute printf('syntax include @highlightWith%d syntax/%s.vim',
        \              c, ft)
  let &l:isk= save_isk
  execute printf('syntax region highlightWith%d start=/\%%%dl/ end=/\%%%dl$/ '
        \            . 'contains=@highlightWith%d',
        \             c, a:firstline, a:lastline, c)
  let b:highlight_count = c + 1
endfunction"}}}

"}}}

"---------------------------------------------------------------------------
" Functions:"{{{
"

function! SnipMid(str, len, mask) "{{{
  if a:len >= len(a:str)
    return a:str
  elseif a:len <= len(a:mask)
    return a:mask
  endif

  let len_head = (a:len - len(a:mask)) / 2
  let len_tail = a:len - len(a:mask) - len_head

  return (len_head > 0 ? a:str[: len_head - 1] : '') . a:mask . (len_tail > 0 ? a:str[-len_tail :] : '')
endfunction "}}}

" Edit now colorschem file
nnoremap <silent><Space>ec :call <SID>EditNowColorScheme()<CR>
function! s:EditNowColorScheme() "{{{
  let nowcolorscheme = g:colors_name
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

" Omit file types (filetype(array) initlaize flag state, and,or?)
function! s:omitfiletype(fts, flagini, aor) "{{{
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
endfunction "}}}

" }}}

"---------------------------------------------------------------------------
" Platform depends: "{{{
"

if s:iswin
  " For Windows"{{{

  " In Windows, can't find exe, when $PATH isn't contained $VIM.
  if $PATH !~? '\(^\|;\)' . escape($VIM, '\\') . '\(;\|$\)'
    let $PATH = $VIM . ';' . $PATH
  endif

  " Shell settings. "{{{
  " Use NYAOS. "{{{
  set shell=$VIM/../nyaos/nyaos.exe
  set shellcmdflag=-e
  set shellpipe=\|&\ tee
  set shellredir=>%s\ 2>&1
  set shellxquote=\"
  " }}}

  " Use bash. "{{{
  "set shell=bash.exe
  "set shellcmdflag=-c
  "set shellpipe=2>&1\|\ tee
  "set shellredir=>%s\ 2>&1
  "set shellxquote=\"
  " }}}
  " }}}

  " Change colorscheme.
  " Don't override colorscheme.
  if !exists('g:colors_name') && !has('gui_running')
    colorscheme darkblue
  endif
  " Disable error messages.
  let g:CSApprox_verbose_level = 0

  " Popup color.
  hi Pmenu ctermbg=8
  hi PmenuSel ctermbg=1
  hi PmenuSbar ctermbg=0
  "}}}
else
  " For Linux"{{{

  if exists('$WINDIR')
    " Cygwin.
    " Use bash.
    set shell=bash
  elseif executable('zsh')
    " Use zsh.
    set shell=zsh
  else
    " set shell=bash
    " Use bash.
    set shell=bash
  endif

  " For non GVim.
  if !has('gui_running')
    " Enable 256 color terminal.
    if !exists('$TMUX')
      set t_Co=256
      " Popup color
      hi Pmenu ctermbg=8
      hi PmenuSel ctermbg=1
      hi PmenuSbar ctermbg=0

      " For screen."{{{
      if &term =~ '^screen'
        augroup MyAutoCmd
          " Show filename on screen statusline.
          " But invalid 'another' screen buffer.
          autocmd BufEnter * if $WINDOW != 0 &&  bufname("") !~ "[A-Za-z0-9\]*://"
                \ | silent! exe '!echo -n "kv:%:t\\"' | endif
          " When 'mouse' isn't empty, Vim will freeze. Why?
          autocmd VimLeave * :set mouse=
        augroup END

        " For Vim inside screen.
        set ttymouse=xterm2

        " Split Vim and screen.
        function! ScreenSpiritOpen(cmd)
          call system("screen -X eval split  focus 'screen " . a:cmd ."' focus")
        endfunction
        function! ScreenEval(str)
          let s = substitute(a:str, "[\n]*$", "\n\n", "")
          call writefile(split(s, "\n"), "/tmp/vim-screen", "b")
          call system("screen -X eval focus 'readreg p /tmp/vim-screen' 'paste p' focus")
        endfunction

        command! -nargs=1 Screen call ScreenSpiritOpen("<args>")

        " Pseudo :suspend with automtic cd.
        " Assumption: Use GNU screen.
        " Assumption: There is a window with the title "another".
        noremap <silent> <C-z>  :<C-u>call PseudoSuspendWithAutomaticCD()<CR>

        if !exists('g:gnu_screen_availablep')
          " Check the existence of $WINDOW to avoid using GNU screen in Vim on
          " a remote machine (for example, "screen -t remote ssh example.com").
          let g:gnu_screen_availablep = len($WINDOW) != 0
        endif
        function! PseudoSuspendWithAutomaticCD()
          if g:gnu_screen_availablep
            " \015 = <C-m>
            " To avoid adding the cd script into the command-line history,
            " there are extra leading whitespaces in the cd script.
            silent execute '!screen -X eval'
                  \         '''select another'''
                  \         '''stuff " cd \"'.getcwd().'\"  \#\#,vim-auto-cd\015"'''
            redraw!
            let g:gnu_screen_availablep = (v:shell_error == 0)
          endif

          if !g:gnu_screen_availablep
            suspend
          endif
        endfunction
      endif

      " For prevent bug.
      autocmd MyAutoCmd VimLeave * set term=screen
      "}}}
    endif

    if has('gui')
      " Use CSApprox.vim

      " Disable error messages.
      let g:CSApprox_verbose_level = 0
    endif
  endif
  "}}}
endif

"}}}

"---------------------------------------------------------------------------
" Others:"{{{
"

" Enable mouse support.
set mouse=a

" If true Vim master, use English help file.
set helplang& helplang=ja,en

" Default home directory.
let g:home = getcwd()
let t:cwd = getcwd()

" Each tab has current directory."{{{
command! -bar -complete=dir -nargs=?
      \   CD
      \   TabpageCD <args>
command! -bar -complete=dir -nargs=?
      \   TabpageCD
      \   execute 'cd' fnameescape(expand(<q-args>))
      \   | let t:cwd = getcwd()

autocmd TabEnter *
      \   if exists('t:cwd') && !isdirectory(t:cwd)
      \ |     unlet t:cwd
      \ | endif
    \ | if !exists('t:cwd')
      \ |   let t:cwd = getcwd()
      \ | endif
    \ | execute 'cd' fnameescape(expand(t:cwd))

" Exchange ':cd' to ':TabpageCD'.
cnoreabbrev <expr> cd (getcmdtype() == ':' && getcmdline() ==# 'cd') ? 'TabpageCD' : 'cd'
"}}}

" #- Verbose -# "{{{
"set verbose=15
" Make recoding directory "{{{
let s:verbosedir = g:vim_info_dir . '/others/.verbose'
if !isdirectory(s:verbosedir)
  call mkdir(s:verbosedir, 'p')
endif
let $VERBOSE=s:verbosedir
set verbosefile=$VERBOSE/verboseinfo.txt "}}}
unlet s:verbosedir "}}}

" #- viminfo -# "{{{
" Set place for save infofile
let s:infodir = g:vim_info_dir . '/info'
if !isdirectory(s:infodir)
  call mkdir(s:infodir, 'p')
endif
let $INFO=s:infodir
unlet! s:infodir
"set viminfo=<50,'10,h,r/a,n$INFO/.viminfo
set viminfo&
set viminfo='50,h,f1,n$INFO/.viminfo
" Don't make viminfo
"set viminfo=
" }}}
"}}}

"---------------------------------------------------------------------------
" #- Misc. -# "{{{
"
" Unite
if globpath(&rtp, 'autoload/unite.vim') != ''
  " via : ujihisa's vimrc (neco, transparency)
  " neco
  " unite-neco "{{{
  let s:unite_source = {'name': 'neco'}
  function! s:unite_source.gather_candidates(args, context)
    let necos = [
          \ "~(-'_'-) goes right",
          \ "~(-'_'-) goes right and left",
          \ "~(-'_'-) goes right quickly",
          \ "~(-'_'-) goes right then smile",
          \ "~(-'_'-)  -8(*'_'*) go right and left",
          \ "(=' .' ) ~w",
          \ ]
    return map(necos, '{
          \ "word": v:val,
          \ "source": "neco",
          \ "kind": "command",
          \ "action__command": "Neco " . v:key,
          \ }')
  endfunction
  call unite#define_source(s:unite_source)
  " }}}
  " transparency
  " unite-transparency "{{{
  if (s:iswin && has('kaoriya') || has('macvim')) && has('gui_running')
    let s:unite_source = {
          \ 'name': 'transparency',
          \ 'action_table': {'*': {}}
          \ }
    function! s:unite_source.gather_candidates(args, context)
      return map(range(200, 255, 5), '{
            \ "word": v:val,
            \ "source": "transparency",
            \ "kind": "command",
            \ "action__command": "set transparency=" . v:val,
            \ }')
    endfunction
    let s:unite_source.action_table['*'].preview = {
          \ 'description': 'preview this transparency',
          \ 'is_quit': 0 }
    function! s:unite_source.action_table['*'].preview.func(candidate)
      execute a:candidate.action__command
    endfunction
    call unite#define_source(s:unite_source)

    nnoremap [unite]I :<C-U>Unite transparency -auto-preview<CR>
  endif
  " }}}
  " menu
  " unite-menu "{{{
  let g:unite_source_menu_menus = {}
  let g:unite_source_menu_menus.test = {
        \ 'description' : 'Test menu',
        \ }
  let g:unite_source_menu_menus.test.candidates = {
        \ 'ghci'      : 'VimShellInteractive ghci',
        \ 'python'    : 'VimShellInteractive python',
        \ 'Unite Beautiful Attack' : 'Unite -auto-preview colorscheme',
        \ 'Unite font selecter' : 'Unite -auto-preview font',
        \ }
  function g:unite_source_menu_menus.test.map(key, value)
    return {
      \ 'word' : a:key,
      \ 'kind' : 'command',
      \ 'action__command' : a:value,
      \ }
  endfunction

  nnoremap <silent> fm  :<C-u>Unite menu:test<CR>
  "}}}
  " color_set
  " color_set "{{{
  let g:highlight_colom = {
      \ 'custom' : {},
      \ }

  let g:highlight_colom.custom = [
      \ 'Normal', 'NonText', 'LineNr', 'SpecialKey',
      \ 'Directory', 'StatusLine', 'StatusLinenc', 'VertSplit',
      \ 'Folded', 'FoldColumn', 'WildMenu', 'Cursor',
      \ 'CursorIM', 'CursorLine', 'TabLine', 'TabLineSel',
      \ 'TabLineFill', 'Pmenu', 'PmenuSel', 'PmenuSbar',
      \ 'PmenuThumb', 'Title', 'MatchParen', 'Underlined',
      \ 'ZenkakuSpace', 'IncSearch', 'Search', 'Visual',
      \ 'Comment', 'Constant', 'Special', 'Identifier',
      \ 'Statement', 'PreProc', 'Type', 'Ignore',
      \ 'Todo', 'String', 'Question', 'MoreMsg',
      \ 'ModeMsg', 'ErrorMsg', 'WarningMsg', 'Error',
      \ 'DiffText', 'DiffAdd', 'DiffChange', 'DiffDelete',
      \ 'SignColumn', 'SpellBad', 'SpellCap', 'SpellRare',
      \ 'SpellLocal', 'VisualNos', 'lCursor', 'ColorColumn',
      \ 'CursorColumn', 'Quickhl0', 'Quickhl1', 'Quickhl2',
      \ 'Quickhl3', 'Quickhl4', 'Quickhl5', 'Quickhl6',
      \ 'Quickhl7', 'Quickhl8', 'Quickhl9', 'Quickhl10',
      \ 'Quickhl11', 'Quickhl12',
      \ ] "}}}
endif
"  (^_^)
" Auto make directory "{{{
"augroup vimrc-auto-mkdir "{{{
"  autocmd!
"  autocmd BufWritePre * call s:auto_mkdir(expand('<afile>:p:h'), v:cmdbang)
"  function! s:auto_mkdir(dir, force) "{{{
"    if !isdirectory(a:dir) && (a:force ||
"          \ input(printf('"%s" does not exist. Create? [y/N]', a:dir)) =~? '^y\%[es]$')
"      call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
"    endif
"  endfunction "}}}
"augroup END "}}}
"}}}
" Fold text to =, - "{{{
"setlocal foldmethod=expr foldexpr=MyHelpFold(v:lnum)
"setlocal foldtext=MyHelpFoldText()
function! MyHelpFold(lnum) "{{{
  let line = getline(a:lnum)
  let next = getline(a:lnum + 1)
  let prev = getline(a:lnum - 1)
  if line =~ '^=\{78}$'
    return 1
  elseif next =~ '^=\{78}$'
    return '<1'
  elseif line =~ '^-\{78}$'
    return 2
  elseif next =~ '^-\{78}$'
    return '<2'
" elseif line =~ '^\S.\+\*$' && prev !~ '\*$' && prev !~ '^\(.\)\1\+$'
" return 3
" elseif next =~ '^\S.\+\*$' && line !~ '\*$'
" return '<3'
  endif
  return '='
endfunction
" }}}
function! MyHelpFoldText() "{{{
  let base = '+-' . v:folddashes . printf('%3d', v:foldend - v:foldstart) . ' lines : '
  let line = getline(v:foldstart)
  if line =~ '^\(.\)\1\+$'
    let line = getline(v:foldstart + 1)
  endif
  if line =~ '\t\|\s\{4,}'
    let [head, tail] = matchlist(line, '^\(.\{-}\)\%(\t\|\s\{4,}\)\s*\(.*\)$')[1 : 2]
    let line = head . repeat(' ', 78 - strdisplaywidth(base . head . tail)) . tail
  endif
  return base . line
endfunction

" }}}
"}}}
" Junk File "{{{
" #########################################################################
"  Open junk file. via.http://vim-users.jp/2010/11/hack181/
" #########################################################################
command! -nargs=0 JunkFile call s:open_junk_file()
function! s:open_junk_file()
  let l:junk_dir = g:vim_dir . '/junk'. strftime('/%Y')
  if !isdirectory(l:junk_dir)
    call mkdir(l:junk_dir, 'p')
  endif

  let l:filename = input('Junk Code: ', l:junk_dir.strftime('/%Y-%m-%d-%H%M%S.'))
  if l:filename != ''
    execute 'split ' . l:filename
  endif
endfunction
"}}}
" ColorRoller "{{{
let ColorRoller = {}
let ColorRoller.colors = [
      \ 'cu', 'YacEv',
      \ 'Opposer', 'Layven',
      \ 'Trimsh', 'ImPgRw',
      \ 'Jager', 'Cugfr',
      \ 'ZycUs', 'GxeiM',
      \ 'Moufr02', 'HwPng01',
      \ 'z1qt', 'joker',
      \ 'rayven',
      \ ]

function! ColorRoller.change() "{{{
  let color = get(self.colors, 0)
  if exists(':Tcolorscheme') == 2
    silent exe "Tcolorscheme " . color
  else
    silent exe "colorscheme " . color
  endif
  redraw
  echo self.colors
endfunction "}}}

function! ColorRoller.roll() "{{{
  let item = remove(self.colors, 0)
  call insert(self.colors, item, len(self.colors))
  call self.change()
endfunction "}}}

function! ColorRoller.unroll() "{{{
  let item = remove(self.colors, -1)
  call insert(self.colors, item, 0)
  call self.change()
endfunction "}}}

nnoremap <silent> + :call ColorRoller.roll()<CR>
nnoremap <silent> - :call ColorRoller.unroll()<CR>
"}}}

let g:is_wab = 'black'

"}}}

set secure

"---------------------------------------------------------------------------
" End: "{{{1
" vim: fen:fdm=marker
" vim: filetype=vim
