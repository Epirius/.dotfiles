#!/bin/bash
pacman -Qqem > ~/.dotfiles/packages/arch-aur
pacman -Qqen | rg '^ttf-|^otf-' > ~/.dotfiles/packages/arch-fonts
pacman -Qqen | rg -v '^ttf-|^otf-' > ~/.dotfiles/packages/arch-core

