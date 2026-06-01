#!/bin/zsh

dotfiles=(".zshrc" ".p10k.zsh" ".cargo/config.toml" ".config/rsgain/presets/SBS.ini" ".gitconfig" ".nanorc" ".config/sheldon/plugins.toml")

mkdir -pv ~/.cargo
mkdir -pv ~/.config/rsgain/presets
mkdir -pv ~/.config/sheldon

for file in "${dotfiles[@]}"; do
        ln -svf ~/dotfiles/$file ~/$file
done

# create .zsh_profile
touch ~/.zsh_profile

# setup mise
curl https://mise.run | sh
source ~/.zshrc

# setup rust
#mise use --global rust

#curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash

#cargo binstall sccache

# setup node
#mise use --global node@lts

# setup pnpm
#mise use --global pnpm@10

# setup zig
#mise use --global zig@latest
#mise use --global zls@latest
