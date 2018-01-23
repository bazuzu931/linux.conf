#!/bin/bash

# Usage
#
# For example create function-alias in .bashrc : 
# function envdj { source /home/$USER/Desktop/github_projects/linux.conf/scripts/envDjango.sh }
#
# Run script
# $ envdj env_name project_name django_version



# create and activate python environment
envpy $1;

#install env packages
pip install --upgrade pip;
pip3 install django==${3:-1.9};
pip3 install fabric3;
sudo apt-get -y install fabric
django-admin startproject $2; cd $2;
pip freeze > requirements.txt;

# add project folders for initial structuring
mkdir media static static/css static/js static/image;

# add local_settings
touch static/css/style.css  static/js/main.js .gitignore fabfile.py example_fabfile.py $2/local_settings.py;

# add .gitignore
printf "*.pyc\nfabfile.py\n$2/media\n$2/local_settings.py" >> .gitignore;
	
# add to django setting
printf "\nSTATIC_ROOT = os.path.join(BASE_DIR, '$2', 'static')\n\nMEDIA_URL = '/media/'\n\nMEDIA_ROOT = os.path.join(BASE_DIR, '$2', 'media')" >> $2/settings.py
printf "\n\nSTATICFILES_DIRS = [
os.path.join(BASE_DIR, 'static'),
'/$2/static/',
]" >> $2/settings.py
	

# create fabfile.py
printf "
import os
from fabric.api import run, env, cd, roles, lcd, local, sudo
def gp():
	lcd('/home/momo/Desktop/dmg_env/dmg/')
	local('sudo git add .')
	local('sudo git commit -a')
	local('sudo git push origin master')" > fabfile.py

