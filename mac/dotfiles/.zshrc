###########
# Exports #
###########

# oh-my-zsh location
export ZSH=$HOME/.oh-my-zsh

# ssh configs
export SSH_KEY_PATH="~/.ssh/rsa_id"

# bin folder
export PATH=$PATH:$HOME/bin

# hombrew path
export PATH=$(brew --prefix)/sbin:$PATH

# pyenv
eval "$(pyenv init -)" 

# rbenv
eval "$(rbenv init -)"

# oni
export oni='/Applications/Oni.app'

# opt-out of vs code telemetry if it's installed.
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# use bat for preview
export FZF_CTRL_T_OPTS="--preview 'bat --color=always {}'"

#########
# Theme #
#########

ZSH_THEME="bureau"

###########
# Plugins #
###########

plugins=(git)

source $ZSH/oh-my-zsh.sh

###########
# Aliases #
###########

#required for sudo to work with aliases
alias sudo='sudo '

# for webpack-cli to simply be "webpack"
alias webpack="webpack-cli"

# weather
alias weather='curl http://www.wttr.in/Vancouver'

# btc
alias bitcoin='curl http://www.rate.sx/btc'

# nvim 
alias vim="nvim"
alias vi="nvim"

############
# Sourcing #
############
#
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

########
# Misc #
########

#tmux
if [ "$TMUX" = "" ]; then tmux; fi

#fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
