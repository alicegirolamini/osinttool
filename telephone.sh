#!/bin/sh
telephone=$(awk -F "=" '/telephone/ {print $2}' target.ini)


while :
do
tput bold
echo "List of telephone search tools:"
tput sgr0
		echo "1 SyncMe"
           
                echo "exit"

read -p ">> " INPUT_STRING
  case $INPUT_STRING in
	1) clear
	echo ""
	echo https://sync.me/it/
	echo ""
		;;
		
	
             
               
        exit)	clear
                break;;
	*)clear
	
		echo "Sorry, I don't understand"
		echo ""
  esac
done
echo 
