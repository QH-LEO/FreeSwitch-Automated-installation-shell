#!/bin/sh
cd ~
wget http://files.freeswitch.org/freeswitch-releases/freeswitch-1.8.1.tar.gz
tar -zxvf freeswitch-1.8.1.tar.gz -C ~/
cd freeswitch-1.8.1
apt install -y autoconf
apt install -y git
apt install -y libtool
apt install -y g++
apt install -y zlib1g-dev
apt install -y libjpeg-dev
apt install -y libsplite3-dev
apt install -y libcurl4-openssl-dev
apt install -y libpcre3-dev
apt install -y libspeex-dev
apt install -y libspeexdsp-dev
apt install -y libldns-dev
apt install -y libedit-dev
apt install -y libssl-dev
apt install -y pkg-config
apt install -y yasm
apt install -y liblua50-dev
apt install -y libopus-dev
apt install -y libsndfils1-dev
apt install -y libpq-dev
apt install -y libreadline-dev
apt install -y lua5.2
apt install -y lua5.2-doc
apt install -y liblua5.2-dev
apt install -y libtiff5
apt install -y libtiff5-dev
apt install -y sqlite3
apt install -y libsndfile-dev
mkdir ~/free_libs
wget http://www.sqlite.org/2015/sqlite-autoconf-3080800.tar.gz
tar -zxvf ./sqlite-autoconf-3080800.tar.gz -C ~/free_libs
cd ~/free_libs/sqlite-autoconf-3080800
./configure
make
make install
cd ~/freeswitch-1.8.1
./configure
make
//you can install sounds files in here.
make install
ln -sf /usr/local/freeswitch/bin/freeswitch /usr/bin
ln -sf /usr/local/freeswitch/bin/fs_cli /usr/bin
