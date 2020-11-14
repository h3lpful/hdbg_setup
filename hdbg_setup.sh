#!/bin/bash

#install tools
sudo dpkg --add-architecture i386
sudo apt update && upgrade -y
sudo apt install -y openjdk-11-jdk build-essential gdb vim git ipython ipython3 tmux ruby-full apt-utils xinetd python python3 python3-pip
sudo apt install -y libc6:i386 libncurses5:i386 libstdc++6:i386 netcat checksec gcc-multilib nasm net-tools
sudo apt-get install rubygems

#install pwndbg & other tools
git clone https://github.com/pwndbg/pwndbg.git && cd pwndbg && ./setup.sh
pip3 install pwntools regex
sudo gem install one_gadget

wget -P ~ https://git.io/.gdbinit
pip3 install pygments

# install valgrind
sudo apt install -y valgrind
# ensure 32-bit libc debug lib is installed
sudo apt install -y libc6-dbg:i386 

# install wireshark
sudo apt install -y wireshark
# yes - should superusers be able to capture packets
sudo dpkg-reconfigure wireshark-common
sudo usermod -a -G wireshark $USER
# need to restart in order for non-super user packet capture

# install netcat
sudo apt install -y netcat

# install ltrace
sudo apt install -y ltrace

# install strace
sudo apt install -y strace

# install ghidra
wget https://ghidra-sre.org/ghidra_9.2_PUBLIC_20201113.zip
unzip ghidra_9.2_PUBLIC_20201113.zip
rm ghidra_9.2_PUBLIC_20201113.zip
sudo apt install -y openjdk-11-jdk
sudo apt install -y openjdk-11-jre-headless
sudo mv ghidra_9.2_PUBLIC /home/helpful/Desktop/ghidra
sudo ln -s /home/helpful/Desktop/ghidra/ghidraRun /bin/ghidra
# now typing ghidra from the cmd line will start ghidra

# install checksec
cd /bin/
sudo wget http://www.trapkit.de/tools/checksec.sh
sudo mv checksec.sh checksec
sudo chmod +x checksec

# install vscode
sudo snap install --classic code

#install intel manual
https://software.intel.com/content/dam/develop/public/us/en/documents/325462-sdm-vol-1-2abcd-3abcd.pdf

#install python documentation
wget -O pydocs.zip https://docs.python.org/3.8/archives/python-3.8.5-docs-html.zip && unzip pydocs.zip && rm pydocs.zip

# reboot
sudo reboot
