#!/usr/bin/env sh
# From the Hyprland wiki: https://wiki.hypr.land/Configuring/Uncommon-tips--tricks/#toggle-animationsbluretc-hotkey
HYPRGAMEMODE=$(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')
FONTSIZE="fontsize:15"
MSG_DURATION="5000"

if [ "$HYPRGAMEMODE" = 1 ] ; then
    hyprctl --batch "\
        keyword animations:enabled 0;\
        keyword animation borderangle,0; \
        keyword decoration:shadow:enabled 0;\
        keyword decoration:blur:enabled 0;\
	    keyword decoration:fullscreen_opacity 1;\
        keyword general:gaps_in 0;\
        keyword general:gaps_out 0;\
        keyword general:border_size 1;\
        keyword decoration:rounding 0"
    hyprctl notify 1 $MSG_DURATION "rgb(40a02b)" "$FONTSIZE Gamemode [ON]"
    exit
else
    hyprctl notify 1 $MSG_DURATION "rgb(d20f39)" "$FONTSIZE Gamemode [OFF]"
    hyprctl reload
    exit 0
fi
exit 1
