#!/bin/bash

# bash
mv "$HOME/.bashrc" "$HOME/.bashrc_bu$EPOCHSECONDS"
mv "$HOME/.bash_aliases" "$HOME/.bash_aliases_bu$EPOCHSECONDS"
mv "$HOME/.bash_profile" "$HOME/.bash_profile_bu$EPOCHSECONDS"

stow --stow bash nvim tmux 
