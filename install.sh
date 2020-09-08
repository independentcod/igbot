#!/usr/bin/bash
apt update && apt install lxde-core tigervnc-standalone-server python3 python3-pip kwrite -y;
pip3 install -r requirements.txt;
mkdir ~/.vnc;
echo lxsession >~/.vnc/xstartup;
vncserver :1 -localhost no;
export DISPLAY=:1;
kwrite run.py;
python3 run.py;
