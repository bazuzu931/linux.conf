

# test commit



#######################################################################################
########################################################################################
########################################################################################
########################################################################################
shopt -s extglob
# #  Always good practice to update packages. However ask user if they would like to do so
# #  For explanation on how this works and why check out https://garywoodfine.com/use-pbcopy-on-ubuntu/
# read -p "Do you want to update your package repositories before proceeding ? " -n 1 -r
# echo  #adding new line
# if [[ $REPLY =~ ^[Yy]$ ]]
# then
#    sudo apt update
#    sudo apt upgrade -y
#    sudo apt autoremove -y
# fi
########################################################################################
########################################################################################

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export PATH=/home/momo/android-sdk/tools:/home/momo/android-sdk/tools/bin:$PATH
export ANDROID_HOME=/home/momo/android-sdk/tools/
export ANDROID_SDK_ROOT=/home/momo/android-sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/tools

alias jv="sudo update-alternatives --config java"
alias python3='python3.9'


# tmux
alias tx='tmux new-session -t $1'
alias ta='tmux attach -t $1'
function tmk {
	tmux list-sessions | awk 'BEGIN{FS=":"}{print $1}' | xargs -n 1 tmux kill-session -t
}




########################################################################################
########################################################################################
function bro() {
	cd /home/momo/Desktop/Bot-linux;
	bash Bot.sh;
}


########################################################################################
########################################################################################
# PATH
export PATH="$PATH:/opt/yarn-[version]/bin"

# open crontab with sublime
# export VISUAL=/usr/bin/subl

# export PATH=/opt/bin:/usr/local/bin:/usr/contrib/bin:/bin:/usr/bin:/usr/sbin:/usr/bin/X11
# # add optional items to the path
# for bindir in $HOME/local/bin $HOME/bin; do
#     if [ -d $bindir ]; then
#         PATH=$PATH:${bindir}
#     fi
# done

function pich {
	cd /home/momo/Desktop/Halk/script/pic_handle;
	python3.6 pic_handle.py
}

########################################################################################
################################    Tapad  1     #######################################

# Add
function tadd1 {
	cd /home/momo/Desktop/tapad/tapad_1/scripts/version/Universal;
	python3 main.py
}
# Start
function tapad1 {
	cd /home/momo/Desktop/tapad/tapad_1/General;
	node index.js
}
# Mix
function tapmix1 {
	cd /home/momo/Desktop/tapad/tapad_1/scripts;
	python3 mix.py $1
}
# Delete
function tapdel1 {
	cd /home/momo/Desktop/tapad/tapad_1/scripts;
	python3 delete.py $1
}

########################################################################################
################################    Tapad  2     #######################################

# Add
function tadd2 {
	cd /home/momo/Desktop/tapad/tapad_2/scripts/version/Universal;
	python3 main.py
}
# Start
function tapad2 {
	cd /home/momo/Desktop/tapad/tapad_2/General;
	node index.js
}
# Mix
function tapmix2 {
	cd /home/momo/Desktop/tapad/tapad_2/scripts;
	python3 mix.py $1
}
# Delete
function tapdel2 {
	cd /home/momo/Desktop/tapad/tapad_2/scripts;
	python3 delete.py $1
}

########################################################################################
################################    Tapad  3     #######################################

# Add
function tadd3 {
	cd /home/momo/Desktop/tapad/tapad_3/scripts/version/Universal;
	python3 main.py
}
# Start
function tapad3 {
	cd /home/momo/Desktop/tapad/tapad_3/General;
	node index.js
}
# Mix
function tapmix3 {
	cd /home/momo/Desktop/tapad/tapad_3/scripts;
	python3 mix.py $1
}
# Delete
function tapdel3 {
	cd /home/momo/Desktop/tapad/tapad_3/scripts;
	python3 delete.py $1
}

########################################################################################
################################    Tapad  4     #######################################

# Add
function tadd4 {
	cd /home/momo/Desktop/tapad/tapad_4/scripts/version/Universal;
	python3 main.py
}
# Start
function tapad4 {
	cd /home/momo/Desktop/tapad/tapad_4/General;
	node index.js
}
# Mix
function tapmix4 {
	cd /home/momo/Desktop/tapad/tapad_4/scripts;
	python3 mix.py $1
}
# Delete
function tapdel4 {
	cd /home/momo/Desktop/tapad/tapad_4/scripts;
	python3 delete.py $1
}

