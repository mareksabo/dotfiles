#! /bin/bash

# Install zsh
sudo apt-get install zsh -y
chsh -s zsh

# Install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Download zshrc
wget https://raw.githubusercontent.com/mareksabo/dotfiles/master/.zshrc .zshrc-temp
mv .zshrc-temp .zshrc

# Clone the plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

rm zsh-install.sh
