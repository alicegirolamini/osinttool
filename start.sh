
name=$(awk -F "=" '/firstname/ {print $2}' target.ini)
lastname=$(awk -F "=" '/lastname/ {print $2}' target.ini)
email=$(awk -F "=" '/email/ {print $2}' target.ini)
number=$(awk -F "=" '/number/ {print $2}' target.ini)
username=$(awk -F "=" '/username/ {print $2}' target.ini)
domain=$(awk -F "=" '/domain/ {print $2}' target.ini)
clear
tput bold
echo ""
echo  "             \        / __       __  __        __
              \  /\  / |__  |   |   |  | |\/| |__
               \/  \/  |__  |__ |__ |__| |  | |__" 
tput sgr0 
echo ""
while :
do
echo "************TARGET************"
echo $name $lastname
echo $email
echo $number
echo $username
echo $domain
echo "******************************"
echo ""
tput bold
echo "what target information do you want to use?"
tput sgr0
echo "1 email"
echo "2 username"
echo "3 name"
echo "4 telephone number"
echo "5 domain"
echo "exit"

read -p ">> " INPUT_STRING
  case $INPUT_STRING in
	1)
		clear
	./email.sh
		;;
	2)
	clear
	./username.sh
		;;
        3)
        clear
              ./name.sh	
                
                ;;	
        4) clear
        ./telephone.sh
        ;;   
        5) clear
        ./domain.sh
        ;;
       exit) exit
       ;;
	*)clear
	
		echo "Sorry, I don't understand"
		echo ""
  esac
done
echo 
echo "Bye Bye!"
