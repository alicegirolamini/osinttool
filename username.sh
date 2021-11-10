#!/bin/sh
username=$(awk -F "=" '/username/ {print $2}' target.ini)


while :
do
tput bold
echo "List of username search tools:"
tput sgr0
		echo "1 sherlock"
		echo "2 maigret"
		echo "3 osintgram - on instagram profile"
                echo "4 fbi - on facebook profile"
                echo "5 whatsmyname"
                echo "6 QueryTool"
                echo "exit"

read -p ">> " INPUT_STRING
  case $INPUT_STRING in
	1)if [ -d sherlock ]; then 
	gnome-terminal -- /bin/sh -c  \
  'cd sherlock; python3 sherlock "$1" ;exec bash' \
  sh "$username"
              else git clone https://github.com/sherlock-project/sherlock.git
gnome-terminal -- /bin/sh -c  \
  'cd sherlock;python3 -m pip install -r requirements.txt; python3 sherlock "$1" -all;exec bash' \
  sh "$email"
fi
clear
		;;
		
	
	2)    if [ -d maigret ]; then
	gnome-terminal -- /bin/sh -c  \
  'cd maigret; python3 maigret.py "$1" ;exec bash' \
  sh "$username"
	else git clone https://github.com/soxoj/maigret
              gnome-terminal -- /bin/sh -c  \
  'cd maigret;pip3 install -r requirements.txt; python3 maigret.py "$1" -all;exec bash' \
  sh "$email"
            
fi
	clear	
		;;
        3) if [ -d Osintgram ]; then
        gnome-terminal -- /bin/sh -c  \
  'cd Osintgram; python3 main.py "$1" ;exec bash' \
  sh "$username"
        
        else git clone https://github.com/Datalux/Osintgram.git
     gnome-terminal -- /bin/sh -c  \
  'cd Osintgram;pip install -r requirements.txt;clear; echo "Enter your credentials before launching the program"; cd config; gedit credenziali.ini; cd ..; python3 main.py "$1" ;exec bash' \
  sh "$email"

fi
clear
;;
        4)    if [ -d fbi ]; then
        
       gnome-terminal -- /bin/sh -c  \
  'cd fbi; python2 fbi.py "$1" ;exec bash' \
  sh "$username"
        
        else git clone https://github.com/xHak9x/fbi.git 
gnome-terminal -- /bin/sh -c 'cd fbi;apt update && apt upgrade: apt install git python2; pip2 install -r requirements.txt; clear; python2 fbi.p;  exec bash'
fi
clear
;;
        5) clear
        echo ""
        echo https://whatsmyname.app/
        echo ""
        ;;
        

        6) clear
        echo ""
        echo https://github.com/oryon-osint/querytool
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
echo "That's all folks!"
