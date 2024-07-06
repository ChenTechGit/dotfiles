#
# /--------\  Chen Tech
# |  /---  |  Youtube: https://www.youtube.com/channel/UCpei9H0N35jQ8_TFSEGzBDA
# |  |     |  Github: https://github.com/kevinyyca
# |  \---  |
# \________/

### EXPORT ###
export TERM="xterm-256color"        # Getting proper colors
export HISTSIZE=10000               # Use a history size of 1000
export EDITOR="nvim"                # Use Neovim as text editor in terminal
export VISUAL="nvim"                # Use Neovim as text editor in GUI

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
# Locate
alias locate="locate | grep -v /timeshift"
alias locatea="/usr/bin/locate"
# Other
alias unimatrix="unimatrix -s 95"
alias emacs="emacsclient -c -a 'emacs'"

### COLORIZE OUTPUTS ###
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias cat='bat'
alias lcat="lolcat"

### EVAL ###
eval "$(starship init bash)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(zoxide init --cmd cd bash)"
eval "$(fzf --bash)"
eval $(thefuck --alias)
eval $(thefuck --alias fk)

### FZF ###
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"

export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo \${}'"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "$show_file_or_dir_preview" "$@" ;;
  esac
}

source ~/fzf-git.sh/fzf-git.sh

### Bat (Better cat) ###
export BAT_THEME=tokyonight_night

### START UP COMMANDS ###
fastfetch
