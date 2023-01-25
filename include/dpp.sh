# DPP file for KXH research beta designed shell for Linux

# Path: include\dpp.sh
#!/bin/bash
source include/colors.sh

width=$(($COLUMNS))
height=$(($LINES))

halfheight=$(($height/2))


# write function for writing in center of screen progress bar and in bootom on screen write actual  package name and status of exist or not


                                                                                                                       
                                                                                                                        
                                                                                                                        
                                                             ^!                                                         
                                                            ^~:!                                                        
                                                           :!  :7.                                                      
                                                          .7    .7.                                                     
                                                          !.     .7.                                                    
                                                         7^       .!:                                                   
                                               ..::^^^^^~7         :?^^^^:::.                                           
                                     ....^^^~^^^^^...   .!         :~   ..:^^^^^^^^^....                                
                           ...:^^^~~^^:..:.             .!         :!             .:..:^^^~^^^:...                      
                 ..:^:.^^^~~^::..                       .!         ^?                       ..::^~^^^:::^:..            
         .::^~^^^^:::.                                  .!         ^?                                  .::^^^^^~^::.    
         7^...                                          .!         ^?                                          ...:!^   
         .7                                             .!         ^?                                             .!    
          ^!                                            :?         ^?                                             !.    
           ~:                                 .......:..^J         :J........                                    ~^     
            !.        .^:::^^~^^^^~^^^^^^~^^~^^~~^^^^^:::?:        ^7^^^:^~~^~^^~^^^^^^~^^^^~^^:::^^^:.         ^!      
            :!         !^......                           !.      :!                        .......::!^        :!       
             ^~        .!                                  7.    ~?                                 .7         7.       
              !^ .:^^^^:^                                  :^^^^~7^                                 :~^^^^:.. !:        
               7~^:..                                                                                   ..::^!~         
                                                                                                                        



for FILE in include/colors.sh include/dpp.sh include/basic.sh include/termux.sh
do  


    if test -f "$FILE"; then
        echo -e "File $FILE ${Green}exists.${Color_Off}"
        

    else
        echo -e "File $FILE ${Red}not exist.${Color_Off}"
    fi
done

