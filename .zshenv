#!/bin/zsh
export XDG_CONFIG_HOME="$HOME/.config"      # Use $HOME/.config as config directory
export TERM="xterm-256color"                # Getting proper colors
export EDITOR="nvim"                        # Use Neovim as text editor in terminal
export VISUAL="nvim"                        # Use Neovim as text editor in GUI
export MANPAGER="sh -c 'col -bx | bat -l man -p'"                      # Use Bat as manpager
export HISTFILE="$HOME/.zsh_history"        # Store history in $HOME/.zsh_history
export HISTSIZE=10000                       # Use a history size of 1000
export SAVEHIST=10000                       # Use a history size of 1000

### GTK theme ###
export GTK_THEME=Tokyonight-Dark # Use Tokyonight-Dark as GTK theme
