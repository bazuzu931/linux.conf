#!/bin/bash

sudo service mysql stop;
sudo killall -KILL mysql mysqld_safe mysqld;
sudo apt-get --yes purge mysql-server mysql-client;
sudo apt-get --yes autoremove --purge;
sudo apt-get autoclean;
sudo deluser --remove-home mysql;
sudo delgroup mysql;
sudo rm -rf /etc/apparmor.d/abstractions/mysql /etc/apparmor.d/cache/usr.sbin.mysqld /etc/mysql /var/lib/mysql /var/log/mysql* /var/log/upstart/mysql.log* /var/run/mysqld;
sudo updatedb;
sudo rm ~/.mysql_history;
awk -F : '{ print($6 "/.mysql_history"); }' /etc/passwd | xargs -r -d '\n' -- sudo rm -f -- ;
sudo find / -name .mysql_history -delete ;


# remove configs and all relative files
sudo apt-get remove --purge   mysql-server mysql-client mysql-common -y;
sudo rm -rf /etc/apparmor.d/abstractions/mysql /etc/apparmor.d/cache/usr.sbin.mysqld /etc/mysql /var/lib/mysql /var/log/mysql* /var/log/upstart/mysql.log* /var/run/mysqld ;

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