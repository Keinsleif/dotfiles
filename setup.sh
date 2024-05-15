#!/bin/bash

dotfiles=(".zshrc" ".p10k.zsh" ".cargo/config.toml")

for file in "${dotfiles[@]}"; do
        ln -svf ~/dotfiles/$file ~/$file
done
