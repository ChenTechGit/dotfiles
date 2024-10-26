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
  fi
}
