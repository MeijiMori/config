# My .zshrc

umask 077 # Default permission
ulimit -c 0 # Don't create core dumps
bindkey -e

REPORTTIME=10
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'
DIRSTACKSIZE=100

# HISTORY #{{{1
HISTFILE=${HOME}/.zsh_history
HISTSIZE=120000
SAVEHIST=100000


# AUTOLOADS #{{{1
autoload -Uz compinit && compinit
autoload -Uz colors; colors
autoload -Uz is-at-least


# OPTIONS #{{{1
# Changing Directores #{{{2
setopt auto_cd
setopt auto_pushd
#setopt cdable_vars
#setopt chase_dots
#setopt chase_links
#setopt posix_cd
setopt pushd_ignore_dups
#setopt pushd_minus
#setopt pushd_silent
#setopt pushd_to_home


# Completion #{{{2
setopt always_last_prompt
setopt no_always_to_end
#setopt auto_list
#setopt auto_menu
#setopt auto_name_dirs
#setopt auto_param_keys
#setopt auto_param_slash
setopt auto_remove_slash
#setopt bash_auto_list
#setopt complete_aliases
setopt complete_in_word
#setopt glob_complete
#setopt hash_list_all
#setopt list_ambiguous
#setopt list_beep
setopt list_packed
setopt list_rows_first
setopt list_types
setopt menu_complete
#setopt rec_exact


# Expansion and Globbing #{{{2
#setopt bad_pattern
#setopt bare_glob_qual
#setopt brace_ccl
#setopt case_glob
#setopt case_match
#setopt csh_null_glob
#setopt equals
setopt extended_glob
#setopt force_float
#setopt glob
#setopt glob_assign
#setopt glob_dots
#setopt glob_subst
setopt hist_subst_pattern
#setopt ignore_braces
#setopt ignore_close_braces
#setopt ksh_glob
setopt magic_equal_subst
#setopt mark_dirs
setopt multibyte
#setopt nomatch
#setopt null_glob
#setopt numeric_glob_sort
setopt rc_expand_param
#setopt rematch_pcre
#setopt sh_glob
#setopt unset
#setopt warn_create_global


# History #{{{2
setopt append_history
setopt bang_hist
setopt extended_history
#setopt hist_allow_clobber
#setopt hist_beep
#setopt hist_expire_dups_first
#setopt hist_fcntl_lock
#setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_lex_words
#setopt hist_no_functions
setopt hist_no_store
setopt hist_expand
setopt hist_reduce_blanks
#setopt hist_save_by_copy
setopt hist_save_no_dups
setopt hist_verify
setopt inc_append_history
setopt inc_append_history_time
setopt share_history


# Initialisation #{{{2
#setopt all_exprot
#setopt global_export
#setopt global_rcs
#setopt rcs


# Input/Output #{{{2
#setopt aliases
setopt clobber
setopt correct
#setopt correct_all
#setopt dvorak
setopt flow_control
#setopt ignore_eof
setopt interactive_comments
#setopt hash_cmds
#setopt hash_dirs
#setopt hash_executables_only
#setopt mail_waring
#setopt path_dirs
#setopt path_script
#setopt print_eight_bit
setopt print_exit_value
#setopt rc_quotes
#setopt rm_star_silent
#setopt rm_star_wait
#setopt short_loops
#setopt sun_keyboard_hack

# Job Control #{{{2
#setopt auto_continue
#setopt auto_resume
#setopt bg_nice
#setopt check_jobs
#setopt hup
setopt long_list_jobs
setopt monitor
#setopt notify
#setopt posix_jobs


# Prompting #{{{2
#setopt prompt_bang
setopt prompt_cr
setopt prompt_sp
setopt prompt_percent
setopt prompt_subst
#setopt transient_prompt