########################################################################################
################################    Tapad       ########################################
function tapad {
	tapad1; tapad3;
	# tapad1; tapad2; tapad3;
}

function cprice {
	cd /home/momo/Desktop/tapad/Z/change_price;
	python3 main.py
}

#azercell
function azer {
	cd /home/momo/Desktop/Halk/Azercell/;
	python3 get_info.py
}


########################################################################################
########################################################################################

#close all windows

alias fd='flutter doctor'
alias fpg='flutter pub get'

alias uu='uvicorn main:app --reload'

alias aled='sudo subl /home/$USER/.bashrc; exit'


alias sss='shutdown now || systemctl poweroff -i'
alias rrr='reboot || systemctl reboot -i'


alias ccc='ssh momo@192.168.0.102'
alias www='wakeonlan 90:2b:34:b9:0f:c9'
function sus {
	systemctl suspend;
	systemctl suspend -i
}

# alias ai='sudo apt install '
function ai {
	sudo dpkg --configure -a;
	sudo apt-get install -f;
	sudo apt install $1
}
alias ri='sudo apt remove -y '
alias ui='sudo apt install --uninstall '
alias di='sudo dpkg -i '
function ddi {
	mv $1 ~/programs;
	sudo dpkg -i ~/programs/$1;
}
alias rmd='sudo rm -rf $1; sudo apt-get --purge remove $1'
alias dl='sudo rm -rf $1'

# delete beside (not work)
# alias rmbes='ls | grep -v $1 | xargs rm -rfv'
alias upd='sudo apt update'
alias upg='sudo apt upgrade'


alias des='cd ~/Desktop '
alias dow='cd /home/$USER/Downloads'
alias home='cd /home/$USER/'
alias exhdd='cd /media/$USER/hooli'
alias applic='cd /usr/share/applications'


alias sv='sudo vi'
alias sn='sudo nano'
alias gz='sudo tar -xvzf '
alias bz='sudo tar -jxvf '
alias n='nautilus'
alias ju='jupyter notebook'
alias cl='clear'
alias oi='xdg-open '
alias ledon='xset led'
alias ledoff='xset led off'
alias sb='source ~/.bashrc'
alias xx='chmod +x'
alias xcop='xclip -sel clip < $1'
alias xc='xclip -selection clipboard'
alias xp='xclip -selection clipboard -o'
alias ddd='sudo service dns-clean restart'
alias dfind='dpkg -l | grep $1'
alias s="subl"
alias e="exit"
alias 777="sudo chmod -R 777 $1"
alias 775="sudo chmod -R 775 $1"
alias 755="sudo chmod -R 755 $1"
alias 600="sudo chmod -R 600 $1" #делает файл неисполняемым -rw-------

############################################################
# Youtube-dl
alias yd='sudo youtube-dl -U; youtube-dl -cit $1'
# download 1 mp3
alias yd2='sudo youtube-dl -U; youtube-dl --extract-audio --audio-format mp3 $1'
# download playlist mp3
alias yd3='sudo youtube-dl -U; youtube-dl --extract-audio --audio-format mp3 -o "%(playlist)s/%(playlist_index)s-%(display_id)s-%(title)s.%(ext)s" $1'
# download playlist video
alias yd4='sudo youtube-dl -U; youtube-dl -o "%(playlist)s/%(playlist_index)s-%(display_id)s-%(title)s.%(ext)s" $1'
############################################################


alias pipi='pip3.9 install '
alias p3='python3.9 '
alias pipup='pip install --upgrade pip '
alias sassw='sass --watch $1:$2'
# alias jes='jekyll serve'
alias lg='(ls -l -d [!.]?* && ls -l -d .[!.]?*) | grep $1 '
# alias lg='ls -ap | grep -v / | egrep "^\." '
alias cont='grep -rHino $1 '
alias kk='kill %1'
alias k1='kill %1 '
alias k2='kill %2 '
alias k3='kill %3 '

