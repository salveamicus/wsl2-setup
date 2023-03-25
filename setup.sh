#!/usr/bin/env sh

curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

sudo add-apt-repository ppa:kelleyk/emacs
sudo apt update
sudo apt-get install -y emacs28
sudo apt-get install -y vim
sudo apt-get install -y git
sudo apt-get install -y gh
sudo apt-get install -y python-is-python3
sudo apt-get install -y python3-pip
sudo apt-get install -y libgtk-3-dev
sudo apt-get install -y libopencv-dev
sudo apt-get install -y ripgrep
sudo apt-get install -y markdown
sudo apt-get install -y shellcheck
sudo apt-get install -y fd-find
sudo apt-get install -y pandoc
sudo apt-get install -y hoogle
sudo apt-get install -y glslang-dev
sudo apt-get install -y libicu-dev libncurses-dev libgmp-dev zlib1g-dev
sudo apt-get install -y default-jre
sudo apt-get install -y tidy
sudo apt-get install -y jsbeautifier
sudo apt-get install build-essential
sudo apt-get install -y npm
npm init stylelint

mkdir projects
cd projects/
git clone https://github.com/salveamicus/opencv-cpp-experiments
cd opencv-cpp-experiments/
git checkout develop
cd ~/

git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install
~/.config/emacs/bin/doom doctor
