name=$(awk -F "=" '/firstname/ {print $2}' target.ini)
lastname=$(awk -F "=" '/lastname/ {print $2}' target.ini)
email=$(awk -F "=" '/email/ {print $2}' target.ini)
number=$(awk -F "=" '/number/ {print $2}' target.ini)
username=$(awk -F "=" '/username/ {print $2}' target.ini)

while :
do
clear
tput bold
echo "List of email search tools:"
tput sgr0
		echo "1 Mosint"
		echo "2 Infoga"
		echo "3 Holehe"
		echo "4 QueryTool"
                echo "exit"

read -p ">> " INPUT_STRING
  case $INPUT_STRING in
	1)
		if [ -d mosint ]; then 
		gnome-terminal -- /bin/sh -c  \
  'cd mosint; go run main.go -e "$1" -all;exec bash' \
  sh "$email"
                else git clone https://github.com/alpkeskin/mosint.git; clear
                gnome-terminal -- /bin/sh -c  \
  'cd mosint;pip3 install -r requirements.txt;clear; go run main.go -e "$1" -all;exec bash' \
  sh "$email"

fi
clear
		;;
		
		
	2)    if [ -d Infoga ]; then 
		gnome-terminal -- /bin/sh -c  \
  'cd Infoga; python3 infoga.py -i "$1";exec bash' \
  sh "$email"
             else git clone https://github.com/m4ll0k/Infoga  
             gnome-terminal -- /bin/sh -c  \
  'cd Infoga;pip3 install -r requirements.txt;clear; python3 infoga.py -i "$1";exec bash' \
  sh "$email"
  fi
  
  clear
		
		;;
        3) 	if [ -d holehe ]; then 
		gnome-terminal -- /bin/sh -c  \
  'cd holehe; holehe "$1";exec bash' \
  sh "$email"
                else git clone https://github.com/megadose/holehe.git
                gnome-terminal -- /bin/sh -c  \
  'cd holehe;cd holehe;python3 setup.py install;clear; holehe "$1";exec bash' \
  sh "$email"

fi
        
        clear        
                ;;
        4) clear
        echo ""
        echo https://github.com/oryon-osint/querytool
        echo ""
        ;;
        exit)	clear
                break;;
	*)clear
	
		echo "Sorry, I don't understand"
		echo ""
		;;
  esac
done
echo 

