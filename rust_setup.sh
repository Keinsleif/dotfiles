#!/bin/bash

#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash


cargo binstall sccache