# Scripts and Functions #{{{2
setopt c_bases
#setopt c_precedences
#setopt debug_before_cmd
#setopt err_exit
#setopt err_return
#setopt eval_lineno
#setopt exec
#setopt function_argzero
#setopt local_loops
#setopt local_options
#setopt local_patterns
#setopt local_traps
#setopt multi_func_def
setopt multios
#setopt octal_zeroes
#setopt pipe_fail
#setopt source_trace
#setopt typeset_silent
#setopt verbose
#setopt xtrace


# Shell Emulation #{{{2
#setopt bash_rematch
#setopt bsd_echo
#setopt continue_on_error
#setopt csh_junkie_history
#setopt csh_junkie_loops
#setopt csh_junkie_quotes
#setopt csh_nullcmd
#setopt ksh_arrays
#setopt ksh_autoload
#setopt ksh_option_print
#setopt ksh_typeset
#setopt ksh_zero_subscript
#setopt posix_aliases
#setopt posix_argzero
#setopt posix_builtins
#setopt posix_identifiers
#setopt posix_strings
#setopt posix_traps
#setopt sh_file_expansion
#setopt sh_nullcmd
#setopt sh_option_letters
#setopt sh_word_split
#setopt traps_async


# Shell State #{{{2
setopt interactive
setopt login
#setopt privileged
#setopt restricted
#setopt shin_stdin
#setopt single_command


# Zle #{{{2
setopt no_beep
#setopt combining_chars
#setopt emacs
#setopt overstrike
#setopt single_line_zle
#setopt vi
setopt zle

#setopt global_assign
#setopt hash_allow_clobber
#setopt mail_dirs



# ZSTYLES #{{{1
#zstyle ':completion:*' menu select interactive
#zstyle ':completion:*:default' menu select=2
zstyle ':completion:*' ignore-parents parent pwd ..
zstyle ':completion:*' verbose yes
zstyle ':completion:*' completer _expand _complete _match _prefix _approximate _list _history
zstyle ':completion:*:messages' format '%F{YELLOW}%d'$DEFAULT
zstyle ':completion:*:warnings' format '%F{RED}No matches for:''%F{YELLOW} %d'$DEFAULT
zstyle ':completion:*:descriptions' format '%F{YELLOW}completing %B%d%b'$DEFAULT
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:descriptions' format '%F{yellow}Completing %B%d%b%f'$DEFAULT
zstyle ':completion:*' group-name ''

# completion matching
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# color ls
if [ -n "$LS_COLORS" ]; then
    zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
fi

typeset -ga chpwd_functions

if is-at-least 4.3.11; then
  autoload -U chpwd_recent_dir cdr cdr add-zsh-hook
  add-zsh-hook chpwd chpwd_recent_dirs
  chpwd_functions+=chpwd_recent_dirs
  zstyle ":chpwd:*" recent-dirs-max 500
  zstyle ":chpwd:*" recent-dirs-default true
  zstyle ":completion:*" recent-dirs-insert always
fi



# PROMPT #{{{1
#
# user@host cwd (shlvl)
# $

_set_up_prompt() {
  local _c_reset=$'\e[0m'
  local _c_red=$'\e[31m'
  local _c_green=$'\e[32m'
  local _c_yellow=$'\e[33m'
  local _c_blue=$'\e[34m'
  local _c_perple=$'\e[35m'
  local _c_cyan=$'\e[36m'

  local _c_user
  case "$USER" in
    root) _c_user="$_c_red" ;;
    *) _c_user="$_c_green" ;;
  esac
  local _c_host
  case "$HOSTNAME" in
    WS02) _c_host="$_c_blue" ;;
    *) _c_host="$_c_perple" ;;
  esac

  local _prompt_title="$_c_user%n$_c_reset$_c_cyan@$_c_reset$_c_host%m$_c_reset"
  local _prompt_host="$_c_user%n$_c_reset$_c_cyan@$c_reset$_c_host%m$_c_reset"
  local _prompt_cwd="[$_c_yellow%~$_c_reset]"
  local _prompt_main
  case "$USER" in
    root) local _prompt_main='# ' ;;
    *) local _prompt_main='$ ' ;;
  esac
  if [[ 2 -le $SHLVL ]]; then  # is nested interactive shell?
    local _prompt_shlvl=" ($SHLVL)"
  else
    local _prompt_shlvl=''
  fi

