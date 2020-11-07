#!/bin/bash

#install tools
sudo dpkg --add-architecture i386
sudo apt update && apt upgrade -y
sudo apt install -y openjdk-11-jdk build-essential gdb vim git ipython ipython3 tmux strace ltrace ruby-full apt-utils xinetd python python3 python3-pip libc6:i386 libncurses5:i386 libstdc++6:i386 netcat checksec
sudo apt-get install rubygems

#install pwndbg & other tools
git clone https://github.com/pwndbg/pwndbg.git && cd pwndbg && ./setup.sh
pip3 install pwntools regex
sudo gem install one_gadget

unzip ghidra_9.1.2_PUBLIC_20200212.zip
cd ghidra_9.1.2_PUBLIC
