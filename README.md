# opti-sway-i3wm

- Use at your own risk

- Starting from version 0.0.1, executing opti-sway-i3wm as a superuser or with sudo privileges has been blocked. It can only be executed without superuser or sudo privileges

- From version 0.0.3 onwards, it now includes support for i3wm

- Support for the distro: Void Linux Ubuntu/Debian Arch/Artix/Manjaro

- opti-sway-i3wm-version: july 2023

- build-latest: 0.0.4

- opti-sway-i3wm is an open-source project, and we are happy to share it with the community. You have complete freedom to do whatever you want with opti-sway-i3wm, in accordance with the terms of the MIT license. You can modify, distribute, use it in your own projects, or even create a fork of opti-sway-i3wm to add additional features.

## Installation

- To install opti-sway-i3wm, follow the steps below:

# 1. Clone this repository by running the following command

- git clone https://github.com/manoel-linux/opti-sway-i3wm.git

# 2. To install the opti-sway-i3wm script, follow these steps

- chmod a+x `installupdate.sh`

- sudo `./installupdate.sh`

- When installing opti-sway-i3wm for the first time, you may encounter an error "`rm /usr/bin/opti-sway-i3wm`" if the file doesn't exist. This removal command is part of - - the update process, but during the initial installation, the opti-sway-i3wm file is not yet present in the `/usr/bin/` directory. Therefore, you can safely ignore -- this error as it will not affect the installation of opti-sway-i3wm. The script will proceed to copy the opti-sway-i3wm file to the `/usr/bin/` directory and set the ----- correct permissions.

# 3. Execute the opti-sway-i3wm script

- `opti-sway-i3wm`

# For uninstall

- chmod a+x `uninstall.sh`

- sudo `./uninstall.sh`

# Other Projects

- DEB2XBPS: A tool I developed based on the code of xdeb, specifically designed for Void Linux. DEB2XBPS enables the conversion of .deb packages to the .xbps   format used in Void Linux, simplifying package management in this distribution. You can find the source code and additional information about DEB2XBPS in the  following repository: https://github.com/manoel-linux/deb2xbps-shlibs-voidpackages. It is based on the xdeb.

- way-display-guard is a tool that can resolve a display:0 issue when attempting to run a program as a superuser or using "sudo." Remember to execute the way-display-guard every time you shut down or restart your PC. You can find the source code and more information about way-display-guard in the following repository: https://github.com/manoel-linux/way-display-guard

- The script-xanmod-installer-unofficial simplifies Xanmod kernel installation on Linux systems. It's not officially maintained by the Xanmod project, but provides a convenient option for users to experience Xanmod's features on their preferred distributions. Please note that it comes with no responsibility or warranty from the Xanmod project. You can find the source code and more information about install-uefi-in-qemu in the following repository: https://github.com/manoel-linux/script-xanmod-installer-unofficial

- opti-gnome-wayland is a powerful program aimed at optimizing the GNOME boot process and reducing memory usage, resulting in a lighter and more efficient GNOME  desktop environment. With this tool, you can enjoy a faster and more responsive experience when using GNOME, even on systems with limited resources. You can find the source code and more information about opti-gnome-wayland in the following repository: https://github.com/manoel-linux/opti-gnome-wayland

- The install-uefi-in-qemu script is a tool for installing QEMU UEFI when the UEFI BIOS is not included or available in the distribution's repository. You can find the source code and more information about install-uefi-in-qemu in the following repository: https://github.com/manoel-linux/install-uefi-in-qemu

- CPU-T A command-line tool that I developed from scratch. CPU-T provides detailed information about the CPU of your system, including CPU model, number of cores and threads, CPU frequency, supported instructions, memory information, disk information, network information, and more. It is a useful tool for system analysis and optimization. You can find the source code and more information about CPU-T in the following repository: https://github.com/manoel-linux/cpu-t

# Project Status

- The opti-sway-i3wm project is currently in development. The latest stable version is 0.0.4. We aim to provide regular updates and add more features in the future.

# License

- opti-sway-i3wm is licensed under the MIT License. See the LICENSE file for more information.

# Acknowledgements

- We would like to thank the open-source community for their support and the libraries used in the development of opti-sway-i3wm.
