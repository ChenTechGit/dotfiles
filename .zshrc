#
# /--------\  Kevinyyca (Chen Tt)
# |  /---  |  Youtube: https://www.youtube.com/channel/UCpei9H0N35jQ8_TFSEGzBDA
# |  |     |  Github: https://github.com/kevinyyca
# |  \---  |
# \________/

### PLUGINS ###
ZSH=~/.zsh
source $ZSH/plugins/sudo/sudo.plugin.zsh                                    # Load sudo plugin
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh     # Load syntax highlighting plugin
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh             # Load zsh-autosuggestions plugin

### EXPORT ###
export TERM="xterm-256color"        # Getting proper colors
export EDITOR="nvim"                # Use Neovim as text editor in terminal
export VISUAL="nvim"                # Use Neovim as text editor in GUI

### HISTORY ###
export HISTFILE="$HOME/.zsh_history"        # Store history in $HOME/.zsh_history
export HISTSIZE=10000                       # Use a history size of 1000
export SAVEHIST=10000                       # Use a history size of 1000
setopt appendhistory                        # Enable history

### PATH ###
if [ -d "$HOME/.bin" ]; then
  PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi

### AUTOJUMP ###
if [ -f "/usr/share/autojump/autojump.sh" ]; then
	. /usr/share/autojump/autojump.sh
elif [ -f "/usr/share/autojump/autojump.bash" ]; then
	. /usr/share/autojump/autojump.bash
else
	echo "can't found the autojump script"
fi

### ALIASES ###
alias refresh="clear; source ~/.zshrc"
# Ls
alias ls="ls --color=auto"
alias ll="ls -lh"
alias lla="ls -lha"
alias tree="exa --tree"
# Neovim
alias vi="nvim"
alias vim="nvim"
alias nvm="nvim"
# Git
alias gstat="git status"
alias gadd="git add"
alias gcommit="git commit"
alias gcam="git commit -a -m"
alias glog="git log"
alias grebase="git rebase"
alias grebasei="git rebase -i --root"
alias gclone="git clone"
alias gswitch="git switch"
alias gswitchc="git switch -c"
alias gbranch="git branch"
alias gmerge="git merge"
alias grestore="git restore"
alias gpush="git push"
alias gpushu="git push -u"
alias gpushall="git push -u --all"
alias gpushtags="git push -u --tags"
# Other
alias unimatrix="unimatrix -s 95"
alias emacs="emacsclient -c -a 'emacs'"

### COLORIZE OUTPUTS ###
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep"fgrep --color=auto"
alias cat='batcat -p'
alias lcat="lolcat"

### EVAL ###
eval "$(starship init zsh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(zoxide init --cmd cd zsh)"

### START UP COMMANDS ###
neofetch | lolcat
