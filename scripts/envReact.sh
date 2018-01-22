#!/bin/bash

mkdir $1;

npm install npm@${3:-6.9.4};
mkdir $2; cd $2;
