#!/bin/bash

cd

#add arch for 32 bit
sudo dpkg --add-architecture i386

#install other libraries
sudo apt install -y libc6:i386 libc6-dbg:i386 libncurses5:i386 libstdc++6:i386 gcc-multilib

#tools and addons
sudo apt install -y build-essential xinetd netcat nasm net-tools

#python
sudo apt install -y python2 ipython3 python3-pip

#jdk
sudo apt install -y openjdk-11-jdk openjdk-11-jre-headless

#dev tools
sudo apt install -y vim tmux valgrind

#ruby for reasons...
sudo apt install -y ruby-full

#fun pwn things and such
pip3 install pwntools regex pygments

#one_gadget for the rops
sudo gem install one_gadget

#pwndbg install
git clone https://github.com/pwndbg/pwndbg.git && ./pwndbg/setup.sh

#split mind for cool and helpful gdb looks
git clone https://github.com/jerdna-regeiz/splitmind

#ghidra install
wget https://ghidra-sre.org/ghidra_9.2_PUBLIC_20201113.zip




sudo apt install -y wireshark
sudo dpkg-reconfigure wireshark-common
sudo usermod -a -G wireshark $USER
