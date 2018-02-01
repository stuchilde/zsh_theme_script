#!/bin/bash

# Install zsh for user
sudo apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i 's/bindkey -e/bindkey -v/g' `grep 'bindkey -e' -rl /home/${USER}/.oh-my-zsh`
mkdir -p /home/${USER}/.oh-my-zsh/custom/themes
wget https://raw.githubusercontent.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme -P /home/${USER}/.oh-my-zsh/custom/themes/
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
sed -i 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"bullet-train\"/g' /home/${USER}/.zshrc
