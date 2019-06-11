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
alias gad="git add"
alias gcm="git commit -m"
alias gcb="git checkout -b"
alias gco="git checkout"
alias editrc="vim ~/.zshrc"
alias sourcerc="source ~/.zshrc"
alias dc="docker-compose"
alias gs="git status"

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export TERM=xterm-256color
export NPM_TOKEN=""