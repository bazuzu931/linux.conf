#!/bin/bash

sudo service mysql stop;
sudo killall -KILL mysql mysqld_safe mysqld;

# remove configs, settings, history and all relative files
sudo apt-get remove --purge *mysql\* -y ;
sudo apt-get purge php.* -y ;
sudo apt-get remove apache2* -y ;
sudo apt-get remove /etc/apache2/apache2.conf -y ;
sudo apt-get purge phpmyadmin -y ;

# without removing configs
sudo apt-get remove   mysql-server mysql-client mysql-common -y;

# autoremove useful files
sudo apt-get autoremove -y;
sudo apt-get autoclean -y;

# update + upgarde all system packages
sudo apt-get update -y;
sudo apt-get upgrade -y;

# Before running these commands sure that you updare and upgrade system packages

sudo apt-get install apache2 -y;
sudo chmod -R /var/www/html ;
sudo apt-get install mysql-server mysql-client -y;
sudo apt-get install php7.0 php7.0-mysql libapache2-mod-php7.0  -y;
sudo apt-get install phpmyadmin -y;
sudo printf "\nInclude /etc/phpmyadmin/apache.conf" | sudo tee -a  /etc/apache2/apache2.conf ;
sudo /etc/init.d/apache2 restart;