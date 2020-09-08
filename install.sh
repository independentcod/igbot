#!/usr/bin/bash
echo 'This repo is made for Kali Chroot in Termux!';
cp -r /etc/apt/sources.list sources.list.bak;
echo deb http://ftp.debian.org/debian unstable main contrib non-free >/etc/apt/sources.list;
apt-get clean;
apt update && apt install lxde-core tigervnc-standalone-server python3 libpython3-dev python3-pip leafpad -y;
cp -r sources.list.bak /etc/apt/sources.list;
apt-get clean;
pip3 install -r requirements.txt;
mkdir ~/.vnc;
echo lxsession >~/.vnc/xstartup;
vncserver :1 -localhost no;
export DISPLAY=:1;
leafpad run.py;
python3 run.py;
