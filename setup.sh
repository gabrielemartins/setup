PURPLE='\033[1;34m'
GREEN='\033[1;32m'
NO_COLOR='\033[0m'

echo -e "${PURPLE}Hi! My name's Hysac I'm going to help you to setup the applications in the computer.${NO_COLOR}"
sudo apt-get update
clear

echo -e ${PURPLE}"I'm going to install curl now.${NO_COLOR}"
sudo apt install git -y
echo -e "${GREEN}Git installation finished.${NO_COLOR}"
clear

echo -e ${PURPLE}"What's the name you'd like as your git username?${NO_COLOR}"
read GIT_USERNAME
git config --global user.name "$GIT_USERNAME"
git config user.name
clear 

echo -e ${PURPLE}"What's the name you'd like as your git email?${NO_COLOR}"
read GIT_EMAIL
git config --global user.email "$GIT_EMAIL"
git config user.email
clear 

echo -e ${PURPLE}"I'm going to install curl now.${NO_COLOR}"
sudo apt install curl -y
echo -e "${GREEN}Curl installation finished.${NO_COLOR}"
clear

echo -e ${PURPLE}"I'm going to install zhs now.${NO_COLOR}"
sudo apt-get install zsh -y
echo -e "${GREEN}zhs installation finished.${NO_COLOR}"
clear

echo -e ${PURPLE}"I'm going to install oh-my-zsh now.${NO_COLOR}"
sudo apt-get install zsh -y
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
echo -e "${GREEN}oh-my-zsh installation finished.${NO_COLOR}"
clear
