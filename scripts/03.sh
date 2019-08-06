#!/bin/bash

menu() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~"	
	echo " 		Khimya Installer"
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	echo "1. Install Homebrew"
	echo "2. Uninstall Homebrew"
	echo "3. Install Valgrind  >>>  install Homebrew first !"
	echo "4. clear 42 Cach"
	echo "5.Exit"
}
options(){
	local choice
	read -p "Write your choice   " choice
	case $choice in
		1) curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh ;;
		2) cd ~/ | rm -rf .brewconfig;;
		3) brew install valgrind;;
		4) rm -rf ~/library/*42*;;
		5) exit 0;;
	esac
}

trap '' SIGINT SIGQUIT SIGTSTP

while true
do

	menu
	options
done
