# Put additional environment definitions here that you want
# to be invoked at login time.
#

# The following file is sourced for each new shell.
# Typical use is for alias definitions.  Keep it short.
#
if [ -r $HOME/.bashrc ]; then
  . $HOME/.bashrc
fi

# Need to bring this in for mac as this is where macports puts its path settings
# Source explicitly as .bash_profile causes .profile to be ignored
if [ -r $HOME/.profile ]; then
  . $HOME/.profile
fi

# Some sites - mentioning no names - mess up the backspace
if [ $(stty -a | grep erase | grep -c '^?') -eq 0 ]; then
  stty erase '^?'
fi 

# Add my software area
[ -d $HOME/software ] && export PATH=$HOME/software/bin:$PATH

# must press ctrl-D 2+1 times to exit shell
export IGNOREEOF="2"

export EDITOR=vim
export VISUAL=${EDITOR} #Needed by cron apparently

# history
export HISTSIZE=10000

#eval `ssh-agent`

# python
export PYTHONSTARTUP=${HOME}/.pythonrc

# cvs stuff
alias cvs-status="cvs -q status | grep ^[?F] | grep -v \"to-date\""

# TODO: copy these locally as not all mchines have them
if [ -e /etc/bash_completion ]; then
  . /etc/bash_completion
elif [ -e /opt/local/etc/bash_completion ]; then
  . /opt/local/etc/bash_completion
elif [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# autojump
if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi
