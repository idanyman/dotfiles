# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=/usr/local/bin:$PATH

export ZSH_DISABLE_COMPFIX=true

# Path to oh-my-zsh installation.
export ZSH=/Users/ida.nyman/.oh-my-zsh

# Zsh Auto-suggestions plugin
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  thefuck
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias editrc="vim ~/.zshrc"
alias sourcerc="source ~/.zshrc"
## Git
alias gad="git add"
alias gcm="git commit -m"
alias gco="git checkout"
alias gs="git status -u"
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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export WORKSPACE="$HOME/dev"

export PATH=$PATH:/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin
