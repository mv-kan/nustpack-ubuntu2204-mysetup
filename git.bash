
export $(grep -v '^#' .env | xargs)


sudo apt install -y git

git config --global user.email ${GIT_EMAIL}
git config --global user.name ${GIT_NAME}