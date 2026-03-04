#!/usr/bin/env bash

# Power menu script for Hyprland using wofi
# This script provides a GTK-themed power menu with options for shutdown, reboot, logout, etc.

option1="  Shutdown"
option2="  Reboot"
option3="  Logout"
option4="  Suspend"
option5="  Lock"

options="$option1\n$option2\n$option3\n$option4\n$option5"

chosen="$(echo -e "$options" | wofi --dmenu \
    --prompt "Power Menu" \
    --width 250 \
    --height 220 \
    --cache-file /dev/null \
    --hide-scroll \
    --no-actions \
    --matching=contains \
    --insensitive)"

case $chosen in
    $option1)
        systemctl poweroff
        ;;
    $option2)
        systemctl reboot
        ;;
    $option3)
        hyprctl dispatch exit
        ;;
    $option4)
        systemctl suspend
        ;;
    $option5)
        # You can replace this with your lock command (e.g., swaylock, hyprlock)
        pidof hyprlock || hyprlock
        ;;
esac
