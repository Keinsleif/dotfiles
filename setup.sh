#!/bin/bash

dotfiles=(".zshrc" ".p10k.zsh" ".cargo/config.toml" ".config/rsgain/presets/SBS.ini" ".gitconfig" ".nanorc" ".config/sheldon/plugins.toml")

mkdir -pv ~/.cargo
mkdir -pv ~/.config/rsgain/presets
mkdir -pv ~/.config/sheldon

for file in "${dotfiles[@]}"; do
        ln -svf ~/dotfiles/$file ~/$file
done

# setup rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

source ~/.zshrc

curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash

cargo binstall sccache

# setup nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash

NVM_DIR=/root/.nvm
source $NVM_DIR/nvm.sh && nvm install --lts

# setup pnpm
curl -fsSL https://get.pnpm.io/install.sh | sh -
