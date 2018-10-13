  # install systemback
sudo add-apt-repository ppa:nemh/systemback;
sudo apt update;
sudo apt install systemback -y;

# install virtualbox
sudo apt install virtualbox virtualbox-qt -y;

# update casper
sudo dpkg --force-all -i casper_1.340_amd64.deb 
# then we need to fix casper package from synaptic

# then install systemback again because its was removed
sudo apt install systemback -y;

# install git
sudo apt install git;

# Node and npm install
wget https://nodejs.org/dist/v8.12.0/node-v8.12.0-linux-x64.tar.gz;
sudo tar -xf node-v8.12.0-linux-x64.tar.gz --directory /usr/local --strip-components 1;
node --version
npm --version

# Xclip install
sudo apt install xclip;

#
sudo apt install composer


# install python 3.5
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3.5
