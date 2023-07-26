# Autoconfig

This repo is a collection of my personal auto configuration scripts, each folder in the parent directory contains the name of a specific OS/distribution. Inside each folder is an autoconfig.sh script to be executed on that specific operating system along with my any custom scripts that help with functionality. 

Each folder in the parent folder represents a different OS, simply run the autoconfig.sh script in the folder for your given OS to install most of the required files.


## Clone the repo

As this repo uses submodules make sure to clone with the `--recursive` flag

`sudo git clone --recursive https://github.com/PascalCompiles/.autoconfig.git`

## Run the autoconfig script

Pick the desired operating system and run `autoconfig.sh` 

e.g. `./autoconfig/arch/autoconfig.sh`

## Dotfiles

You have the freedom to pick and chose what you want on your system.

### Requirements
For easy deployment use [GNU Stow](https://www.gnu.org/software/stow/).

### Usage 

Pick and stow desired files individually

```
cd dotfiles
stow <foldername> -t ~/
```

For all files

```
cd dotfiles
ls | xargs stow -t ~/
```

### Adding plugins

If a plugin/extension is associated to a dotfile, it will be loaded via git's submodules feature

```
git submodule add <repository>
git submodule init
git submodule update
```

### Troubleshooting
Some of the projects/repos that are linked as git submodules may have dependencies or configurations not covered by this repo. If you run into any issues, please refer to their README.md

### License
This repo contains other projects/repos linked as git submodules that carry their own license.
