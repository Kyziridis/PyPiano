#!/bin/bash

echo "Welcome to my Piano";
echo "Installing requirments....";
echo
read -n1 -p "This script will install some essential python libraries, proceed? >_ [y/n]" proceed
echo
if [ "$proceed" = "n" ]
then 
	exit 1;
else

	echo "Please type your sudo_password where is needed";
	echo
	read -n1 -p "Are you using python2.7 >_ [y/n]" py_answer
	echo

	if [ "$py_answer" = "y" ]
	then
		echo
		echo "Provide your password "
		echo
		sed -i '2s/^/#/' Mypiano.py
		sudo apt-get install python-pygame
		sudo apt-get install python-tk
		sudo apt-get install -y python-tk
		python2 Mypiano.py
	else

		echo
		echo "Provide Your Password"
		sed -i '1s/^/#/' Mypiano.py
		sudo apt-get install python3-tk
		sudo apt-get install -y python3-tk
		python3 -m pip install -U pygame --user
		python3 Mypiano.py
	fi
fi
sed -i '1,2s/^#//' Mypiano.py
