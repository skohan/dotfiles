#!/usr/bin/sh

# Installing common tools
sudo apt install zsh vim

# Installing common apps (for ubuntu only)
sudo apt install terminator gnome-tweaks 

# Installing PlugInstall for Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo Just do PlugInstall inside vim to install and activate plugins


# Configuring zsh, Installing Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Guake terminal (Drop down)
sudo apt install guake -y

# Adding zsh-autosuggestions plugin to the oh-my-zsh terminal
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# also update the ~/.zshrc to add plugin
#
# plugins=(
#    # other plugins...
#     zsh-autosuggestions
# )


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



# echo Activating shell
# zsh
