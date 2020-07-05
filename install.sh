#!/bin/sh 
echo "Install Luma.core drivers"
apt update --fix-missing
apt install python3.7-dev python3-pip libfreetype6-dev libjpeg-dev -y
pip3 install --upgrade luma.oled
pip3 install --upgrade luma.core
echo "Create directory"
mkdir /root/BeBoXGui/
echo "Copying files"
cp *.py /root/BeBoXGui/
mkdir /root/BeBoXGui/images/
cd images
cp * /root/BeBoXGui/images/
echo "Copying run script in local P4wnP1 script"
cd ..
cp scripts/runmenu.sh /usr/local/P4wnP1/scripts/
cp update.sh /root/BeBoXGui/
mkdir /root/BeBoXGui/nmap
chmod +x /root/BeboXGui/update.sh
echo "All files are ready"
echo "to run with P4wnP1 boot"
echo "Go thru web interface"
echo "Go in trigger section"
echo "Create new trigger"
echo "on service start :"
echo "run script sh and choose "
echo "runmenu.sh"
echo "Enjoy"
echo "by default gui.py use SPI interface"
echo "if you use I2C oled edit gui.py"
echo "and set I2C_USER = 1"

