#!/bin/bash

# bash
mv "$HOME/.bashrc" "$HOME/.bashrc_bu$EPOCH"
mv "$HOME/.bash_aliases" "$HOME/.bash_aliases_bu$EPOCH"
mv "$HOME/.bash_profile" "$HOME/.bash_profile_bu$EPOCH"

stow --stow bash nvim tmux 
