#!/bin/bash

sudo apt remove $1;
sudo apt --purge remove $1;
sudo apt autoremove;
sudo apt clean;
