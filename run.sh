#!/bin/bash

echo "Welcome to my Piano";
echo "Installing requirments....";
echo "Please type your sudo_password where is needed";
read -n1 -p "Some essential libraries will be installed, contiue? >_ [y/n]" answer
if [ "$answer" = "y" ] 
then
	echo
	echo "Provide Your Password"
	sudo apt-get install python3-tk
	sudo apt-get install -y python3-tk
	python3 -m pip install -U pygame --user
	python Mypiano.py
else
	echo 
	read -n1 -p "Abort Installation? >_ [y/n]" answer_2
	if [ "$answer_2" = "y" ]
	then
		exit 1;
	else
		echo
		sudo apt-get install python3-tk
		sudo apt-get install -y python3-tk
		python3 -m pip install -U pygame --user
		python Mypiano.py
	fi
fi		

