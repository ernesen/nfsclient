#!/usr/bin/env bash

# SettingUpNFSHowTo
# https://help.ubuntu.com/community/SettingUpNFSHowTo

sudo apt-get update && sudo apt-get upgrade
sudo apt install nfs-common -y

sudo mount -t nfs4 -o proto=tcp,port=2049 192.168.99.103:/ /mnt

sudo echo "192.168.99.103:/   /mnt   nfs    auto  0  0" >> /etc/fstab
#sudo echo "192.168.99.103:/var/jenkins_home /var/jenkins_home nfs rsize=8192,wsize=8192,timeo=14,intr" >> /etc/fstab

