#!/bin/bash

cd ~

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
sudo apt install -y vim tmux valgrind docker docker.io

#ruby for reasons...
sudo apt install -y ruby-full

#fun pwn things and such
pip3 install pwntools regex pygments

#symlink all pwn binaries and other goodies
sudo ln -s $PWD/.local/bin/* /bin/

#one_gadget for the rops
sudo gem install one_gadget

#pwndbg install
git clone https://github.com/pwndbg/pwndbg.git
~/pwndbg/setup.sh

#split mind for cool and helpful gdb looks
git clone https://github.com/jerdna-regeiz/splitmind

#ghidra install
wget https://ghidra-sre.org/ghidra_9.2_PUBLIC_20201113.zip
unzip ghidra_9.2_PUBLIC_20201113.zip
rm ghidra_9.2_PUBLIC_20201113.zip
sudo mv ghidra_9.2_PUBLIC /opt/ghidra
sudo ln -s /opt/ghidra/ghidraRun /bin/ghidra

#wireshark install (not sure if second line is necessary)
sudo apt install -y wireshark
sudo dpkg-reconfigure wireshark-common
sudo usermod -a -G wireshark $USER

#install intel manual
wget -O intel_manual.pdf https://software.intel.com/content/dam/develop/public/us/en/documents/325462-sdm-vol-1-2abcd-3abcd.pdf

#install python documentation
wget -O pydocs.zip https://docs.python.org/3.8/archives/python-3.8.5-docs-html.zip
unzip pydocs.zip
rm pydocs.zip

#move my configs
cp ~/hdbg_setup/.gdbinit .gdbinit

# reboot
sudo reboot
