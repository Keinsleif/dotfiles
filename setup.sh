#!/bin/bash

dotfiles=(".zshrc" ".p10k.zsh" ".cargo/config.toml" ".config/rsgain/presets/SBS.ini" ".gitconfig" ".nanorc")

mkdir -pv ~/.cargo
mkdir -pv ~/.config/rsgain/presets

for file in "${dotfiles[@]}"; do
        ln -svf ~/dotfiles/$file ~/$file
done
