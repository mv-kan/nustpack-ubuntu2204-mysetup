#!/bin/bash
RETRIES=10
sudo echo "WARNING close Firefox app, otherwise this script will fail"
sudo echo "WARNING Please go to ./config and change fill it with info. Without password this setup would not be able to do all configuration"
if [ ! -f ./nust ]; then
    /bin/bash nust.bash
fi
./nust aptupdate.bash -r ${RETRIES}
./nust unsnap.bash
./nust chrome.bash -r ${RETRIES}
./nust vscode.bash -r ${RETRIES} 
./nust git.bash -r ${RETRIES}
./nust xmind.bash -r ${RETRIES}
./nust neovim.bash -r ${RETRIES}
./nust gnome-console.bash -r ${RETRIES}
./nust zsh.bash -r ${RETRIES} 
./nust gnome-clipboard.bash -r ${RETRIES}
echo "FINISHED, after rebooting please enter"
echo "gnome-extensions enable clipboard-indicator@tudmotu.com"
echo "to enable clipboard extension"
gnome-extensions enable clipboard-indicator@tudmotu.com