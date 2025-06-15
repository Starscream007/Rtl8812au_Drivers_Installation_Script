#!/bin/bash

#Welcome to the rtl8812au drivers installation script by $tar$cream

#Don't forget to enter chmod +x wifi.sh to use it.

#This linux header is for Kali, if you need another one please enter the command:'apt-cache search linux-headers' on our sytem, then select the first result and change it in the 'Installing Linux Header' section. 

echo -e "\n[+] Hello, Welcome and let's get started shall we..."
sleep 5 

echo -e "\n============Checking updates=================="
sudo apt update 

cd /opt;

echo -e "\n===============Installing dkms================"
sudo apt install -y dkms

echo -e "\n==========Installing rtl88xxau-dkms==========="
sudo apt install -y realtek-rtl88xxau-dkms

echo -e "\n=========Installing Linux header=============="
echo "[+] Building all modules, be patient please.."
sudo apt install -y linux-headers-6.12.25-amd64 

echo -e "\n===========Git cloning ein progress============"
sudo git clone https://github.com/aircrack-ng/rtl8812au

cd rtl8812au;

echo -e "\n==============Building files=================="
echo "[+] Can take time to build all files, take a drink and be patient it's almost done.."
sudo make && make install

echo -e "\n[+] It's Done, it will reboot your system now to finish it completly, don't panic it's normal, thanks for using my script...."

echo -e "\n[+] Press e to exit and skip the reboot..."
sleep 5

read input
if [ "$input" == "e" ]; then
echo -e "\n[+] Good bye and don't forget to do your reboot manually.."
   exit
else 
   reboot
fi


