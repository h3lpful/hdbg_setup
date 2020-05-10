#!/bin/bash

#install tools
sudo dpkg --add-architecture i386
sudo apt update && apt upgrade -y
sudo apt install -y build-essential gdb vim git ipython ipython3 tmux strace ltrace ruby-full apt-utils xinetd python python3 python3-pip libc6:i386 libncurses5:i386 libstdc++6:i386 netcat

#install pwndbg & other tools
git clone https://github.com/pwndbg/pwndbg.git && cd pwndbg && ./setup.sh
pip3 install pwntools regex
pip install ropgadget
sudo gem install one_gadget
