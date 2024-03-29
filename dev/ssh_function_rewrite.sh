# bash function that adds new argument to ssh called 'holberton'
# must add this to bash .profile (or .bashrc) config file
# after edits run $ source ~/.bashrc

ssh() {
    if [[ "$@" == "holberton" ]]; then
	echo "   .. Which Server?? .."
	echo ""
	echo "(1) 305433-web-01 = 54.144.249.122"
	echo "(2) 305433-web-02 = 34.229.49.249"
	echo "(3) 305433-lb-01 = 54.144.199.0"
	echo "(4) docker container = 34.206.234.184"
	echo " EXIT: any other number to quit"
	echo ""
	read -p "Please Enter the # for the server: " -n 1 -r IPADDRESS
	echo ""
	echo "... please wait"
	if [[ "$IPADDRESS" == 1 ]]; then
	    command ssh ubuntu@66.70.187.105 -i ~/.ssh/holberton
	elif [[ "$IPADDRESS" == 2 ]]; then
	    command ssh ubuntu@142.44.164.125 -i ~/.ssh/holberton
	elif [[ "$IPADDRESS" == 3 ]]; then
	    command ssh ubuntu@66.70.187.49 -i ~/.ssh/holberton
	elif [[ "$IPADDRESS" == 4 ]]; then
	    echo ""
	    read -p "what is the port #? " port
	    command ssh root@54.144.249.122 -p "$port"
	else
	    echo ""
	    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
	fi
    else
	command ssh "$@"
    fi
}
