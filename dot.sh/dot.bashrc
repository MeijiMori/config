# My bash config

# SH OPTIONS #{{{1
shopt -s checkwinsize                   # Auto recognizing window size
shopt -s histappend                     # Don't overwrite HISTFILE
shopt -s no_empty_cmd_completion        # Don't complete when empty line
shopt -u hostcomplete                   # Don't complete hostname
shopt -u sourcepath                     # Don't search PATH for `source'


# ALIAS #{{{1
alias ls='ls -FC --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias ld='ls -d'
alias l.='ls -d .*'
alias sl='ls'

alias df='df -h'
alias du='du -h'

alias less='less --no-init --LONG-PROMPT --ignore-case --LINE-NUMBER --RAW-CONTROL-CHARS'


# PROMPT #{{{1
#
# user@host cwd (shlvl)
# $

_set_up_prompt() {
  local _c_reset='\[\e[0m\]'
  local _c_red='\[\e[31m\]'
  local _c_green='\[\e[32m\]'
  local _c_yellow='\[\e[33m\]'
  local _c_blue='\[\e[34m\]'
  local _c_perple='\[\e[35m\]'
  local _c_cyan='\[\e[36m\]'

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

  local _prompt_title='\[\e]0;\u@\h \w\007\]'
  local _prompt_host="$_c_user\\u$_c_reset$_c_cyan@$_c_reset$_c_host\\h$_c_reset"
  local _prompt_cwd="[$_c_yellow\\w$_c_reset]"
  local _prompt_main='\$ '
  if [[ 2 -le $SHLVL ]]; then  # is nested interactive shell?
    local _prompt_shlvl=' ($SHLVL)'
  else
    local _prompt_shlvl=''
  fi
  if [ -n "$WINDOW" ]; then  # auto-title in GNU screen
    local _prompt_auto='\ek\e\\'
  else
    local _prompt_auto=''
  fi

PS1="$_prompt_auto$_prompt_title
$_prompt_host $_prompt_cwd$_prompt_shlvl
$_prompt_main"
}

_set_up_prompt

unset -f _set_up_prompt

# MISC. #{{{1
umask 022 # Defautl permission
ulimit -c 0 # Don't create core file

# Auto display file list when chaning directory
cd () {
  command cd $1
  ls
}

# FUNCTIONS #{{{1


# __ END __ #{{{1
# vim: fen:fdm=marker
# vim: filetype=sh
