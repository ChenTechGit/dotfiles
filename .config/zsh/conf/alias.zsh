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
alias vi="nvim"
alias vim="nvim"
alias nvm="nvim"
# Git
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gcam="git commit -a -m"
alias gl="git log"
alias grb="git rebase"
alias grbir="git rebase -i --root"
alias gcl="git clone"
alias gsw="git switch"
alias gswc="git switch -c"
alias gb="git branch"
alias gm="git merge"
alias gr="git restore"
alias gp="git push"
alias gpa="git push -u --all"
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
