### QT ###
export QT_QPA_PLATFORMTHEME="qt5ct"

### FCITX5 ###
# export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export XMODIFIERS="@im=fcitx"

### DESKTOP (Hyprland UWSM) ###
# NOTE: Only starts on TTY1
if [[ "$(tty)" == "/dev/tty1" ]] && uwsm check may-start; then
    echo "\033[1;32mLogin successful, starting Hyprland (UWSM).\033[0m"
    exec uwsm start hyprland-uwsm.desktop
fi
