#!/bin/bash

# Path to the dotfiles repo
DOT=$(dirname "$(readlink -f "$0")")

# ~
ln -s $DOT/terminal/.zshrc ~/.zshrc
ln -s $DOT/terminal/.p10k.zsh ~/.p10k.zsh
ln -s $DOT/.gitconfig ~/.gitconfig

# ~/.config 
mkdir -p ~/.config
ln -s $DOT/nvim ~/.config/nvim
ln -s $DOT/hyprland/gtklock ~/.config/gtklock

# ~/.config/hypr 
mkdir -p ~/.config/hypr
ln -s $DOT/hyprland/hyprland.conf ~/.config/hypr/hyprland.conf

# ~/.config/waybar
mkdir -p ~/.config/waybar
ln -s $DOT/waybar/config ~/.config/waybar/config
ln -s $DOT/waybar/style.css ~/.config/waybar/style.css

# ~/.config/kitty
mkdir -p ~/.config/kitty
ln -s $DOT/terminal/kitty.conf ~/.config/kitty/kitty.conf

# /etc/pacman.d/hooks
sudo mkdir -p /etch/pacman.d/hooks
sudo ln -s $DOT/pacman/log-packages.hook /etc/pacman.d/hooks/log-packages.hook