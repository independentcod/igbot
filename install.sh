#!/usr/bin/bash
apt update && apt install lxde-core tigervnc-standalone-server python python-pip leafpad -y;
pip3 install -r requirements.txt;
mkdir ~/.vnc;
echo lxsession >~/.vnc/xstartup;
vncserver :1 -localhost no;
export DISPLAY=:1;
leafpad run.py;
python run.py;
