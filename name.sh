#!/bin/sh
name=$(awk -F "=" '/firstname/ {print $2}' target.ini)


while :
do
tput bold
echo "List of username search tools:"
tput sgr0
		echo "1 Social-Analyzer"
		echo "2 Sigit"
		echo "3 Spiderfoot"
                echo "4 Webii"
                echo "5 Intelligent X"
                echo "6 QueryTool"
                echo "exit"

read -p ">> " INPUT_STRING
  case $INPUT_STRING in
	1)if [ -d social-analyzer ]; then 
	gnome-terminal -- /bin/sh -c  \
  'cd social-analyzer; npm start;exec bash' \
  sh "$username"
              else sudo apt-get update
              sudo apt-get install -y firefox-esr tesseract-ocr git nodejs npm
              git clone https://github.com/qeeqbox/social-analyzer
gnome-terminal -- /bin/sh -c  \
  '
; cd social-analyzer;npm ci; nmp start; exec bash' \
  sh "$email"
fi
clear
		;;
		
	
	2)  sudo apt-get install wget && wget https://raw.githubusercontent.com/termuxhackers-id/SIGIT/main/installkali.sh && bash installkali.sh
	clear
gnome-terminal -- /bin/sh -c  \
  'sigit; exec bash' \
      clear     
		
	    
		
		;;
        3) if [ -d spiderfoot ]; then
        gnome-terminal -- /bin/sh -c  \
  'cd spiderfoot; python3 ./sf.py -l 127.0.0.1:5001;exec bash' \
  sh "$username"
        
        else git clone https://github.com/smicallef/spiderfoot.git
     gnome-terminal -- /bin/sh -c  \
  'cd spiderfoot;pip3 install -r requirements.txt;clear;python3 ./sf.py -l 127.0.0.1:5001;exec bash' \
  sh "$email"

fi
clear

;;
        4)  clear
        echo ""
         echo "https://webmii.com/"
         echo ""
;;
        5) clear
        echo ""
        echo https://intelx.io/
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
