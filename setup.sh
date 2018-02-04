#!/bin/bash

# Install tools at the system level
sudo add-apt-repository -y ppa:webupd8team/atom
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y \
       git\
       build-essential\
       vim\
       htop\
       tmux\
       nethogs\
       clang\
       fish\
       valgrind\
       libboost-all-dev\
       libgsl-dev\
       python3-dev\
       python-dev\
       gitk\
       ncdu\
       wget\
       stress\
       youtube-dl\
       xclip\
       atom\
       kcachegrind\
       massif-visualizer\
       cmake\
       nmap\
       tcpstat\
       tcpdump\
       wireshark-qt\
       multitail\
       mtr\
       traceroute\
       tig\
       cloc\
       newsbeuter\
       lftp\
       cifs-utils


# Change the login shell
sudo chsh $USER -s /usr/bin/fish

# Update the system pip
pip install -U pip

# Create a python3 virtual environment and install useful python packages.
mkdir ~/python3
cd python3
mkdir venv
virtualenv -p /usr/bin/python3 venv
source venv/bin/activate
pip install\
       pandas\
       numpy\
       scipy\
       sklearn\
       jupyter\
       statsmodels\
       seaborn\
       pymysql\
       sympy\
       ipyparallel
deactivate
cd

# Create a python2 virtual environment and install useful python packages.
mkdir ~/python2
cd python2
mkdir venv
virtualenv -p /usr/bin/python2 venv
source venv/bin/activate
pip install\
      pandas\
      numpy\
      scipy\
      sklearn\
      statsmodels\
      seaborn\
      pymysql

figlet -k DONE!
