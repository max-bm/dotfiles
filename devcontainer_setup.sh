#! /bin/zsh
sudo apt-get update
sudo apt-get install -y vim
sudo apt-get install -y neovim
sudo rm ~/.config/nvim
sudo ln -s ~/dotfiles/nvim ~/.config/nvim
