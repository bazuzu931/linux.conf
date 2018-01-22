#!/bin/bash

# create project folder
mkdir $1; cd $1;

# 
nvm install $2;

# touch .nvmrc;
echo $2 > .nvmrc;
nvm use;

printf 'console.log(`Current nodejs version: ${process.versions.node}`);'  > check_version.js;
node check_version.js;