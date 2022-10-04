export PATH=/usr/local/bin:$PATH

export ZSH_DISABLE_COMPFIX=true

# Path to oh-my-zsh installation.
export ZSH=/Users/inyman/.oh-my-zsh

# Zsh Auto-suggestions plugin
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="cloud"

plugins=(
  git
  thefuck
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias editrc="vim ~/.zshrc"
alias sourcerc="source ~/.zshrc"
#alias dc="docker-compose"
## Git
alias gad="git add"
alias gcm="git commit -m"
alias gco="git checkout"
alias gs="git status -uno"
alias master="gco master && ggpull && git fetch -p"
## Docker
#alias dc="docker-compose"
#alias rma_containers="docker rm -f $(docker ps -a -q)"
#alias rma_images="docker rmi -f $(docker images -q)"
# Vim
#alias vim="neovide --multigrid"

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export TERM=xterm-256color
export NPM_TOKEN=""
