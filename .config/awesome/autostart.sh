#!/bin/bash
sleep 0.1; feh --bg-tile ~/wallpapers/0057.jpg                      # Draw wallpaper
picom --experimental-backend &                                      # Start Picom
flameshot                                                           # Start Flameshot
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1      # Start Gnome Polkit
xautolock -time 120 -locker 'systemctl suspend; slock' &            # Suspend the system when the user is inactive for 2 hours
