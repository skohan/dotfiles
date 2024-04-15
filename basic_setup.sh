#!/usr/bin/sh

# Installing common tools
sudo apt install zsh vim git tmux


# Installing PlugInstall for Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo Just do PlugInstall inside vim to install and activate plugins


# Configuring zsh, Installing Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# Adding zsh-autosuggestions plugin to the oh-my-zsh terminal
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# also update the ~/.zshrc to add plugin
#
# plugins=(
#     other plugins...
#     git
#     zsh-autosuggestions
# )


## Creating symlinks to configuration files