###########################################
# SSH dedic
###########################################
# alias ser='ssh -p 50111 bazuzu@46.229.213.251 '
# alias scop='scp -P 50111  -r  $1  bazuzu@46.229.213.251:~ '
# alias ser="ssh 'root@185.200.241.78' "
function scf {
	scp "$1" "momo@192.168.0.102:~/Desktop/Transfer_files/"
}
function scd {
	scp -r "$1"  "momo@192.168.0.102:~/Desktop/Transfer_files/"
}

###########################################
# Scripts
###########################################
function newscript {
	touch ~/Desktop/github_projects/linux.conf/scripts/"$1.sh";
	sudo chmod +x ~/Desktop/github_projects/linux.conf/scripts/"$1.sh";
	subl ~/Desktop/github_projects/linux.conf/scripts/"$1.sh";
	exit;
}

# show my scripts
alias scripts='cd ~/Desktop/github_projects/linux.conf/scripts/; ll ~/Desktop/github_projects/linux.conf/scripts/'
alias gscripts='xdg-open ~/Desktop/github_projects/linux.conf/scripts/; exit'



#
function mapp {
	subl /home/momo/Desktop/github_projects/linux.conf/scripts/mint_install_apps.sh;
	exit;
}

#
function hosts {
	sudo subl /etc/hosts;
	exit;
}

alias hhh="~/ngrok http $1 "

###########################################
# Git
###########################################
alias gita='git add . '
alias gitc='git commit -m $1 '
alias gitac='git add . ; git commit -m $1 '
alias gitpush='git push -u origin master '
alias gitgp='git push -u origin gh-pages '

# Go to branch
alias gib='git branch '

# create new branch and switch to tis branch
alias gic='git checkout '


# push to master branch
# function gmas {
# 	git add . ;
# 	git commit -m "$1";
# 	git push -u origin master;
# }

# Commit all changes to github current branch
function gg {
	git_branch_name=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p');
	printf "\n\n Push to $git_branch_name \n\n";
	# git rm -rf --cached .
	git add . ;
	git commit -m "$1";
	git push -u origin $git_branch_name;
}

# Back app to specific commit state
# gitback
function gb {
#####    $1 = its a new commit
	git commit --amend -m $1;
	git push -f;
}
# alias gback = 'git checkout HEAD~'$1

# Restore all changes that wasn't been commit
function gitreset {
	rm -dvR !(".git");
	printf "\n\n Deleted All files \n\n";
	git reset --hard HEAD
}

# Send all new changes in linux setting's file to github
function copgit {
	cd /home/$USER/Desktop/github_projects/linux.conf/ ;
	./copy-all.sh;
	git add . ;
	git commit -m "push new conf";
	git push -u origin master;
}

function pb {
	cd /home/$USER/Desktop/github_projects/linux.conf/ ;
	git pull;
	cp /home/momo/Desktop/github_projects/linux.conf/bashrc/.bashrc ~/.bashrc
}

function tgp {
	cd /home/momo/Desktop/tapad ;
	git pull;
	# sleep 5;
	# exit;
}
function tgg {
	cd /home/momo/Desktop/tapad ;
	git_branch_name=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p');
	printf "\n\n Push to $git_branch_name \n\n";
	# git rm -rf --cached .
	git add . ;
	git commit -m "$1";
	git push -u origin $git_branch_name;
	# sleep 5;
	# exit;
}
alias unch='git update-index --assume-unchanged $1'

###########################################
# LAMP
###########################################
alias apstart='sudo /etc/init.d/apache2 start'
alias apstop='sudo /etc/init.d/apache2 stop'
alias apres='sudo /etc/init.d/apache2 restart'
alias aprel='sudo service apache2 reload; sudo /etc/init.d/apache2 restart'

alias apconf='sudo subl /etc/apache2/apache2.conf'
alias aproot='cd /var/www/html'
alias chdata='sudo chown -R www-data:www-data $1'

function newhost {
	printf "\n127.0.0.1	$1" | sudo tee -a /etc/hosts ;
	sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/"$1".conf ;
	sudo sed -i -e "s/DocumentRoot\ \/var\/www\/html/DocumentRoot\ \/home\/"$USER"\/Desktop\/Servers\/"$1"\n\tServerName "$1"/g"  /etc/apache2/sites-available/"$1".conf;
	sudo a2ensite $1;
	sudo systemctl reload apache2;
}

function delhost {
	:
}

