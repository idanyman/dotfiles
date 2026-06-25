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
  zsh-fzf-history-search
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias editrc="vim ~/.zshrc"
alias sourcerc="source ~/.zshrc"
# alias 1pass="eval $(op signin --account mentimeter.1password.com)"
## Git
alias gad="git add"
alias gcm="git commit -m"
alias gco="git checkout"
alias gs="git status -u"
alias master="gco main && ggpull && git fetch -p"
## Docker
alias dc="docker-compose"
alias rma_containers="docker rm -f $(docker ps -a -q)"
alias rma_images="docker rmi -f $(docker images -q)"
# Vim
#alias vim="neovide --multigrid"
# Linkup
alias lup="linkup start"
alias ldown="linkup stop"
alias lres="linkup stop && linkup start"
alias lst="linkup status"
alias llv="linkup route local voting"
alias lrv="linkup route remote voting"
alias lle="linkup route local editor"
alias lre="linkup route remote editor"
alias lld="linkup route local dashboard"
alias lrd="linkup route remote dashboard"
alias llc="linkup route local core"
alias lrc="linkup route remote core"
alias llq="linkup route local quiz"
alias lrq="linkup route remote quiz"
alias llt="linkup route local tracking"
alias lrt="linkup route remote tracking"
#alias ll="linkup local --"
#alias lr="linkup remote --"
# mm-js
alias votingdev="yarn && yarn workspace voting dev"
alias editordev="yarn && yarn workspace editor dev"
alias dashboarddev="yarn && yarn workspace dashboard dev"
alias contentdev="yarn && yarn workspace content dev"
alias quizdev="yarn && yarn workspace quiz dev"

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
eval "$(/opt/homebrew/bin/brew shellenv)"
# start Mentimeter's osx-setup
eval "$(rbenv init -)"
eval "$(nodenv init -)"
# end Mentimeter's osx-setup

 # Export turbo token
 export TURBO_TOKEN=6UAYAgUCoNmH@ufGyqnmX

 # Export linkup config
 export LINKUP_CONFIG=/Users/ida.nyman/dev/mm-js/linkup-config.yaml

# Export linkup local dns cloudflare api key
export LINKUP_CF_API_TOKEN=pV6_XPS_m60bUExRrh7R6Nh2QrA4yHtgK8QWM6SW
export LINKUP_CERT_STORAGE_REDIS_URL=redis://default:H7ZLRRGiF8GCmLIHEj3NXhq9cfYT0qpm@redis-13271.c77.eu-west-1-1.ec2.cloud.redislabs.com:13271

eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_rsa

# bun completions
[ -s "/Users/ida.nyman/.bun/_bun" ] && source "/Users/ida.nyman/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export LINKUP_CLOUDFLARE_ACCOUNT_ID=a48331bc8d43f256514f70a8a93606bb
export PATH="/Applications/Postgres.app/Contents/Versions/16/bin:$PATH"

# start Mentimeter's osx-setup
eval "$(rbenv init -)"
eval "$(nodenv init -)"
# eval "$(fnm env --use-on-cd --shell zsh)"
# end Mentimeter's osx-setup

# enable chruby
# source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
# source /opt/homebrew/opt/chruby/share/chruby/auto.sh
# chruby ruby-3.3.4

export LINKUP_CLOUDFLARE_ZONE_ID=e8c1a493715235296f1b9652ae34ec6c

# fnm
#FNM_PATH="/opt/homebrew/opt/fnm/bin"
#if [ -d "$FNM_PATH" ]; then
#  eval "`fnm env`"
#if

source <(menti activate)
