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

# Add my software area
[ -d $HOME/software ] && export PATH=$HOME/software/bin:$PATH

# must press ctrl-D 2+1 times to exit shell
export IGNOREEOF="2"

export EDITOR=vi
export VISUAL=${EDITOR} #Needed by cron apparently

#export CXX="ccache g++"
export CCACHE_DIR="${HOME}/tmp/.ccache"

# history
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend
export PROMPT_COMMAND="history -a; history -n"

#eval `ssh-agent`

# python
export PYTHONSTARTUP=${HOME}/.pythonrc

# cvs stuff
alias cvs-status="cvs -q status | grep ^[?F] | grep -v \"to-date\""

# cms stuff
if [ -e /vols ]; then
  alias setup_cms=". /vols/cms/grid/setup.sh" # -arch=slc3_ia32_gcc323"
fi

# grid stuff
alias vomscms="voms-proxy-init -voms cms --valid 96:00"
alias vomscmsprod="voms-proxy-init -voms cms:/cms/Role=production --valid 96:00"
alias vomscmssw="voms-proxy-init -voms cms:/cms/Role=lcgadmin --valid 96:00"

# TODO: copy these locally as not all mchines have them
if [ -e /etc/bash_completion ]; then
  . /etc/bash_completion
elif [ -e /opt/local/etc/bash_completion ]; then
  . /opt/local/etc/bash_completion
fi
