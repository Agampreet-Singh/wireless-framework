#!/bin/bash

cyan="\e[1;36m"
g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"
red='\e[1;31m'
yellow='\e[1;33m'
orange='\e[38;5;166m'
green='\e[1;32m'


if [[ $(/usr/bin/id -u) -ne 0 ]];
then
echo -e "$red This tool run as a root / ROOT REQUIRED "
exit
else
echo ""
echo -e "$green ROOT ACCESS CONFIRM .."
echo ""
sleep 1
fi

echo -e "\e[1;32m [*] CHECKING REQUIREMENTS .. INSTALL OR NOT .."
sleep 2
#check it if nmap Install or not
###########

which nmap > /dev/null 2>&1
if [ "$?" -eq "0" ] ; then
echo -e $green "[ ✔ ] Nmap ((((((((())))))))))${LighGreenF}[ Already Installed ] "
                                                    
which nmap > /dev/null 2>&1
sleep 2
else
echo -e $red "[ X ] Nmap (((((((())))))) ${RedF}not Installed "
sleep 2
echo -e $yellow "[ ! ] Installing Nmap ...."
sleep 2
sudo apt install nmap
echo -e $b " [ ✔ ] Done installing .... "

which nmap > /dev/null 2>&1
sleep 2
fi

#check it if aircrack-ng install or not
##########

                          
which aircrack-ng > /dev/null 2>&1
if [ "$?" -eq "0" ] ; then
echo -e $green "[ ✔ ] Aircrack-ng (((((((()))))))) ${LighGreenF}[ Already Installed ] "
which aircrack-ng > /dev/null 2>&1                                
sleep 2
else
echo -e $red "[ X ] Aircrack-ng (((((((()))))))  ${RedF}not Installed "
sleep 2                               
echo -e $yellow "[ ! ] Installing Aircrack-ng ...."
sleep 2
sudo apt install aircrack-ng
echo -e $b " [ ✔ ] Done installing .... "

which aircrack-ng > /dev/null 2>&1
sleep 2
fi

#check it if hciconfig install or not
######

which hciconfig > /dev/null 2>&1
if [ "$?" -eq "0" ] ; then
echo -e $green "[ ✔ ] Hciconfig (((((((()))))))) ${LighGreenF}[ Already Installed "
                                       
which hciconfig > /dev/null 2>&1
sleep 2
else

echo -e $red"[X ] hciconfig (((((((()))))))  ${RedF}not Installed "
sleep 2
echo -e $yellow "[ ! ] Installing hciconfig ...."
sleep 2
sudo apt install bluez
echo -e $b "[ ✔ ] Done installing .... "
                        
which hciconfig > /dev/null 2>&1
sleep 2
fi


#bluesnarfer install or not check
########

which bluesnarfer > /dev/null 2>&1
if [ "$?" -eq "0" ] ; then
echo -e $green "[ ✔ ] BlueSnarfer (((((((()))))))) ${LighGreenF}[ Already Installed "

which bluesnarfer > /dev/null 2>&1
sleep 2
else

echo -e $red"[X ] BlueSnarfer (((((((()))))))  ${RedF}not Installed "
sleep 2
echo -e $yellow "[ ! ] Installing BlueSnarfer .... "
sleep 2
sudo apt install bluesnarfer
echo -e $b "[ ✔ ] Done installing .... "

which bluesnarfer > /dev/null 2>&1
sleep 2
fi





#check it if mitmf Install or not
##########

which mitmf > /dev/null 2>&1
if [ "$?" -eq "0" ] ; then
echo -e $green "[ ✔ ] ((((((((((())))))))))]${LighGreenF}[ Already Installed ] "
                                               
which mitmf > /dev/null 2>&1
sleep 2

else

echo -e $red "[ X ] MITMF ((((((((()))))))))) ${RedF}not Installed "
sleep 2
echo -e $yellow "[ ! ] Installing MITMF ...."
sleep 2

sudo apt install python2-dev python-setuptools libpcap0.8-dev libnetfilter-queue-dev libssl-dev libjpeg-dev libxml2-dev libxslt1-dev libcapstone4 libcapstone-dev libffi-dev file

curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py

python get-pip.py

pip2 install virtualenvwrapper

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python

source `which virtualenvwrapper.sh`

mkvirtualenv MITMf -p /usr/bin/python2.7

git clone https://github.com/byt3bl33d3r/MITMf

cd MITMf && git submodule init && git submodule update --recursive

pip2 install -r requirements.txt

pip2 install pyinotify configobj twisted pillow pefile python-magic capstone

echo -e $b " [ ✔ ] Done installing .... "

which mitmf > /dev/null 2>&1
sleep 2
fi




echo ""
echo -e "
$b ________________________________________________________
$green    TYPE : bash wireless-framework.sh
$b ________________________________________________________
"
