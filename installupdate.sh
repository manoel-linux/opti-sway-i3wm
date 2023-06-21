#!/bin/bash

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
echo "ERROR! Superuser privileges or sudo required to execute the script." 
echo "#################################################################"
exit 1
fi

sudo rm /usr/bin/opti-sway-wayland

sudo cp opti-sway-wayland /usr/bin/

sudo chmod +x /usr/bin/opti-sway-wayland

echo "DONE! Installation/Update completed."
echo "#################################################################"
echo "To use opti-sway-wayland, execute the following command: opti-sway-wayland"
echo "#################################################################"
