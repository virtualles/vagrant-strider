#!/usr/bin/env sh

echo "start provision script"

set -e # Exit script on first error
set -x # Print commands as executed

# Uodate packages
sudo apt-get update -y

# Install required packages
sudo apt-get install -y sudo mongodb curl git g++ vim

sudo chown -R vagrant:vagrant /usr/local/bin
sudo chown -R vagrant:vagrant /usr/local/lib

# Install NVM
curl https://raw.github.com/creationix/nvm/master/install.sh | sh
source ~/.profile
nvm install v0.10.0
nvm alias default v0.10.0

# Install Strider
git clone https://github.com/Strider-CD/strider.git
cd ~/strider && npm install

cd ~/strider &&  npm install nodemon nomnom step underscore bcrypt lodash mongoose everypaas winston passport pw apres async nodemailer moment jade ansiparse request socket.io cookie express passport-github passport-local connect-mongo validator swig strider-extension-loader stylus gitane gumshoe strider-simple-worker

# Start/Restart services/
sudo service mongodb restart

# Start Strider
cd ~/strider && nodemon bin/strider 
