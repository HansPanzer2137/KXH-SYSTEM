
# basic client net shell for KXH-SYSTEM 0.1
#connect over port 20220 to server
# Path: include\net\client.bash
# Compare this snippet from include\shell.sh:

#!/bin/bash

alias cls='printf "\033c"'
source include/colors.sh

#comunicat over port 20231 with server

socket_client(){
    echo "Starting socket client..."
    
    #test connection to server on port 20220
    #first print all host in network
    #then try to connect to server that user choose
    #if connection is succesfull then start client shell
    #else print error message and exit

    #print all interfaces in network

    echo "Scanning for devices on the network..."
    
    #print all host in network with numbers to choose

    echo "Devices found: $IPS_UP"
    echo "Choose device to connect: "
    read -p "KXH-RESEARCH> " device_number

    #check if device number is correct and if it is then connect to server

    if [ $device_number -gt 0 ] && [ $device_number -lt 10 ]; then
        echo "Connecting to server..."

        #connect to server declared in variable $device_number

        
        echo "Connected to server"


    else
        echo "Device number is incorrect"
        exit
    fi
}

socket_client