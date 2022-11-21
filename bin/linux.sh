#!/bin/bash

CURR_OS=$(uname)    #sets current os to linux
if [[ "$CURR_OS" != *"Linux"* ]]; then           #checks if the current os is linux
	echo "error" >> linuxsetup.log                    #adds error to linuxsetup.og
        exit                                         #exits the script

else                                                   #if current os is linux
        mkdir ~/.TRASH                            #makes a trash directory
        mv ~/.vimrc ~/.bup_vimrc     #moves the current home vimrc to bup_vimrc
        echo "successfully changed .vimrc to .bup_vimrc" >> linuxsetup.log #appends this message to linuxsetup
	cat ~/.dotfiles/etc/vimrc > ~/.vimrc                    # puts the contents of the vimrc in the dotfiles into the vimrc in the home directory
        echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc     #appends the message to the bashrc in the home directory

fi #end of script
