source config

export USER_PASSWORD

sudo apt-get install zsh -y
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
sed -i 's/\(ZSH_THEME=\)".*"/\1"steeef"/' ~/.zshrc
echo ${USER_PASSWORD} | chsh -s $(which zsh)