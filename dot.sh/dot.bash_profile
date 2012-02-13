# My .bash_profile

# Language #{{{1
LANG=ja_JP.UTF-8
export LANG


# Path #{{{1
PATH="/usr/bin:/usr/sbin:/bin:/sbin"
MANPATH="/usr/local/man:/usr/share/man"
test -d /usr/local && PATH=/usr/local/bin:/usr/local/sbin:$PATH &&
  MANPATH=/usr/local/share/man:$MANPATH
test -d /usr/X11   && PATH=$PATH:/usr/X11/bin &&
  MANPATH=$MANPATH:/usr/X11/man:/usr/X11/share/man
test -d /opt       && PATH=/opt/local/bin:/opt/local/sbin:$PATH &&
  MANPATH=/opt/local/share/man:/opt/local/man:$MANPATH
export PATH
export MANPATH


# Editor #{{{1
if test -d ~/ws/usr/local/bin/vim/bin; then
  EDITOR=~/ws/usr/local/bin/vim/bin
  export EDITOR
else
  EDITOR=/usr/bin/cat;
  export EDITOR
fi


# Pager #{{{1
if test -x /opt/local/bin/lv; then
    PAGER=/opt/local/bin/lv; export PAGER
    LV="-E'$EDITOR +%d'"; export LV
else
    PAGER=/usr/bin/less; export PAGER
fi

if [ -f "$HOME/.bashrc" ]; then
  source $HOME/.bashrc
fi


# HISTORY #{{{1

HISTSIZE=50000  # History size at runtime
HISTFILESIZE=$HISTSIZE  # History size to save

# Don't save lines which are matched to these patterns:
# 1. Same as the previous line.
# 2. Starts with a whitespace.
HISTIGNORE='&: *'


# __ END __ #{{{1
# vim: fen:fdm=marker
# vim: ft=sh
