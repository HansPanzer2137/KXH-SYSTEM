
# Basic shell for KXH research beta designed shell for Linux

# Path: include\basic.sh
#!/bin/bash

# check if user run on Android
if [ -d "/data/data/com.termux" ]; then
    echo "You are running on Android"
    system = "Android"
    source include/termux.sh
fi

# check if user run on Linux
if [ uname -a | grep -i "linux" ]; then
    echo "You are running on Linux"
    system = "Linux"
fi

#run basic shell
if [ "$system" = "Linux" ]; then
    if [ "$EUID" -ne 0 ];then 
        echo "Please run as root"
        exit 1
    fi
    source include/shell.sh
fi

