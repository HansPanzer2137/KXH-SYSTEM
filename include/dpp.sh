# DPP file for KXH research beta designed shell for Linux

# Path: include\dpp.sh
#!/bin/bash
source include/colors.sh

width=$(($COLUMNS))
height=$(($LINES))

halfheight=$(($height/2))


# write function for writing in center of screen progress bar and in bootom on screen write actual  package name and status of exist or not


                                                                                                                       
                                                                                                                        


for FILE in include/colors.sh include/dpp.sh include/basic.sh include/termux.sh
do  


    if test -f "$FILE"; then
        echo -e "File $FILE ${Green}exists.${Color_Off}"
        
    else
        echo -e "File $FILE ${Red}not exist.${Color_Off}"
        exit 1
    fi
done

#init gui

cat include/drone_basic


# print drone system info and status

echo -e "${BWhite}------Drone system info and status-----${Color_Off}"
echo -e "${BWhite}Drone system status:${Color_Off} ${Red}offline${Color_Off}"
echo -e "${BWhite}Drone system version:${Color_Off} ${White}0.1${Color_Off}"
echo -e "${BWhite}Drone system name:${Color_Off} ${White}KXH-RESEARCH${Color_Off}"
echo -e "${BWhite}Drone system type:${Color_Off} ${White}CLass K${Color_Off}"
echo -e "${BWhite}Drone system OS:${Color_Off} ${White}Linux${Color_Off}"
echo -e "${BWhite}Drone system OS version:${Color_Off} ${White}KXH Linux-based OS${Color_Off}"




