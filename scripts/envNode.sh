#!/bin/bash

# create project folder
mkdir $1; cd $1;

# install new node version
nvm install $2;

# touch .nvmrc for adding new installed node version
echo $2 > .nvmrc;

# Use installed node version
nvm use;

# add a js file for checking current verison of node.js
printf 'console.log(`Current nodejs version: ${process.versions.node}`);'  > node_check_version.js;
node node_check_version.js;