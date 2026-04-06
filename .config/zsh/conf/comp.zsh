########################
###  ZSH COMPLETION ###
########################

# autoload -Uz compinit
# autoload -Uz bashcompinit
# bashcompinit
autoload -Uz compinit bashcompinit
compinit
bashcompinit
source "/home/chen/.local/share/bash-completion/completions/appman"

zstyle ':completion*' menu select
