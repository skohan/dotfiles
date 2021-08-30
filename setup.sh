#!/usr/bin/sh

# Install zsh
echo Installing required apps zsh terminator gnome-tweaks vim
sudo apt install zsh terminator gnome-tweaks vim

# Configuring vim
echo Installing PlugInstall for Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo Just do PlugInstall inside vim to install and activate plugins


# Configuring zsh
echo Installing Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


## For ubuntu themeing

# Nordic theme for applications
echo Installing Nordic theme
git clone https://github.com/EliverLara/Nordic.git /usr/share/themes/Nordic-darker

# Mac Mojav icons 
echo  Installing McMojav icons
git clone https://github.com/vinceliuice/McMojave-circle.git McMojave-circle
cd McMojav-circle
./install.sh
cd ..
echo cleaning
rm -rf McMojav-circle


echo YOU CAN OPEN GNOME-TWEAKS TOOL TO CHANGE THE ICONS AND THEME

## Creating symlinks to configuration files



# echo Activating shell
# zsh