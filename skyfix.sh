#!/bin/bash
# Bash Menu Script Example
export PS3=$'\e[01;31mPick one dumbass!: \e[0m'
options=("Fix Gallium please!" "Nevermind.")
select opt in "${options[@]}"
do
    case $opt in
	   "Fix Gallium please!")
            echo -e "\e[36mRunning code now!\e[0m"
	    sudo blkid -s UUID -o value /dev/mmcblk0p8
	    echo -e "\e[32mSuccess, automatically rebooting in 5\e[0m"
	    sleep 2 
	    echo -e "\e[32m4..\e[0m"
	    sleep 2
	    echo -e "\e[32m3..\e[0m"
	    sleep 2
	    echo -e "\e[32m2..\e[0m"
	    sleep 2
	    echo -e "\e[32m1..\e[0m"
	    sleep 2
	    echo -e "\e[36mREBOOTING\e[0m"
	    sleep 2
	    sudo reboot
            ;;
         "Nevermind.")
          echo -e "\e[32mFarewell, Father... :c\e[0m"
	    sleep 2 
	    echo -e "\e[32mSee you soon...\e[0m"
	    sleep 2
	    echo -e "\e[32mcome back again....\e[0m"
	    sleep 2
            exit
	    ;;
        *) echo "invalid option $REPLY";;
    esac
done
