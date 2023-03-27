sudo apt-get install zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
sed -i 's/\(ZSH_THEME=\)".*"/\1"steeef"/' ~/.zshrc
chsh -s $(which zsh)