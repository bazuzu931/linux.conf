#!/bin/bash

sudo service mysql stop;

# remove configs and all relative files
sudo apt-get remove --purge   mysql-server mysql-client mysql-common;
sudo rm -rf /etc/mysql;
# sudo find / -iname ‘mysql*’ -exec rm -rf {} \;

# without removing configs
sudo apt-get remove   mysql-server mysql-client mysql-common;

# autoremove useful files
sudo apt-get autoremove;
sudo apt-get autoclean;

# update + upgarde all system packages
sudo apt-get update;
sudo apt-get upgrade;

# Before running these commands sure that you updare and upgrade system packages

sudo apt-get install apache2 -y;
sudo chmod -R /var/www/html ;
sudo apt-get install mysql-server mysql-client -y;
sudo apt-get install php7.0 php7.0-mysql libapache2-mod-php7.0  -y;
sudo apt-get install phpmyadmin -y;
printf "Include /etc/phpmyadmin/apache.conf" | sudo tee -a  /etc/apache2/apache2.conf ;
sudo /etc/init.d/apache2 restart;