PS1="
$_prompt_host $_prompt_cwd$_prompt_shlvl
$_prompt_main"

  local _s_prompt="$_c_cyan%r is correct? [n,y,a,e]:$_c_reset%b "
  SPROMPT=$_s_prompt

  local _prompt2="%"
  PROMPT2=$_prompt2


}

_set_up_prompt

unset -f _set_up_prompt

# Title (user@hostname)

#case "${TERM}" in
#kterm*|xterm*)
#  precmd() {
#    echo -ne "\033]0;${USER}@${HOST%%.*}[$PWD]\007"
#  }
#  ;;
#esac

case "${TERM}" in
  kterm*|xterm*)
    precmd () { print -Pn "\e]0;%n@%m [%~]\a" }
    preexec () { print -Pn "\e]0;%n@%m [%~] [ $1 ]\a" }
  ;;
  *)
    precmd () { print -Pn "\e]0;%n@%m [%~]\a" }
    preexec () { print -Pn "\e]0;%n@%m [%~] [ $1 ]\a" }
  ;;
esac


# ALIASES #{{{1
alias ls='ls -FC --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias ld='ls -d'
alias l.='ls -d .*'
alias sl='ls'

alias df='df -h'
alias du='du -h'

alias less='less --no-init --LONG-PROMPT --ignore-case --LINE-NUMBER --RAW-CONTROL-CHARS'


# GLOBAL ALIASES #{{{2
alias -g L=' | less'
alias -g G=' | grep'


# FUNCTIONS #{{{1
# chwpd {{{2
# auto ls
# http://qiita.com/yuyuchu3333/items/b10542db482c3ac8b059
chpwd(){
  ls_abbrev
}

ls_abbrev() {
  # if [[ ! -r $PWD ]]; then
  #   return
  # fi
  # # -a : Do not ignore entries starting with ..
  # # -C : Force multi-column output.
  # # -F : Append indicator (one of */=>@|) to entries.
  # local cmd_ls='ls'
  # local -a opt_ls
  # opt_ls=('-aCF' '--color=always')
  # case "${OSTYPE}" in
  #   freebsd*|darwin*)
  #     if type gls > /dev/null 2>&1; then
  #       cmd_ls='gls'
  #     else
  #       # -G : Enable colorized output.
  #       opt_ls=('-aCFG')
  #     fi
  #     ;;
  # esac

  # local ls_result
  # ls_result=$(CLICOLOR_FORCE=1 COLUMNS=$COLUMNS command $cmd_ls ${opt_ls[@]} | sed $'/^\e\[[0-9;]*m$/d')

  # local ls_lines=$(echo "$ls_result" | wc -l | tr -d ' ')

  # if [ $ls_lines -gt 10 ]; then
  #   echo "$ls_result" | head -n 5
  #   echo '...'
  #   echo "$ls_result" | tail -n 5
  #   echo "$(command ls -1 -A | wc -l | tr -d ' ') files exist"
  # else
  #   echo "$ls_result"
  # fi
  ls -la
}


# coplete ssh hosts #{{{2
# http://qiita.com/masudaK/items/c0d750bda4e38f0d9c14
function print_known_hosts (){
if [ -f $HOME/.ssh/known_hosts ]; then
  cat $HOME/.ssh/known_hosts | tr ',' ' ' | cut -d' ' -f1
fi
}
_cache_hosts=($( print_known_hosts ))


# {{{2


# KEYMAPPING #{{{1
disable r


# MISC. #{{{1

# DIR_COLORS
if [[ -f ~/.dir_colors ]]; then
  eval $(dircolors ~/.dir_colors)
fi


# END #{{{1
# vim:expandtab
# vim:ft=zsh


