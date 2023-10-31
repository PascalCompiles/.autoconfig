###########
# Exports #
###########


# use bat to preview
export FZF_CTRL_T_OPTS="--preview 'bat --color=always {}'"

# ssh configs
export SSH_KEY_PATH="~/.ssh/rsa_id"

# bin folder
export PATH=$PATH:$HOME/bin

# android platform tools install via sdkmanager
export PATH=$PATH:/opt/android-sdk/platform-tools

# telemetry opt-outs
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export SAM_CLI_TELEMETRY=0

# composer vendor bin directory 
export PATH="$PATH:$HOME/.config/composer/vendor/bin"

# Add cargo apps
export PATH=$PATH:$HOME/.cargo/bin

# go bin folder
export PATH="$PATH:$HOME/go/bin"


# enable pass extensions
export PASSWORD_STORE_ENABLE_EXTENSIONS=true


# testing gpg
#GPG_TTY=$(tty)
#export GPG_TTY

#########
# Theme #
#########

ZSH_THEME="bureau"

###########
# Plugins #
###########

plugins=(git)


###########
# Aliases #
###########

# required for sudo to work with aliases
alias sudo='sudo '

# for webpack-cli to simply be "webpack"
alias webpack="webpack-cli"

# weather
alias weather='curl http://www.wttr.in/Vancouver'

# bitcoin 
alias bitcoin='curl http://www.rate.sx/btc'

# dogecoin
alias doge='curl http://www.rate.sx/doge'

# nvim 
alias vim="nvim"
alias vi="nvim"

# pacman
alias pacman="sudo pacman"

# open files quickly 
alias open="setsid -f xdg-open"

############
# Sourcing #
############

source $HOME/.oh-my-zsh/oh-my-zsh.sh
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh

# source chruby and set the latest version of ruby installed via ruby-install.
#source /usr/share/chruby/chruby.sh
#chruby $(chruby | tail -n 1 | sed 's/\([\ ][\*]*\)//g')

########
# Misc #
########

# tmux
if [[ ! $(ps -e | grep tmux) ]] && [[ "$TMUX" = "" ]]; then tmux new -s main; else fi

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

export N_PREFIX="$HOME/.n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
export PATH="/home/pascal/.local/bin:$PATH"
