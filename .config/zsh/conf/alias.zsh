#################
###  ALIASES ###
#################

# Aliases
alias rloadrc="source ~/.zshrc"
alias crloadrc="clear; source ~/.zshrc"
# Ls
alias eza="eza --color=always --git --icons=always"
alias ls="eza"
alias ll="eza -lh"
alias lla="eza -lha"
alias tree="eza --tree"
# Neovim
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias nvm="nvim"
alias vs="nvim src/main.rs" # Edit Cargo source code file
# Git
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gca="git commit -a -m"
alias gl="git log"
alias gd="git diff"
alias gcl="git clone"
alias gsw="git switch"
alias gswc="git switch -c"
alias gb="git branch"
alias gm="git merge"
alias gr="git restore"
alias gp="git push"
alias gpa="git push --all"
# Other
alias unimatrix="unimatrix -s 95"

## COLORIZE OUTPUTS ##
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep"fgrep --color=auto"
alias lcat="lolcat"
# Custom
alias type="source ~/.local/bin/type"
alias pwd="~/.local/bin/pwd"
