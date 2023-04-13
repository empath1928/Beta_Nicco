#!/bin/bash

#Color values
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
RESET='\033[0m'
LIGHT_YELLOW='\e[93m'
LIGHT_CYAN='\033[1;36m'
LIGHT_GRAY='\033[0;37m'
LIGHT_RED='\033[1;31m'
LIGHT_GREEN='\033[1;32m'
LIGHT_BLUE='\033[1;34m'
LIGHT_PURPLE='\033[1;35m'

#Clearing the screen
clear

#Logo function
animated_logo_function() {
    echo -e ${RED}
    str="                                        ▄   ▄ "
    for ((i=0; i<${#str}; i++)); do
    echo -n "${str:$i:1}"
    sleep 0.01
    done
    echo -e ${LIGHT_GRAY} 
    str2="                                        █▀█▀█   
                                        █▄█▄█              
                                         ███  ▄▄    
                                         ████▐█ █    
                                         ████   █    
                            SETUP        ▀▀▀▀▀▀▀  "
    for ((i=0; i<${#str2}; i++)); do
    echo -n "${str2:$i:1}"
    sleep 0.001
    done
    echo -e ${LIGHT_RED}
    str3="                            ░█▄─░█ ─▀─ █▀▀ █▀▀ █▀▀█ 
                            ░█░█░█ ▀█▀ █── █── █──█           
                            ░█──▀█ ▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀▀"                        
    for ((i=0; i<${#str3}; i++)); do
    echo -n "${str3:$i:1}"
    sleep 0.001
    done   
    str4="
                            ________________________"
    for ((i=0; i<${#str4}; i++)); do
    echo -n "${str4:$i:1}"
    sleep 0.001
    done 
    echo -e ${LIGHT_GRAY} 
    str5="                            Author - Anil Shrestha
                            Github - https://github.com/empath1928
                            Facebook - https://www.facebook.com/secrets.1928 "                           
    for ((i=0; i<${#str5}; i++)); do
    echo -n "${str5:$i:1}"
    sleep 0.001
    done
}
# Calling Logo Function
animated_logo_function ; sleep 2 ; echo ; echo ; echo -e ${LIGHT_GREEN}
str="Checking & Downloading all the requirements..." 
for ((i=0; i<${#str}; i++)); do
echo -n "${str:$i:1}"
sleep 0.08
done ; sleep 2 ; echo ; echo -e ${LIGHT_YELLOW}
apt-get install lolcat -y 
apt-get install xterm -y
echo -e ${LIGHT_CYAN}
str="Download is completed of all requirements" 
for ((i=0; i<${#str}; i++)); do
echo -n "${str:$i:1}"
sleep 0.1
done ; sleep 2 ;echo ; echo -e ${LIGHT_GREEN}

#setting up modules
str="Setting up the required modules..."
for ((i=0; i<${#str}; i++)); do
echo -n "${str:$i:1}"
sleep 0.1
done 
#modules
mkdir payloads 
mkdir payloads/windows
mkdir payloads/android
mkdir payloads/mac
mkdir payloads/linux
mkdir modules/msf_module/listner
sleep 2 ; echo ; echo -e ${LIGHT_CYAN}
str="Setting up the modules completed..."
for ((i=0; i<${#str}; i++)); do
echo -n "${str:$i:1}"
sleep 0.1
done ; sleep 2 ; echo ; echo -e ${LIGHT_GREEN}

#Magageing permissions
str="Managing the permissions..."
for ((i=0; i<${#str}; i++)); do
echo -n "${str:$i:1}"
sleep 0.1
done ; sleep 2 ; echo ; echo -e ${LIGHT_CYAN}
chmod +x modules/msf_module/generate/generate_payload.sh 
chmod +x Beta_Nicco.sh

str="Setup is completed sucessfully..."
for ((i=0; i<${#str}; i++)); do
echo -n "${str:$i:1}"
sleep 0.1
done ; sleep 2 ; echo 

#Starting the tool
while true
do
echo -e ${LIGHT_YELLOW}
read -p "Would you like the start the tool now ? (Y/n) ---⋟ " start
if [[ "$start" == "Y" || "$start" == "y" ]]
then
echo -e ${LIGHT_CYAN}
str="Starting the tool..."
for ((i=0; i<${#str}; i++)); do
echo -n "${str:$i:1}"
sleep 0.1
done ; sleep 1 ; clear ; bash Beta_Nicco.sh 

elif [[ "$start" == "N" || "$start" == "n" ]]
then
break ; break

else
echo -e ${LIGHT_RED}
str="Invalid option..."
for ((i=0; i<${#str}; i++)); do
echo -n "${str:$i:1}"
sleep 0.1
done ; echo ; sleep 1
fi
done
