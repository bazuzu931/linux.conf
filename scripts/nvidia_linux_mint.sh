for FILE in $(dpkg-divert --list | grep nvidia-340 | awk '{print $3}'); do dpkg-divert --remove $FILE; done;

# sudo apt purge nvidia-prime nvidia-settings;  
# sudo apt install nvidia-prime nvidia-settings;

# sudo apt purge nvidia*;
# sudo reboot;

# sudo add-apt-repository ppa:graphics-drivers/ppa;
# sudo apt update;
# sudo apt install nvidia-375 nvidia-prime;
# sudo reboot;
