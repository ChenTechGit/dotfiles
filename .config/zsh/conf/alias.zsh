#################
###  ALIASES ###
#################

# LS
alias eza="eza --color=always --git --icons=always"
alias ls="eza"
alias ll="eza -lh"
alias lla="eza -lha"
alias tree="eza --tree"

# PARU
alias i="paru -S"
alias r="paru -Rns"
alias s="paru -Ss"
alias u="paru -Syu"
alias q="paru -Q"
alias qi="paru -Qi"

# FLATPAK
alias fp="flatpak"
alias fpi="flatpak install"
alias fpu="flatpak update"
alias fpr="flatpak uninstall"
alias fpre="flatpak repair"

# NEOVIM
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias nvm="nvim"

# GIT
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

# COLORIZE OUTPUTS
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep"fgrep --color=auto"
alias lcat="lolcat"

# CUSTOM
alias type="source ~/.local/bin/type"
alias pwd="~/.local/bin/pwd"

# UNIMATRIX (A better Cmatrix)
alias um="unimatrix -s 95"
alias unimatrix="unimatrix -s 95"