###########################################
# PHP
###########################################
alias comdump='composer dump-autoload'
alias comunit='composer require --dev phpunit/phpunit'
alias cr='composer require '

###########################################
# Tailwind
###########################################
alias tinit="npx tailwind init  tailwind.js -c"


###########################################
# Laravel
###########################################
function lar58 {
	composer create-project laravel/laravel="5.8" $1;
	cd $1;
}

function lar6 {
	composer create-project laravel/laravel="6" $1;
	cd $1;
}



alias les="laravel-echo-server "
alias pas="php artisan serve &"
alias pa="php artisan"
alias paq="php artisan queue:work "
alias par="php artisan route:list"
alias paf="php artisan migrate:fresh"
alias pat="php artisan tinker"
alias pam="php artisan migrate"
alias pap="php artisan passport:install"
alias pu="clear && vendor/bin/phpunit"

alias nrw="npm run watch-poll "
alias nrd="npm run dev "
alias nrb="npm run build "
alias nrst="npm run start "
alias nrg="npm run generate "
alias nrs="npm run serve "
alias ni="npm install $1 "
alias nig="npm install -g "
alias nf="npm audit fix"

# Update npm packages in current packege
alias nu=" npm-check -u"

function npmupd() {
	npm i -g npm-check-updates;
	npm-check-updates -u;
	npm install;
}

function qq(){
	cd quasarapp/ ;
	quasar build;
	cd ../;
	npm run dev;
}
alias qb='quasar build'
alias qd='quasar dev'

alias gd="gridsome develop"

alias mcon="php artisan make:controller"
alias mres="php artisan make:resource"
alias mmig="php artisan make:migration"
alias mmod="php artisan make:model"

function pac {
	php artisan config:cache;
	php artisan cache:clear;
	php artisan view:clear;
}

function newlar {
	source /home/$USER/Desktop/github_projects/linux.conf/scripts/newLaravel.sh
}

function lar1 {
	composer create-project laravel/laravel="5.7" $1;
	cd $1;

	php artisan storage:link;

	sepp "Laravel installed ! "
	sudo apt install redis-server ;
	sepp "Redis Server installed ! "
	composer require predis/predis ;
	sepp "Predis installed ! ";
	composer require barryvdh/laravel-debugbar --dev;
	sepp "Debugger installed ! "
	composer require laravel/passport;
	sepp "Passport Laravel installed ! "
	composer require intervention/image ;
	php artisan vendor:publish --provider="Intervention\Image\ImageServiceProviderLaravel5"
	sepp "intervention/image installed and publish configs in Laravel5 . OK "

	# sudo npm install -g laravel-echo-server;
	# sepp "Laravel-echo-server for NPM  is installed ! "
	npm install --save  laravel-echo socket.io-client;
	sepp "Laravel-echo  for NPM  is installed ! "
	sepp "Socket.io-client for NPM is  installed ! "
	# npm i admin-lte@v3.0.0-alpha.2 --save;
	# sepp " Admin Lte is installed ! "
	npm install --save-dev @fortawesome/fontawesome-free ;
	sepp "Fontawesome is installed ! "
	npm i vue-router;
	sepp "Vue router is installed ! "
	npm i axios;
	npm i vform;
	sepp "axios is installed ! "
	sepp "vform is installed ! "
	npm install moment --save;
	sepp "Moment.js is installed ! "
	npm install vue-progressbar;
	sepp "Vue-progressbar is installed ! "
	npm install sweetalert2;
	sepp "Sweetalert2 is installed ! "
	npm install laravel-vue-pagination;
	sepp "laravel-vue-pagination is installed ! "


	npm i;
	npm audit fix;
	sepp "Npm packages installed ! "
}


###########################################
# Virtial env
###########################################
alias activ='source bin/activate '
alias deac='deactivate '
alias isenv="python3 /home/momo/Desktop/github_projects/linux.conf/scripts/is_venv_script/is_venv.py"

# create virtualenv, cd to env folder, and activate it
function envpy {
	source /home/$USER/Desktop/github_projects/linux.conf/scripts/envPython.sh
}


# virtual env activate
function envact {
  if [ -d 'bin' ] ; then
	source ./bin/activate
  else
	source $1/bin/activate
  fi
}

