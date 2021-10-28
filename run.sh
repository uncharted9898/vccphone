#!/bin/sh
sudo apt update
sudo apt-get install libcurl4-openssl-dev -y
sudo apt-get install libssl-dev -y
sudo apt-get install libjansson-dev -y
sudo apt-get install automake -y
sudo apt-get install autotools-dev -y
sudo apt-get install build-essential -y
sudo apt install nano -y
git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git
cd ccminer
chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
./build.sh
ln -s ~/vccphone/ccminer/run.sh ~/run.sh
chmod +x ~/run.sh
nano ./run.sh
echo ...
