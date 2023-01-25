#Linux based shell  for KXH research beta designed shell for Linux

# Path: include\shell.sh
#!/bin/bash

alias cls='printf "\033c"'
source include/colors.sh


standard(){
    line1="${Red}.%%..%%..%%..%%..%%..%%..........%%%%%...%%%%%%...%%%%...%%%%%%...%%%%...%%%%%....%%%%...%%..%%.${Color_Off}"
    line2="${Green}.%%.%%....%%%%...%%..%%..........%%..%%..%%......%%......%%......%%..%%..%%..%%..%%..%%..%%..%%.${Color_Off}"
    line3="${Yellow}.%%%%......%%....%%%%%%..%%%%%%..%%%%%...%%%%.....%%%%...%%%%....%%%%%%..%%%%%...%%......%%%%%%.${Color_Off}"
    line4="${Blue}.%%.%%....%%%%...%%..%%..........%%..%%..%%..........%%..%%......%%..%%..%%..%%..%%..%%..%%..%%.${Color_Off}"
    line5="${Purple}.%%..%%..%%..%%..%%..%%..........%%..%%..%%%%%%...%%%%...%%%%%%..%%..%%..%%..%%...%%%%...%%..%%.${Color_Off}"
    line6="${Cyan}................................................................................................${Color_Off}"

    clear

    for line in $line1 $line2 $line3 $line4 $line5 $line6 
    do
        echo -e "$line" 
    done

    echo -e "\n\n${On_Blue}KXH research beta designed shell for Linux${Color_Off}"
    echo -e "${BWhite}Version 0.1${Color_Off}"
    echo -e "${BWhite}Created by KXH-RESEARCH FUNDATION${Color_Off}\n\n\n"

}

scan(){
    IPS_UP=$(nmap -nsP 192.168.0.0/24 2>/dev/null -oG - | grep "Up$" | awk '{printf "%s ", $2}')
    echo "Scanning for devices on the network..."
    echo "Devices found: $IPS_UP"
}

init_systems(){
    read -p "System name: " system_name
    case $system_name in
        "drone") source include/dpp.sh;;
        "server") source include/server.sh;;
        "client") source include/client.sh;;
        "show systems") echo -e "Avalible systems: \nDrone  [${Green}AVALIBLE${Color_off}]\nServer    [${Red}NOT AVALIBLE${Color_off}]\nClient    [${Red}NOT AVALIBLE${Color_off}]";;
        * ) echo "System not found";;
    esac
}


while true; do
    read -p "KXH-RESEARCH> " command
    case $command in
        "help" ) echo "help";;
        "exit" ) exit;;
        "clear") cls; standard;;
        "system;"* ) $command = $($command | cut -d ";" -f2) | $command;;
        "scan" ) scan;;
        "init" ) init_systems;;
        * ) echo "Command not found";;
    esac
done