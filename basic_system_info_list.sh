#! /bin/bash

#this script provides basic info about system & services

echo 'this script will provide you some basic information about the system you are working on & services: \n'

echo "you are working under $USER user & your default directory in shell is $HOME "

echo '------------------------------'
echo 'your kernel & OS version are: '
uname -a
echo '------------------------------'
echo 'your system has been running for almost: '
uptime
echo '------------------------------'
echo 'your hostname is: '
hostnamectl
echo '------------------------------'
echo "you are using $SHELL shell by default: "
echo '------------------------------'
echo "here is the list of your files & directories in $PWD: "
ls -al
echo '------------------------------'
echo 'here is your timezone iformation: '
timedatectl status
echo '------------------------------'
echo 'here is services list which were not able to autostart: '
systemctl --state=failed
echo '------------------------------'
echo '------------------------------'
echo 'network information: '
ip a
echo '------------------------------'
ip route
echo '------------------------------'
echo '------------------------------'
echo 'Hardware list: '
sudo hwinfo --short
echo '------------------------------'
echo '------------------------------'
echo 'error logs'
sudo journalctl -p err
echo '------------------------------'
echo 'This is the end of the script'
