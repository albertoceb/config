#!/bin/bash
sudo apt -y install zsh
chsh -s $(which zsh)
sudo apt -y install git
sudo apt -y install curl
sudo apt-get -y install build-essential cmake
sudo apt-get -y install python-dev python3-dev
sudo apt -y install vim-nox
sudo apt -y install tmux
sudo apt install -y libssl-dev libreadline-dev zlib1g-dev
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
cd ~
mkdir -p ~/.rbenv/plugins
 git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/k-takata/minpac.git   ~/.vim/pack/minpac/opt/minpac
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
#exec "$(which zsh)"
git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
curl -L git.io/antigen > antigen.zsh
curl -s "https://get.sdkman.io" | bash
# cd ~/.vim/bundle/YouCompleteMe
# ./install.py
cd ~
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu zesty stable"
sudo apt-get -y update
sudo apt-get -y install docker-ce
sudo usermod -aG docker $USER
curl -sL https://howtowhale.github.io/dvm/downloads/latest/install.sh | sh
./nerd-fonts-1.2.0/install.sh
#fc-cache -fv ~/.fonts
#source ~/.fonts/*.sh
