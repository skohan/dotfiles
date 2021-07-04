#/usr/bin/sh

# Install zsh
echo Installing zsh
sudo apt install zsh

echo Installing PlugInstall for Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo Installing Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo Activating shell
zsh
