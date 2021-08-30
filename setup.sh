PURPLE='\033[1;34m'
GREEN='\033[1;32m'
LIGHT_GREEN='\033[0;32]'
BLUE='\033[0;36m'
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

echo -e ${PURPLE}"I'm going to install Node now.${NO_COLOR}"
sudo apt install nodejs
echo -e "${GREEN}Node installation finished.${NO_COLOR}"
clear

echo -e ${PURPLE}"I'm going to install Python now.${NO_COLOR}"
sudo apt install python3.9
echo -e "${GREEN}Python installation finished.${NO_COLOR}"
clear

echo -e ${PURPLE}"I'm going to install zhs now.${NO_COLOR}"
sudo apt-get install zsh -y
echo -e "${GREEN}zhs installation finished.${NO_COLOR}"
clear

echo -e ${PURPLE}"I'm going to install oh-my-zsh now.${NO_COLOR}"
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
echo -e "${GREEN}oh-my-zsh installation finished.${NO_COLOR}"
clear

echo -e ${PURPLE}"I'm going to install NVM now.${NO_COLOR}"
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.zshrc
echo -e "${GREEN}NVM installation finished.${NO_COLOR}"
clear

echo -e ${PURPLE}"I'm going to install Docker now.${NO_COLOR}"
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install \
apt-transport-https \
    ca-certificates \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo docker run hello-world
echo -e "${GREEN}Docker installation finished.${NO_COLOR}"
clear

echo -e ${PURPLE}"I'm going to install Visual Studio Code now.${NO_COLOR}"
sudo snap install --classic code
echo -e "${GREEN}Visual Studio Code installation finished.${NO_COLOR}"
clear

echo -e ${PURPLE}"I'm going to install Visual Studio Code now.${NO_COLOR}"
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
echo -e "${GREEN}Visual Studio Code installation finished.${NO_COLOR}"
clear

echo -e ${PURPLE}"I'm going to install Visual Studio Code extensions now.${NO_COLOR}"
echo -e "${BLUE}- 2077 theme${NO_COLOR}"
code --install-extension Endormi.2077-theme
echo -e "${LIGHT_GREEN}2077 theme installation finished.${NO_COLOR}"

echo -e "${BLUE}- Live Share${NO_COLOR}"
code --install-extension MS-vsliveshare.vsliveshare
echo -e "${LIGHT_GREEN}Live Share installation finished.${NO_COLOR}"

echo -e "${BLUE}- Live Share Audio${NO_COLOR}"
code --install-extension MS-vsliveshare.vsliveshare-audio
echo -e "${LIGHT_GREEN}Live Share Audio installation finished.${NO_COLOR}"

echo -e "${BLUE}- Live Server${NO_COLOR}"
code --install-extension ritwickdey.LiveServer
echo -e "${LIGHT_GREEN}Live Server installation finished.${NO_COLOR}"

echo -e "${BLUE}- Docker${NO_COLOR}"
code --install-extension ms-azuretools.vscode-docker
echo -e "${LIGHT_GREEN}Docker installation finished.${NO_COLOR}"

echo -e "${BLUE}- Material Icon Theme${NO_COLOR}"
code --install-extension PKief.material-icon-theme
echo -e "${LIGHT_GREEN}Material Icon Theme installation finished.${NO_COLOR}"

echo -e "${BLUE}- :emojisense:${NO_COLOR}"
code --install-extension bierner.emojisense
echo -e "${LIGHT_GREEN}:emojisense: installation finished.${NO_COLOR}"

echo -e "${BLUE}- Color Picker${NO_COLOR}"
code --install-extension anseki.vscode-color
echo -e "${LIGHT_GREEN}Color Picker installation finished.${NO_COLOR}"

echo -e "${BLUE}- Colorize${NO_COLOR}"
code --install-extension kamikillerto.vscode-colorize
echo -e "${LIGHT_GREEN}Colorize installation finished.${NO_COLOR}"

echo -e "${BLUE}- DotENV${NO_COLOR}"
code --install-extension mikestead.dotenv
echo -e "${LIGHT_GREEN}DotENV installation finished.${NO_COLOR}"

echo -e "${BLUE}- Bracket Pair Colorizer 2${NO_COLOR}"
code --install-extension CoenraadS.bracket-pair-colorizer-2
echo -e "${LIGHT_GREEN}Bracket Pair Colorizer 2 installation finished.${NO_COLOR}"

echo -e "${BLUE}- Prettier${NO_COLOR}"
code --install-extension esbenp.prettier-vscode
echo -e "${LIGHT_GREEN}Prettier installation finished.${NO_COLOR}"

echo -e "${BLUE}- Visual Studio IntelliCode${NO_COLOR}"
code --install-extension VisualStudioExptTeam.vscodeintellicode
echo -e "${LIGHT_GREEN}Visual Studio IntelliCode installation finished.${NO_COLOR}"

echo -e "${BLUE}- Code Runner${NO_COLOR}"
code --install-extension ormulahendry.code-runner
echo -e "${LIGHT_GREEN}Code Runner installation finished.${NO_COLOR}"

echo -e "${BLUE}- GitLens${NO_COLOR}"
code --install-extension eamodio.gitlens
echo -e "${LIGHT_GREEN}GitLens installation finished.${NO_COLOR}"
echo -e "${GREEN}Theme and extentions installation finished.${NO_COLOR}"
clear

echo -e ${PURPLE}"I'm going to install Postman now.${NO_COLOR}"
sudo snap install postman
echo -e "${GREEN}Postman installation finished.${NO_COLOR}"
clear

echo -e ${PURPLE}"I'm going to install Beekeeper Studio now.${NO_COLOR}"
wget -O - https://deb.beekeeperstudio.io/beekeeper.key | sudo apt-key add -
echo "deb https://deb.beekeeperstudio.io stable main" | sudo tee /etc/apt/sources.list.d/beekeeper-studio-app.list
sudo apt update
sudo apt install beekeeper-studio
echo -e "${GREEN}Beekeeper Studio installation finished.${NO_COLOR}"
clear

echo -e ${PURPLE}"I'm going to install VirtualBox now.${NO_COLOR}"
sudo snap install virtualbox
echo -e "${GREEN}VirtualBox installation finished.${NO_COLOR}"
clear

echo -e ${PURPLE}"I'm going to install Plank now.${NO_COLOR}"
sudo add-apt-repository ppa:ricotz/docky
sudo apt-get update
sudo apt-get install plank
echo -e "${GREEN}Plank installation finished.${NO_COLOR}"
clear

echo -e ${PURPLE}"I'm going to install Spotify now.${NO_COLOR}"
sudo snap install spotify
echo -e "${GREEN}Spotify installation finished.${NO_COLOR}"
clear

echo -e ${PURPLE}"I'm going to install Discord now.${NO_COLOR}"
sudo snap install discord
clear