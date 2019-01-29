# Path to your oh-my-zsh installation.
case `uname` in
  Darwin)
    
    export ZSH=/Users/lee/.oh-my-zsh
    
    # Virtualenv
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
    
    ;;
  Linux)
  
    export ZSH=/home/lee/.oh-my-zsh
    
    ;;
esac

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

transfer() { if [ $# -eq 0 ]; then echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; } 

source $ZSH/oh-my-zsh.sh
