# Path to your oh-my-zsh installation.
export ZSH=/Users/lee/.oh-my-zsh

bindkey -e
bindkey '[C' forward-word
bindkey '[D' backward-word

ZSH_THEME="agnoster"

ENABLE_CORRECTION="true"

plugins=(git brew zsh-autosuggestions sudo)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
