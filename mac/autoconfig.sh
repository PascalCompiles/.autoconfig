#!/bin/sh

# Note: Prior to running this script make sure the command line developer tools are installed on the machine.

/bin/sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"


# Add Homebrew custom taps

brew tap mongodb/brew

homebrew_formulae=(
  "bat"
  "chruby"
  "cmake"
  "cmatrix"
  "cmus"
  "cocoapods"
  "composer"
  "cowsay"
  "docker"
  "emacs"
  "fastmod"
  "fortune"
  "fzf"
  "gdb"
  "gnupg"
  "go"
  "graphviz"
  "htop"
  "lolcat"
  "mongodb-community"
  "mono"
  "mutt"
  "mysql"
  "ncdu"
  "ncurses"
  "neofetch"
  "neovim"
  "nethack"
  "newsboat"
  "node"
  "notmuch"
  "nuget"
  "p7zip"
  "perl"
  "pipenv"
  "pyenv"
  "ranger"
  "readline"
  "reattach-to-user-namespace"
  "sqlite"
  "stow"
  "telnet"
  "tldr"
  "tmux"
  "tor"
  "torsocks"
  "tree"
  "unrar"
  "weechat"
  "wget"
  "whalebrew"
  "xmp"
  "youtube-dl"
  "zsh"
)

brew install ${homebrew_formulae[@]}

homebrew_casks=(
  "alacritty"
  "android-platform-tools"
  "chromedriver"
  "chromium"
  "karabiner-elements"
  "ngrok"
  "vscodium"
  "ubersicht"
)

brew cask install ${homebrew_casks[@]}


cd $HOME
rm .zshrc #remove zsh file that got automatically added.
git clone --recursive https://github.com/PascalCompiles/dotfiles.git
cd dotfiles
git checkout mac
ls -d */ | tr -d "/" | xargs stow
$(brew --prefix)/opt/fzf/install
