#!/bin/sh
# Copyright (C) 2009-2017 Three Nine Consulting
#  Always good practice to update packages. However ask user if they would like to do so
#  For explanation on how this works and why check out https://garywoodfine.com/use-pbcopy-on-ubuntu/
read -p "Do you want to update your package repositories before proceeding ? " -n 1 -r
echo  #adding new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
   sudo apt update
   sudo apt upgrade -y
   sudo apt autoremove -y
fi



#  Check to see if Xclip is installed if not install it
if [ $(dpkg-query -W -f='${Status}' xclip 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  echo 'xclip not installed .... installing now!'
  sudo apt install xclip -y;
fi
#  Add the aliases to the .bashrc
echo 'updating bash profile'
echo "#pbcopy & pbpaste aliases" >> ~/.bashrc
echo "alias pbcopy='xclip -selection clipboard'" >> ~/.bashrc
echo "alias pbpaste='xclip -selection clipboard -o'"  >> ~/.bashrc
source  ~/.bashrc


echo 'Complete! happy PbCopy'
