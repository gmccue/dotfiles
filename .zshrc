ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ys"
DISABLE_LS_COLORS="true"

plugins=(autojump brew bundler docker gem gulp npm node osx web-search)

export EDITOR='mvim'
export PATH="/usr/local/sbin:$PATH"

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# autocorrect is more annoying than helpful
unsetopt correct_all

# add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"

source $ZSH/oh-my-zsh.sh
