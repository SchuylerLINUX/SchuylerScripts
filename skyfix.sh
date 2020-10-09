#!/bin/bash
# Bash Menu Script Example
PS3='Pick one nigga hurry'
options=("Fix Gallium please!" "Reboot")
select opt in "${options[@]}"
do
    case $opt in
	   "Fix Gallium please!")
            echo -e "\e[36mRunning code now!\e[0m"
	    sudo blkid -s UUID -o value /dev/mmcblk0p8
	    echo -e "\e[32mSuccess you may now reboot your device.\e[0m"
            ;;
        "Reboot")
            sudo reboot
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