# 2 Method activate virtualenv
alias vac='source venv/bin/activate'

###########################################
# Django
###########################################
alias djrun='python3 manage.py runserver'
# alias mig='python3 manage.py migrate'
# alias mmig='python3 manage.py makemigrations'
alias djnewuser='python3 manage.py createsuperuser'
alias djnewapp='python3 manage.py startapp'
alias djnewproj='django-admin startproject'

# create virtualenv with Django, cd to env folder, and activate it
# first arg == env-name
# second arg == project_name
# third arg == django_version(by default 1.9)
function envdj {
	source /home/$USER/Desktop/github_projects/linux.conf/scripts/envDjango.sh
}

###########################################
# React.js
###########################################

alias creac="npx create-react-app $1"
alias rs="serve -s build"

# create virtualenv with React, cd to env folder, and activate it
# first arg == project_name
# second arg == react_version(by default 1.9)
function envreact {
	source /home/$USER/Desktop/github_projects/linux.conf/scripts/envReact.sh
}


###########################################
# NPM
###########################################

# create project with specified npm version
# first arg == project_name
# second arg == npm_version(by default 1.9)
function envnode {
	source /home/$USER/Desktop/github_projects/linux.conf/scripts/envNode.sh
}


########################################################################################
########################################################################################
########################################################################################
########################################################################################
########################################################################################
########################################################################################

# delete all exclude some files and folders
function de {
	# ls | grep -v "$1\|$2" | xargs rm -rfv;
	ignore=""
	for fignore in "$@"; do
	  ignore=${ignore}"-not -name ${fignore} "
	done
	find . -type f,d $ignore -delete
}

#
function se {
	subl $1;
	exit;
}

#
function sepp {
	echo '';
	echo '#################################################################';
	echo $1;
	echo '#################################################################';
	echo '';
}

# create and open {newFile}
function cao {
  touch $@; nano $@;
}

############################################################

function add2path {
  if ! echo $PATH | egrep "(^|:)$1(:|\$)" > /dev/null ; then
	if [[ $2 = "front" ]]; then
	  PATH="$1:$PATH"
	else
	  PATH="$PATH:$1"
	fi
	export PATH
  fi
}

########################################################################################
########################################################################################
########################################################################################
########################################################################################
########################################################################################
########################################################################################

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

########################################################################################
########################################################################################
########################################################################################
########################################################################################
########################################################################################
########################################################################################

# ???
# If not running interactively, don't do anything
case $- in
  *i*) ;;
    *) return;;
esac

# Path to the bash it configuration
export BASH_IT="/home/momo/bash-it-master"

# Lock and Load a custom theme file.
# Leave empty to disable theming.
# location /.bash_it/themes/
export BASH_IT_THEME='rjorgenson'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Uncomment this to make Bash-it create alias reload.
# export BASH_IT_RELOAD_LEGACY=1

# Load Bash It
source "$BASH_IT"/bash_it.sh


# #################
# TEMPLE alias
# Run project develop environment

function ppp() {
	cd ~/Desktop/arena;
	gnome-terminal --tab --title=Artisan  -- bash -c "php artisan serve ; bash";
	# gnome-terminal --tab --title=NPM  -- bash -c "npm run watch-poll ; bash";
	gnome-terminal --tab --title=Quasar  -- bash -c "cd quasarapp; quasar dev ; bash";
	gnome-terminal --tab --title=Opera  -- bash -c "opera ; bash";
	subl;
}

# function ppp() {
# 	cd ~/Desktop/todo;
# 	gnome-terminal --tab --title=Quasar  -- bash -c "quasar dev ; bash";
# 	gnome-terminal --tab --title=Opera  -- bash -c "opera ; bash";
# 	subl;
# }


# export PATH=$PATH:$HOME/jdk-10/bin
# Or
# export PATH=~/jdk-10/bin/:$PATH

# Export the Android SDK path
# export ANDROID_HOME=$HOME/android-sdk
# export PATH=$PATH:$ANDROID_HOME/tools/bin
# export PATH=$PATH:$ANDROID_HOME/platform-tools

# Fixes sdkmanager error with java versions higher than java 8
# export JAVA_OPTS='-XX:+IgnoreUnrecognizedVMOptions --add-modules java.se.ee'


export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm