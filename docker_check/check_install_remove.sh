#!/bin/bash

apt-get update
apt-get -y install python3-pip systemd
LC_CTYPE="en_US.UTF-8" pip3 install --trusted-host pypi.douban.com -i http://pypi.douban.com/simple/ pandas
cd /docker_check_pkgs_open/test_open_app/docker_check
#python3 get_sourcelist.py
#mv /etc/apt/sources.list /etc/apt/sources.list.bak
#mv base.list /etc/apt/sources.list.d/
#mv rpa.list /etc/apt/sources.list.d/
#mv upstream.list /etc/apt/sources.list.d/
apt-get -y update
env
export LANG=en_US.UTF-8
export DBUS_SESSION_BUS_ADDRESS="$(dbus-daemon --session --print-address --fork)"
dbus-daemon --system
python3 docker_check_apps.py
cat pkgs.info
