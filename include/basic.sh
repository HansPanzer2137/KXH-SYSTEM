
# Basic shell for KXH research beta designed shell for Linux

# Path: include\basic.sh
#!/bin/bash

# check if user run on Android or Linux
system=$(uname -s)

#check if user run on Android or Linux
if [ "$system" = "Linux" ]; then
    source include/colors.sh
fi

#check if user run on Android
if [ "$system" = "Android" ]; then
    source include/termux.sh

fi


#print basic shell info about system, shell, and version
echo -e "${BWhite}------Basic shell info and status-----${Color_Off}"
echo -e "${BWhite}Basic shell status:${Color_Off} ${Green}online${Color_Off}"
echo -e "${BWhite}Basic shell version:${Color_Off} ${White}0.1${Color_Off}"
echo -e "${BWhite}Basic shell name:${Color_Off} ${White}KXH-RESEARCH${Color_Off}\n"

#print system info, ram, cpu, gpu, and os and drone status

echo -e "${BWhite}------System info and status-----${Color_Off}"
echo -e "${BWhite}System status:${Color_Off} ${Red}offline${Color_Off}"
echo -e "${BWhite}System version:${Color_Off} ${White}0.1${Color_Off}"
echo -e "${BWhite}System name:${Color_Off} ${White}KXH-RESEARCH${Color_Off}"
echo -e "${BWhite}System type:${Color_Off} ${White}CLass K${Color_Off}"

#if linux print os
if [ "$system" = "Linux" ]; then
    echo -e "${BWhite}System OS:${Color_Off} ${White}Linux${Color_Off}"
    printf "\n"
    echo -e "${Bwhite} CPU:       ${Color_Off} ${White}$(cat /proc/cpuinfo | grep "model name" | uniq | cut -d ":" -f2)${Color_Off}"
    echo -e "${Bwhite} GPU:       ${Color_Off} ${White}$(sudo lshw -C display | grep "product:" | cut -d ":" -f2)${Color_Off}"
    echo -e "${Bwhite} RAM:${Color_Off} ${White}$(cat /proc/meminfo | grep "MemTotal" | uniq | cut -d ":" -f2)${Color_Off}"
    echo -e "------------------------------------------------------------ \n\n"
fi

if [ "$system" = "Android" ]; then
    echo -e "${BWhite}System OS:${Color_Off} ${White}Android${Color_Off}"
    printf "\n"
    echo -e "${Bwhite} CPU: ${Color_Off} ${White}$(cat /proc/cpuinfo | grep "model name" | uniq | cut -d ":" -f2)${Color_Off}"
    echo -e "${Bwhite} GPU: ${Color_Off} ${White}$(cat /proc/cpuinfo | grep "model name" | uniq | cut -d ":" -f2)${Color_Off}"
    echo -e "${Bwhite} RAM: ${Color_Off} ${White}$(cat /proc/meminfo | grep "MemTotal" | uniq | cut -d ":" -f2)${Color_Off}"
    echo -e "${Bwhite} OS: ${Color_Off} ${White}$(cat /proc/version)${Color_Off}"
    echo -e "${Bwhite} OS version: ${Color_Off} ${White}$(cat /proc/version)${Color_Off}"
    echo -e "${Bwhite} OS name: ${Color_Off} ${White}$(cat /proc/version)${Color_Off}"
    echo -e "${Bwhite} OS type: ${Color_Off} ${White}$(cat /proc/version)${Color_Off}"
    echo -e "${Bwhite} OS status: ${Color_Off} ${White}$(cat /proc/version)${Color_Off}"
    echo -e "------------------------------------------------------------"
fi


read -p "Do you want to install KXH-RESEARCH? [Y/n] " yn
case $yn in
    [Yy]* ) echo -e "Installing KXH-RESEARCH\n\n"; source include/install.sh;;
    [Nn]* ) echo -e "Installation aborted. You are using minimal version of shell\n\n";;
    * ) echo "Please answer yes or no.";;
esac
# run shell in while loop


echo -e "Initializing shell..."
sleep 1
source include/shell.sh


