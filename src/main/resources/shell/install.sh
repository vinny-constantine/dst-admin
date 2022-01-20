#!/bin/bash

sudo add-apt-repository multiverse
sudo dpkg --add-architecture i386
sudo apt-get update -y | sudo apt-get install -y lib32gcc1 libcurl4-gnutls-dev:i386 screen | \
sudo yum -y install glibc libstdc++ screen libcurl | sudo yum -y install glibc.i686 libstdc++.i686 screen libcurl.i686


cd /usr/lib
ln -s libcurl.so.4 libcurl-gnutls.so.4
cd /usr/lib64
ln -s libcurl.so.4 libcurl-gnutls.so.4
cd ~


mkdir ~/steamcmd
cd ~/steamcmd

wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar -xvzf steamcmd_linux.tar.gz
./steamcmd.sh +login anonymous +force_install_dir ~/dst +app_update 343050 validate +quit

cp ~/steamcmd/linux32/libstdc++.so.6 ~/dst/bin/lib32/

#Abandon the use of script execution, and change to execute directly through java code
#cd ~/dst/bin
#echo ./dontstarve_dedicated_server_nullrenderer -console -cluster MyDediServer -shard Docker_M > overworld.sh
#echo ./dontstarve_dedicated_server_nullrenderer -console -cluster MyDediServer -shard Docker_C > cave.sh
#
#chmod +x overworld.sh
#chmod +x cave.sh

mkdir -p ~/.klei/DST_1/Cluster_1

cd ~



