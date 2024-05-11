#!/bin/bash

dotfiles=(".zshrc" ".p10k.zsh")

for file in "${dotfiles[@]}"; do
        ln -sv dotfiles/$file ~/
done
