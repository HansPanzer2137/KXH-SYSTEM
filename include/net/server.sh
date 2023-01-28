#Server implementation for KXH-SYSTEM 0.1

# Path: include\net\server.sh
# Compare this snippet from include\shell.sh:
#
#!/bin/bash

alias cls='printf "\033c"'
source include/colors.sh

#run socket server on port 20220

socket_server(){
    echo "Starting socket server..."
    nc -l 20220
}

#odbieraj i wykonuj polecenia od klienta zdalnie (np. z komputera) oraz wysyłaj wyniki do klienta


echo "Starting server..."
echo "Avalible commands: "
