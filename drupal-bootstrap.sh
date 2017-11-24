#!/bin/bash

machine_name=
echo -n "Enter machine name of theme > "
read machine_name
echo "You theme's machine name is '$machine_name'"
echo ""

name=
echo -n "Enter human name of theme > "
read name
echo "You theme's name is '$name'"
echo ""

find . -type f -exec sed -i "s/THEMENAME/$machine_name/g" {} +
find . -type f -exec sed -i "s/THEMETITLE/$name/g" {} +
find . -type f -exec rename "s/THEMENAME/$machine_name/" *.* {} +
rename 's/starterkit/info/' *.starterkit.yml
git clone https://github.com/twbs/bootstrap-sass.git bootstrap
mkdir css
wget https://raw.githubusercontent.com/vknyshuk/helpers/master/gulpfile.js
wget https://raw.githubusercontent.com/vknyshuk/helpers/master/package.json

sudo apt-get update
sudo apt-get install libnotify-bin
npm install -g gulp browser-sync
