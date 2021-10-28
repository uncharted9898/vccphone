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
awk '{$5 = v} 1' v="stratum+tcp://verus.aninterestinghole.xyz:9998" ~/ccminer/run > ~/ccminer/run1
awk '{$7 = v} 1' v="RYTtgn6ZzRTJ8CQ75JzyWhEj18XKihZCtY" ~/ccminer/run1 > ~/ccminer/run2
awk '{$11 = v} 1' v="8" ~/ccminer/run2 > ~/ccminer/run3
chmod +x run3
ln -s ~/vccphone/ccminer/run3 ~/run
nano ~/ccminer/run3
echo Congrats, now run ~/run3 to start mining
