  # install systemback
sudo add-apt-repository ppa:nemh/systemback;
sudo apt update -y;
sudo apt install systemback -y;

# install virtualbox
sudo apt install virtualbox virtualbox-qt -y;

# update casper
# sudo dpkg --force-all -i casper_1.340_amd64.deb
# then we need to fix casper package from synaptic
# then install systemback again because its was removed
# sudo apt install systemback -y;

# Xclip install
sudo apt install xclip -y;

# install git
sudo apt install git -y;
git config --global user.name "bazuzu931";
git config --global user.email "bazuzu931@yandex.ru";

# Node and npm install
wget https://nodejs.org/dist/v8.12.0/node-v8.12.0-linux-x64.tar.gz;
sudo tar -xf node-v8.12.0-linux-x64.tar.gz --directory /usr/local --strip-components 1;
node --version
npm --version

# Npm settings
# npm config set unsafe-perm=true

#Install vue-cli
npm install -g @vue/cli ;
# browser devtools for laravel
composer global  require  barryvdh/laravel-debugbar --dev ;

# install composer
sudo apt install composer -y;
#
composer clear-cache ;
# solved problem with cache
sudo chown -R $USER /home/$USER/.composer ;
# for use sublimelinter-php
composer global require "squizlabs/php_codesniffer=*";

# install youtube-dl
sudo apt install youtube-dl -y;

# install google fonts
sudo apt install typecatcher -y;

# install python 3.5
sudo add-apt-repository ppa:deadsnakes/ppa;
sudo apt-get update -y;
sudo apt-get install python3.5 -y;


# install opera
# ....
# set opera default
# xdg-settings set default-web-browser opera.desktop

# install sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https;
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list;
sudo apt-get update -y;
sudo apt-get install sublime-text -y;

#move sublime settings
sudo cp -rf /home/$USER/Desktop/github_projects/linux.conf/sublime-text-3 /home/$USER/.config/

# copy bash_it to home directory
cp /home/$USER/Desktop/github_projects/linux.conf/.bash_it ~

# install mint theme
gsettings set org.gnome.desktop.background picture-uri file:///home/$USER/Desktop/github_projects/linux.conf/black.jpg
cp -rf /home/$USER/Desktop/github_projects/linux.conf/.themes ~
cp -rf /home/$USER/Desktop/github_projects/linux.conf/.cinnamon ~
cp -rf /home/$USER/Desktop/github_projects/linux.conf/.config ~
gsettings set org.cinnamon.desktop.interface gtk-theme "Adapta-Nokto"
gsettings set org.cinnamon.desktop.interface icon-theme  "Mint-X-Red"

# set shortcuts
gsettings set org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom0/ binding "['<Alt>a']"
gsettings set org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom0/ command 'gnome-terminal'
gsettings set org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/custom0/ name 'run terminal'

gsettings set org.cinnamon.desktop.keybindings custom-list "['custom0']"
# gsettings set org.cinnamon.desktop.keybindings custom-list "['custom0','custom1']"




