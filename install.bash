#!/bin/bash
echo "WARNING close Firefox app, otherwise this script will fail"
./nust aptupdate.bash
./nust unsnap.bash
./nust chrome.bash
./nust vscode.bash
./nust git.bash
./nust xmind.bash
./nust neovim.bash
./nust gnome-console.bash
./nust gnome-clipboard.bash
./nust zsh.bash