# Path to your oh-my-zsh installation.
export ZSH=/Users/lee/.oh-my-zsh

# Key bindings
bindkey -e
bindkey '[C' forward-word
bindkey '[D' backward-word

# Plugins & theme
plugins=(git brew zsh-autosuggestions zsh-syntax-highlighting)
ZSH_THEME="agnoster"

# Preferences
ENABLE_CORRECTION="true"
DEFAULT_USER=lee

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Virtualenv stuff
# set where virutal environments will live
export WORKON_HOME=$HOME/.virtualenvs
# ensure all new environments are isolated from the site-packages directory
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
# use the same directory for virtualenvs as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME
# makes pip detect an active virtualenv and install to it
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi
