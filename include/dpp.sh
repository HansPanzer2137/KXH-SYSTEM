# DPP file for KXH research beta designed shell for Linux

# Path: include\dpp.sh
#!/bin/bash
source include/colors.sh

width=$(($COLUMNS))
height=$(($LINES))

halfheight=$(($height/2))


# write function for writing in center of screen progress bar and in bootom on screen write actual  package name and status of exist or not

drone_status(){
    #print drone_basic file
    cat include/drone_basic

    echo -e "${BWhite}Drone system status:${Color_Off} ${Green}online${Color_Off}"
    echo -e "${BWhite}Drone system version:${Color_Off} ${White}0.1${Color_Off}"
    echo -e "${BWhite}Drone system name:${Color_Off} ${White}KXH-RESEARCH${Color_Off}"
    echo -e "${BWhite}Drone system type:${Color_Off} ${White}CLass K${Color_Off}"
    echo -e "${BWhite}Drone system OS:${Color_Off} ${White}Linux${Color_Off}"
    echo -e "${BWhite}Drone system OS version:${Color_Off} ${White}KXH Linux-based OS${Color_Off}"
}

loading_bar(){
    #set cursor to center of screen
    tput cup $halfheight 0
    loading_char = "█"
    lenght = 0
    max_lenght = 100
    step = 20


}
#TODO: add loading bar function



# print drone system info and status




# basic shell for drone system
while true; do
    read -p "KXH-RESEARCH/drone-system> " command
    case $command in
        "help" ) echo "help";;
        "exit" ) break;;
        "exit --all") exit;;
        "clear") cls;;
        "drone-status" ) drone_status;;
        * ) echo "Command not found";;
    esac
done

