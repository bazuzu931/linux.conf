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
