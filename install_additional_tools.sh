#!/bin/bash


# Installing common apps (for ubuntu only)
# Terminator for terminal, gnome-tweaks for adding new features to gnome shell,
# guake for drop down menu
sudo apt install terminator gnome-tweaks guake


## For ubuntu themeing

# Nordic theme for applications,  Installing Nordic theme
git clone https://github.com/EliverLara/Nordic.git /usr/share/themes/Nordic-darker

# Mac Mojav icons, Installing McMojav icons
git clone https://github.com/vinceliuice/McMojave-circle.git McMojave-circle
cd McMojav-circle
./install.sh
cd ..
# cleaning
rm -rf McMojav-circle

# YOU CAN OPEN GNOME-TWEAKS TOOL TO CHANGE THE ICONS AND THEME

## Creating symlinks to configuration files