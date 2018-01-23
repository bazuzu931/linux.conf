#!/bin/bash

# Usage
#
# For example create function-alias in .bashrc : 
# function envdj { source /home/$USER/Desktop/github_projects/linux.conf/scripts/envDjango.sh }
#
# Run script
# $ envdj env_name project_name django_version



# create virtualenv
python3 -m venv $1;
cd $1;
  
# create isvenv.py for checking env activation
echo "
import sys
def is_venv():
	return (hasattr(sys, 'real_prefix') or
			(hasattr(sys, 'base_prefix') and sys.base_prefix != sys.prefix))

if is_venv():
	print('inside virtualenv or venv')
else:
	print('outside virtualenv or venv')
" >> isvenv.py;


# add isvenv alias in ~/.bashrc
# isvenv='alias isv="python isvenv.py"'
# if ! [ grep -q '$isvenv' ~/.bashrc ] ; then
# printf '\n\n\n$isvenv' >> ~/.bashrc;
# fi

# reload bashrc conf in current console
source ~/.bashrc

# activate venv
if [ -d 'bin' ] ; then
	source ./bin/activate
else
	source $1/bin/activate
fi

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

