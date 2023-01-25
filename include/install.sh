#install KXH-SYSTEM sub-shell to /usr/bin and add it to the path
#

#!/bin/bash
# Path: include\install.sh

#check if user is root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

ls
cd ..

#copy KXH-SYSTEM to /usr/bin
echo "Copying KXH-SYSTEM to /usr/local/share"
sudo cp -R kxh-system /usr/local/share


echo "Adding KXH-SYSTEM to the path"

#add KXH-SYSTEM to the path
echo 'export PATH="/usr/local/share/kxh-system:$PATH"' >> ~/.profile
echo 'export PATH="/usr/local/share/kxh-system/include:$PATH"' >> ~/.profile 

echo $PATH

#reload bashrc
echo "Reloading bashrc"

source ~/.profile


echo "KXH-SYSTEM installed successfully"
echo "To run KXH-SYSTEM sub-shell type 'KXH-SYSTEM' in terminal"
#run KXH-SYSTEM
kxh-system


