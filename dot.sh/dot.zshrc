# My .zshrc

umask 077 # Default permission
ulimit -c 0 # Don't create core dumps
bindkey -e


HISTFILE=${HOME}/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

REPORTTIME=10

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

DIRSTACKSIZE=100


# AUTOLOADS #{{{1
autoload -Uz compinit && compinit
autoload -Uz colors; colors


# OPTIONS #{{{1

setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt extended_glob
setopt append_history
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_verify
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_no_store
setopt hist_expand
setopt inc_append_history
setopt extended_history
setopt correct


# ZSTYLES #{{{1
zstyle ':completion:*:default' menu select=1
zstyle ':completion:*' ignore-parents parent pwd ..
zstyle ':completion:*:descriptions' format "%BCompleting%b  %U%d%u"


# PROMPT #{{{1
#
# user@host cwd (shlvl)
# $

_set_up_prompt() {
  local _c_reset=$'\e[0m'
  local _c_cyan=$'\e[36m'
  local _c_green=$'\e[32m'
  local _c_red=$'\e[31m'
  local _c_yellow=$'\e[33m'
  local _c_blue=$'\e[34m'

  local _c_user
  case "$USER" in
    root) _c_user="$_c_red" ;;
    *) _c_user="$_c_green" ;;
  esac
  local _c_host
  case "$HOSTNAME" in
    WS02) _c_host="$_c_blue" ;;
    *)
      if [ "$ENV_WORKING" != "$ENV_ACCESS" ]; then
        _c_host="$_c_cyan"
      else
        _c_host="$_c_green"
      fi
      ;;
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
case "${TERM}" in
kterm*|xterm*|)
  precmd() {
    echo -ne "\033]0;${USER}@${HOST%%.*}[$PWD]\007"
  }
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


# FUNCTIONS #{{{1
# chwpd {{{2
# auto ls
# http://qiita.com/yuyuchu3333/items/b10542db482c3ac8b059
chpwd(){
  ls_abbrev
}

ls_abbrev() {
  if [[ ! -r $PWD ]]; then
    return
  fi
  # -a : Do not ignore entries starting with ..
  # -C : Force multi-column output.
  # -F : Append indicator (one of */=>@|) to entries.
  local cmd_ls='ls'
  local -a opt_ls
  opt_ls=('-aCF' '--color=always')
  case "${OSTYPE}" in
    freebsd*|darwin*)
      if type gls > /dev/null 2>&1; then
        cmd_ls='gls'
      else
        # -G : Enable colorized output.
        opt_ls=('-aCFG')
      fi
      ;;
  esac

  local ls_result
  ls_result=$(CLICOLOR_FORCE=1 COLUMNS=$COLUMNS command $cmd_ls ${opt_ls[@]} | sed $'/^\e\[[0-9;]*m$/d')

  local ls_lines=$(echo "$ls_result" | wc -l | tr -d ' ')

  if [ $ls_lines -gt 10 ]; then
    echo "$ls_result" | head -n 5
    echo '...'
    echo "$ls_result" | tail -n 5
    echo "$(command ls -1 -A | wc -l | tr -d ' ') files exist"
  else
    echo "$ls_result"
  fi
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


# END #{{{1
# vim:expandtab
# vim:ft=zsh


