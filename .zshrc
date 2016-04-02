export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git brew coffee docker fasd github git-extras history node npm osx sublime themes)
source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/tcoats/.gocode/bin"
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='subl -w'
fi

command_exists () {
  type "$1" &> /dev/null ;
}

source ~/.nvm/nvm.sh

if [ -f ~/.profile-metocean ]; then
  source ~/.profile-metocean
fi

if [ -f ~/.profile-osx ]; then
  source ~/.profile-osx
fi

if command_exists docker-machine; then
  eval "$(docker-machine env dev)"
fi

if command_exists keychain; then
  eval `keychain --eval assetaltitude_rsa`
fi

