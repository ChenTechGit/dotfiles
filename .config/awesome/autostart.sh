#!/bin/bash
sleep 0.1; nitrogen --restore &                         # Restore Nitrogen wallpaper
picom --experimental-backend &                          # Start Picom
emacs --daemon                                          # Start the Emacs daemon
flameshot                                               # Start Flameshot
xautolock -time 120 -locker 'systemctl suspend' &       # Suspend the system when the user is inactive for 2 hours
