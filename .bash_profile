#!/bin/bash
export XDG_CONFIG_HOME="$HOME/.config"                                 # Use $HOME/.config as config directory
export TERM="xterm-256color"                                           # Getting proper colors
export EDITOR="nvim"                                                   # Use Neovim as text editor in terminal
export VISUAL="nvim"                                                   # Use Neovim as text editor in GUI
export MANPAGER="sh -c 'col -bx | bat -l man -p'"                      # Use Bat as manpager

### GTK theme ###
export GTK_THEME=Tokyonight-Dark # Use Tokyonight-Dark as GTK theme
