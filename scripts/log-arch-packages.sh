#!/bin/bash
su - fk -c "pacman -Qqem > /home/fk/.dotfiles/packages/arch-aur"
su - fk -c "pacman -Qqen | rg '^ttf-|^otf-' > /home/fk/.dotfiles/packages/arch-fonts"
su - fk -c "pacman -Qqen | rg -v '^ttf-|^otf-' > /home/fk/.dotfiles/packages/arch-core"

BASE="/home/fk/.dotfiles/"
cd $BASE
cd $BASE && git add packages/.
su - fk -c "cd $BASE && git commit -m '[AUTO] updated packages'"
su - fk -c "cd $BASE && git push"

# TODO auto commit the 3 files after running