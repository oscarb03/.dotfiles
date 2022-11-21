#!/bin/bash
rm ~/.vimrc        #removes vimrc in the home directory
sed 's+source ~/.dotfiles/etc/bashrc_custom++' ~/.bashrc > ~/.bashrc    #removes the appended line at the bottom of the bashrc file 
rm -r ~/.TRASH                                     #Removes the trash directory

