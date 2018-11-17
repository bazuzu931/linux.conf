#!/bin/bash

sudo service mysql stop;
sudo killall -KILL mysql mysqld_safe mysqld;

# remove configs, settings, history and all relative files
sudo apt-get remove --purge *mysql\* -y ;
sudo apt-get purge php.* -y ;
sudo apt-get remove apache2* -y ;
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
# sudo apt-get install php7.0 php7.0-mysql libapache2-mod-php7.0 -y;
# sudo apt install php7.1
# sudo apt install php7.1-cli php7.1-common php7.1-json php7.1-opcache php7.1-mysql php7.1-mbstring php7.1-mcrypt php7.1-zip
# sudo a2enmod php7.1

sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt install php5.6.39
sudo apt install php5.6.39-cli php5.6.39-common php5.6.39-json php5.6.39-opcache php5.6.39-mysql php5.6.39-mbstring php5.6.39-mcrypt php5.6.39-zip
sudo a2enmod php5.6.39
sudo systemctl restart apache2.service

sudo apt-get install php-zip
sudo apt-get install phpmyadmin -y;
sudo apt-get install phpunit -y;

printf "\nInclude /etc/phpmyadmin/apache.conf" | sudo tee -a  /etc/apache2/apache2.conf ;
printf "\n\n<Directory /home/$USER/Desktop/Servers/>
	Options Indexes FollowSymLinks
	AllowOverride All
	Require all granted
</Directory>\n\n" | sudo tee -a  /etc/apache2/apache2.conf ;
printf "\nServerName localhost\n\n" | sudo tee -a  /etc/apache2/apache2.conf ;

printf "<IfModule mod_dir.c>
	DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm
</IfModule>\n
# vim: syntax=apache ts=4 sw=4 sts=4 sr noet
\n" | sudo tee   /etc/apache2/mods-available/dir.conf ;

printf "\n\n127.0.0.1	site.com\n\n" | sudo tee -a /etc/hosts ;
sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/site.com.conf ;

sudo sed -i -e "s/DocumentRoot\ \/var\/www\/html/DocumentRoot\ \/home\/"$USER"\/Desktop\/Servers\/site.com\n\tServerName site.com/g"  /etc/apache2/sites-available/site.com.conf;

sudo a2ensite site.com;
sudo systemctl reload apache2;

sudo apt-get install -y php-xdebug;
sudo /etc/init.d/apache2 restart;


################################################################################
#### Reset mysql root
# use mysql;
# UPDATE user SET plugin='mysql_native_password' WHERE User='root';
# FLUSH PRIVILEGES;
# exit;
#### Then enable NOPASS FOR ROOT in /etc/phpmyadmin/config.inc.php
#### Then go run phpmyadmin in browser and sign in as root without pass!
################################################################################