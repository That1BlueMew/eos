#!/bin/bash

#not been tested yet so don't use it

cd $HOME
#install the stuff i need
sudo pacman -Syu -y
sudo pacman -Syu yay -y
sudo pacman -Syu gtk2 -y
sudo pacman -Syu libappindicator-gtk2 -y
sudo pacman -Syu libappindicator-gtk3 -y
sudo pacman -Syu gnome-shell-extension-appindicator -y
sudo pacman -Syu vlc -y
sudo pacman -Syu discord -y

#get flatpak runtime installed
sudo pacman -Syu flatpak -y

flatpak install anydesk spotify bitwarden 
 
#aur packages i need
yay -Syu update-grub timeshift minecraft-launcher google-chrome vpn-unlimited -y

#nvidia drivers installer
sudo pacman -Syu nvidia-installer-dkms
sudo nvidia-installer-dkms
sudo pacman -Syu gamemode -y  

sudo pacman -Syu steam -y

#enable bluetooh
sudo systemctl enable --now bluetooth

#make the swap bigger 
sudo swapoff /swapfile
sudo rm -f /swapfile
sudo dd if=/dev/zero of=/swapfile bs=1M count=16000 status=progress
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
reboot



