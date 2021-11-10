#!/bin/sh
domain=$(awk -F "=" '/domain/ {print $2}' target.ini)


while :
do
echo "List of domain search tools:"
		echo "1 theHavester"
		echo "2 Infoga"
	
              
                echo "exit"

read -p ">> " INPUT_STRING
  case $INPUT_STRING in
	1)if [ -d theHarvester ]; then 
	gnome-terminal -- /bin/sh -c  \
  'cd theHarvester; python3 theHarvester.py -d $1 -b google;exec bash' \
  sh "$domain"
              else git clone https://github.com/laramies/theHarvester 
              
gnome-terminal -- /bin/sh -c  \
  '
; cd theHarvester;pip3 install -r requirements.txt; clear; python3 theHarvester.py -d $1 -b google;exec bash' \
  sh "$domain"
fi
	clear
		;;
		
	
	2) if [ -d Infoga ]; then 
	gnome-terminal -- /bin/sh -c  \
  'cd Infoga; python3 infoga.py -d $1;exec bash' \
  sh "$domain"
              else git clone https://github.com/m4ll0k/Infoga.git 
              
gnome-terminal -- /bin/sh -c  \
  '
; cd Infoga;wget https://bootstrap.pypa.io/pip/2.7/get-pip.py; python get-pip.py; pip2 install -r requirements.txt;python setup.py install;python3 infoga.py -d $1; exec bash' \
  sh "$domain"
fi
clear
           
		
		;;
        
                
               
        exit)	clear
                break;;
	*)
		echo "Sorry, I don't understand"
		;;
  esac
done
echo 
