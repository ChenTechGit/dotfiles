#########################
###  BASH COMPLETION ###
#########################

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

if [ -f /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/bash_completion
fi
