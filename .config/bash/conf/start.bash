###########################
###  START UP COMMANDS ###
###########################

# Section: Fastfetch
{
  # Chose which Fastfetch config to use.
  config="default"
  # config="compact"
  if [[ "$config" == "default" ]]; then
    fastfetch
  elif [[ "$config" == "compact" ]]; then
    fastfetch -c ~/.config/fastfetch/compact.jsonc
  else
    echo -e "\033[1;31m Error: invalid config value \"$config\" in \033[4m$HOME/.config/bash/conf/start.bash line 8\033[0m"
    echo -e "\033[1;31m(While trying to start Fastfetch)\033[0m"
  fi
}
