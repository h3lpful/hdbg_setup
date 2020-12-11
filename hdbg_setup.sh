#!/bin/bash

#install add arch for 32 bit
sudo dpkg --add-architecture i386

#ensure we are up to date
sudo apt update && upgrade -y

#important system stuffs for programming
sudo apt install -y build-essential libc6:i386 libc6-dbg:i386 libncurses5:i386 libstdc++6:i386  
sudo apt install -y apt-utils xinetd netcat gcc-multilib nasm net-tools

#all of the python things
sudo apt install -y ipython ipython3 python python3 python3-pip 

#open jdk for ghidra later
sudo apt install -y openjdk-11-jdk openjdk-11-jre-headless

#debugging and my favorite dev tools
sudo apt install -y gdb vim tmux
 

#ruby because reasons
sudo apt install -y ruby-full
sudo apt-get install rubygems

#install pwndbg & other tools
git clone https://github.com/pwndbg/pwndbg.git && cd pwndbg && ./setup.sh
cd ..
pip3 install pwntools regex

#one_gadget for the easy rops
sudo gem install one_gadget

#splitmind for cool looking gdb
git clone https://github.com/jerdna-regeiz/splitmind
cp .gdbinit ../.gdbinit

# i honestly cant remember what this is for, so ill leave it
pip3 install pygments

# install valgrind
sudo apt install -y valgrind

# install wireshark
sudo apt install -y wireshark

# yes - should superusers be able to capture packets
sudo dpkg-reconfigure wireshark-common
sudo usermod -a -G wireshark $USER
# need to restart in order for non-super user packet capture

# install ltrace
sudo apt install -y ltrace

# install strace
sudo apt install -y strace

# install ghidra
wget https://ghidra-sre.org/ghidra_9.2_PUBLIC_20201113.zip
unzip ghidra_9.2_PUBLIC_20201113.zip
rm ghidra_9.2_PUBLIC_20201113.zip
sudo mv ghidra_9.2_PUBLIC /home/helpful/Desktop/ghidra
sudo ln -s /home/helpful/Desktop/ghidra/ghidraRun /bin/ghidra
# now typing ghidra from the cmd line will start ghidra

# install checksec
sudo wget http://www.trapkit.de/tools/checksec.sh
sudo mv checksec.sh /usr/bin/checksec
sudo chmod +x /usr/bin/checksec
rm checksec.sh

#install intel manual
wget -O intel_manual.pdf https://software.intel.com/content/dam/develop/public/us/en/documents/325462-sdm-vol-1-2abcd-3abcd.pdf

#install python documentation
wget -O pydocs.zip https://docs.python.org/3.8/archives/python-3.8.5-docs-html.zip
unzip pydocs.zip
rm pydocs.zip

# reboot
sudo reboot
