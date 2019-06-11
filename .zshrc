export PATH=/usr/local/bin:$PATH

export ZSH_DISABLE_COMPFIX=true

# Path to oh-my-zsh installation.
export ZSH=/Users/ida.nyman/.oh-my-zsh

# Zsh Auto-suggestions plugin
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="cloud"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Aliases
alias dc="docker-compose"
alias editrc="vim ~/.zshrc"
alias gad="git add"
alias gcb="git checkout -b"
alias gcm="git commit -m"
alias gco="git checkout"
alias gs="git status"
alias rma_containers="docker rm -f $(docker ps -a -q)"
alias rma_images="docker rmi -f $(docker images -q)"
alias sourcerc="source ~/.zshrc"

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export TERM=xterm-256color
export NPM_TOKEN=""