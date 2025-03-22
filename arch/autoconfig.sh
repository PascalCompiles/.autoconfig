sudo sed -i '/^#\ Misc\ options*/ a\
ILoveCandy
  ' /etc/pacman.conf

# Install pacman packages

# uncomment for systems needing acpi
#pacman -S acpi
#pacman -S acpid
pacman -S cmake
pacman -S cmus
pacman -S composer
pacman -S coreutils
pacman -S cowsay
pacman -S cpupower
pacman -S curl
pacman -S docker
pacman -S docker-compose
pacman -S dosbox
pacman -S evemu
pacman -S evtest
pacman -S exfat-utils
pacman -S feh
pacman -S flatpak
pacman -S fluidsynth
pacman -S fzf
pacman -S gawk
pacman -S gcc
pacman -S geoclue
pacman -S gimp
pacman -S graphviz
pacman -S htop
pacman -S i3-wm
pacman -S imagemagick
pacman -S jq
pacman -S kitty
pacman -S kubectl
pacman -S minikube
pacman -S mono
pacman -S mpv
pacman -S mutt
pacman -S ncdu
pacman -S neofetch
pacman -S neovim
pacman -S nerd-fonts-complete
pacman -S network-manager-applet
pacman -S networkmanager
pacman -S newsboat
pacman -S nfs-utils
pacman -S nmap
pacman -S noto-fonts
pacman -S pandoc
pacman -S pass
pacman -S pavucontrol
pacman -S php
pacman -S pinentry
pacman -S pipewire
pacman -S pipewire-alsa
pacman -S pipewire-audio
pacman -S pipewire-media-session
pacman -S pipewire-pulse
pacman -S redshift
pacman -S ripgrep
pacman -S rofi
pacman -S rofi-dmenu
pacman -S vlc
pacman -S youtube-dl
pacman -S zathura
pacman -S slurp

# make sure acpid is enabled as a service on systems that need it
#systemctl enable acpid.service 

# Packages using yay
yay -S jellyfin-bin
yay -S vscodium-bin
yay -S ungoogled-chromium-bin
yay -S vlc-plugin-fluidsynth-bin
yay -S oh-my-zsh-git
yay -S nodejs-n


sudo rsync -aW ./etc/ /etc
sudo rsync -aW ./usr/ /usr

# reload rules
sudo systemd-hwdb update && sudo udevadm trigger
sudo udevadm control --reload-rules 
