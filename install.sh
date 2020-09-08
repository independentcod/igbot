#!/usr/bin/bash
echo 'This repo is made for Kali Chroot in Termux!';
apt update && apt remove python3 python3-pip --purge -y && apt install lxde-core tigervnc-standalone-server python python-pip leafpad -y;
pip install -r requirements.txt;
mkdir ~/.vnc;
echo lxsession >~/.vnc/xstartup;
vncserver :1 -localhost no;
export DISPLAY=:1;
leafpad run.py;
python run.py;
