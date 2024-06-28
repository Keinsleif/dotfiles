#!/bin/bash

dotfiles=(".zshrc" ".p10k.zsh" ".cargo/config.toml" ".config/rsgain/presets/SBS.ini" ".gitconfig" ".nanorc" ".config/sheldon/plugins.toml")

mkdir -pv ~/.cargo
mkdir -pv ~/.config/rsgain/presets
mkdir -pv ~/.config/sheldon

for file in "${dotfiles[@]}"; do
        ln -svf ~/dotfiles/$file ~/$file
done
