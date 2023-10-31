sudo apt install -y kitty
sudo apt install -y tmux 
sudo apt install -y zsh 
sudo apt install -y flatpak
sudo apt install -y stow 
sudo apt install -y nvim
sudo apt install -y neofetch 
sudo apt install -y fzf 
sudo apt install -y openconnect 
sudo apt install -y pavucontrol 
sudo apt install -y ripgrep
sudo apt install -y gcc
sudo apt install -y curl
sudo apt install -y cargo
sudo apt install -y newsboat 
sudo apt install -y docker.io

wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg

echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list

sudo apt update && sudo apt install codium


sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"


sudo rsync -aW ./etc/ /etc

# reload rules
sudo systemd-hwdb update && sudo udevadm trigger

