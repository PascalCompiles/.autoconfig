###########
# Exports #
###########

cat $HOME/todo.txt

# oh-my-zsh location
export ZSH=/usr/share/oh-my-zsh

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

# go bin folder
export PATH="$PATH:$HOME/go/bin"

# rust folder
export PATH="$PATH:$HOME/.cargo/bin"

# n version manager
export N_PREFIX="$HOME/.n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

export AWS_PROFILE=default              

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

# Easy screenshots in Wayland.
alias screenshot="slurp | grim -g - screenshot-$(echo $(date  --iso-8601=seconds)).png"

############
# Sourcing #
############

source $ZSH/oh-my-zsh.sh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

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


## Sway socket
#export SWAYSOCK=$( lsof /run/user/$(id -u)/sway-ipc.* 2>/dev/null | awk '{print $9}' | tail -n +2 | sort | uniq )

#export SWAYSOCK=$XDG_RUNTIME_DIR/sway-ipc.$UID.$(pgrep -x sway).sock

# Created by `pipx` on 2024-10-27 06:38:23
export PATH="$PATH:/home/pascal/.local/bin"

export LC_ALL="en_US.UTF-8"

#if [[ -v TMUX ]]; then
#    # inside tmux, we don't know if Sway got restarted
#    swaymsg(){
#        export SWAYSOCK=$XDG_RUNTIME_DIR/sway-ipc.$UID.$(pgrep -x sway).sock
#        command swaymsg "$@"
#    }
#fi
