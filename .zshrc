if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="nanotech"

plugins=(
  git
  sudo
  z
)

source $ZSH/oh-my-zsh.sh

source $HOME/.aliases

neofetch
