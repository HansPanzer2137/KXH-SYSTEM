#Linux based shell  for KXH research beta designed shell for Linux

# Path: include\shell.sh
#!/bin/bash

alias cls='printf "\033c"'
source include/colors.sh


standard(){
    line1="${Red}.%%..%%..%%..%%..%%..%%..........%%%%%...%%%%%%...%%%%...%%%%%%...%%%%....%%%%...%%..%%.${Color_Off}"
    line2="${Green}.%%.%%....%%%%...%%..%%..........%%..%%..%%......%%......%%......%%..%%..%%..%%..%%..%%.${Color_Off}"
    line3="${Yellow}.%%%%......%%....%%%%%%..%%%%%%..%%%%%...%%%%.....%%%%...%%%%....%%%%%%..%%......%%%%%%.${Color_Off}"
    line4="${Blue}.%%.%%....%%%%...%%..%%..........%%..%%..%%..........%%..%%......%%..%%..%%..%%..%%..%%.${Color_Off}"
    line5="${Purple}.%%..%%..%%..%%..%%..%%..........%%..%%..%%%%%%...%%%%...%%%%%%..%%..%%...%%%%...%%..%%.${Color_Off}"
    line6="${Cyan}........................................................................................${Color_Off}"

    clear

    for line in $line1 $line2 $line3 $line4 $line5 $line6 
    do
        echo -e "$line" 
    done

    echo -e "\n\n${On_Blue}KXH research beta designed shell for Linux${Color_Off}"
    echo -e "${BWhite}Version 0.1${Color_Off}"
    echo -e "${BWhite}Created by KXH-RESEARCH FUNDATION${Color_Off}\n\n\n"

}


source include/colors.sh

while true; do
    read -p "KXH-RESEARCH> " command
    case $command in
        "help" ) echo "help";;
        "exit" ) exit;;
        "clear") cls; standard;;
        
        #you can run system commands here like system(something)

        "system("*) echo "System commands soon!";;

        * ) echo "Command not found";;
    esac
done