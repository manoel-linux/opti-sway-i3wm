#!/bin/bash

clear

show_main_menu() {
while true; do
clear
echo "#################################################################"
echo "opti-sway-wayland-installer: june 2023"
echo "#################################################################"
echo " ███████ ██     ██  █████  ██    ██ "
echo " ██      ██     ██ ██   ██  ██  ██  "
echo " ███████ ██  █  ██ ███████   ████   "
echo "      ██ ██ ███ ██ ██   ██    ██    "
echo " ███████  ███ ███  ██   ██    ██    "                                                                                             
echo "#################################################################"
echo "opti-sway-wayland-github: https://github.com/manoel-linux/opti-sway-wayland"
echo "#################################################################"


if [[ $EUID -ne 0 ]]; then
echo " ███████ ██████  ██████   ██████  ██████  ██ "
echo " ██      ██   ██ ██   ██ ██    ██ ██   ██ ██ "
echo " █████   ██████  ██████  ██    ██ ██████  ██ "
echo " ██      ██   ██ ██   ██ ██    ██ ██   ██    "
echo " ███████ ██   ██ ██   ██  ██████  ██   ██ ██ "                                                                                        
echo "#################################################################"
echo "Superuser privileges or sudo required to execute the script." 
echo "#################################################################"
exit 1
fi

echo "(1)> (Install) the opti-sway-wayland version of Void-Linux"
echo "(2)> (Install) the opti-sway-wayland version of Ubuntu/Debian"
echo "(3)> (Install) the opti-sway-wayland version of Arch-Artix-Manjaro"
echo "(4)> (Exit)"
echo "#################################################################"

read -p "Enter your choice: " choice
echo "#################################################################"

case $choice in
1)
show_void-linux
;;
2)
show_ubuntu-debian
;;
3)
show_arch-artix-manjaro
;;
4)
exit 0
;;
*)
echo "Invalid choice. Please try again."
echo "#################################################################"
sleep 2
;;
esac
done
}

show_void-linux() {
while true; do
clear
echo "#################################################################"
echo "Checking for updates in Void Linux..." 
echo "#################################################################"
sudo xbps-install inetutils-ping -y
if ping -q -c 1 -W 1 voidlinux.org >/dev/null; then
echo "Internet connection established. It is possible to check for updates."
echo "#################################################################"

read -p "Do you want to update your system? (y/n): " choice
echo "#################################################################"
if [[ $choice == "y" || $choice == "Y" ]]; then
sudo xbps-install -Syu -y
else
echo "Skipping system update."
echo "#################################################################"
sudo xbps-install glxinfo unzip binutils tar curl xbps xz lm_sensors dialog xhost -y
fi
else
echo "#################################################################"
echo "No internet connection. Unable to check for updates Skipping."
fi
sudo rm /usr/bin/opti-sway-wayland

sudo cp opti-sway-wayland /usr/bin/

sudo chmod +x /usr/bin/opti-sway-wayland

echo " ██████   ██████  ███    ██ ███████ ██ "
echo " ██   ██ ██    ██ ████   ██ ██      ██ "
echo " ██   ██ ██    ██ ██ ██  ██ █████   ██ "
echo " ██   ██ ██    ██ ██  ██ ██ ██         "
echo " ██████   ██████  ██   ████ ███████ ██ "  
echo "#################################################################"
echo "Installation/Update completed."
echo "#################################################################"
echo "To use opti-sway-wayland, execute the following command: opti-sway-wayland"
echo "#################################################################"
read -rsn1 -p "press Enter to return to the main menu
#################################################################" key
if [[ $key == "r" || $key == "R" ]]; then
continue
fi

break
done

echo "#################################################################"
}

show_ubuntu-debian() {
while true; do
clear
echo "#################################################################"
echo "Checking for updates in Ubuntu/Debian..." 
echo "#################################################################"
sudo apt install inetutils-ping -y
if ping -q -c 1 -W 1 debian.org >/dev/null; then
echo "Internet connection established. It is possible to check for updates."
echo "#################################################################"

read -p "Do you want to update your system? (y/n): " choice
echo "#################################################################"
if [[ $choice == "y" || $choice == "Y" ]]; then
sudo apt update -y
sudo apt upgrade -y
else
echo "Skipping system update."
echo "#################################################################"
sudo apt install mesa-utils unzip binutils tar curl xz-utils usbutils grep gawk sed lm-sensors dialog -y
fi
else
echo "#################################################################"
echo "No internet connection. Unable to check for updates Skipping."
fi
sudo rm /usr/bin/opti-sway-wayland

sudo cp opti-sway-wayland /usr/bin/

sudo chmod +x /usr/bin/opti-sway-wayland

echo " ██████   ██████  ███    ██ ███████ ██ "
echo " ██   ██ ██    ██ ████   ██ ██      ██ "
echo " ██   ██ ██    ██ ██ ██  ██ █████   ██ "
echo " ██   ██ ██    ██ ██  ██ ██ ██         "
echo " ██████   ██████  ██   ████ ███████ ██ "  
echo "#################################################################"
echo "Installation/Update completed."
echo "#################################################################"
echo "To use opti-sway-wayland, execute the following command: opti-sway-wayland"
echo "#################################################################"
read -rsn1 -p "press Enter to return to the main menu
#################################################################" key
if [[ $key == "r" || $key == "R" ]]; then
continue
fi

break
done

echo "#################################################################"
}

show_arch-artix-manjaro() {
while true; do
clear
echo "#################################################################"
echo "Checking for updates in Arch/Artix/Manjaro..." 
echo "#################################################################"
sudo pacman -S iputils -y
if ping -q -c 1 -W 1 archlinux.org >/dev/null; then
echo "Internet connection established. It is possible to check for updates."
echo "#################################################################"

read -p "Do you want to update your system? (y/n): " choice
echo "#################################################################"
if [[ $choice == "y" || $choice == "Y" ]]; then
sudo pacman -Syu -y
else
echo "Skipping system update."
echo "#################################################################"
sudo pacman -S mesa-utils glxinfo mesa-demos glxinfo unzip binutils tar curl xz usbutils grep gawk sed lm_sensors dialog -y
fi
else
echo "#################################################################"
echo "No internet connection. Unable to check for updates Skipping."
fi
sudo rm /usr/bin/opti-sway-wayland

sudo cp opti-sway-wayland /usr/bin/

sudo chmod +x /usr/bin/opti-sway-wayland

echo " ██████   ██████  ███    ██ ███████ ██ "
echo " ██   ██ ██    ██ ████   ██ ██      ██ "
echo " ██   ██ ██    ██ ██ ██  ██ █████   ██ "
echo " ██   ██ ██    ██ ██  ██ ██ ██         "
echo " ██████   ██████  ██   ████ ███████ ██ "  
echo "#################################################################"
echo "Installation/Update completed."
echo "#################################################################"
echo "To use opti-sway-wayland, execute the following command: opti-sway-wayland"
echo "#################################################################"
read -rsn1 -p "press Enter to return to the main menu
#################################################################" key
if [[ $key == "r" || $key == "R" ]]; then
continue
fi

break
done

echo "#################################################################"
}

show_main_menu
