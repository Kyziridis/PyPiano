\echo "Welcome to my Piano\n";
echo "Installing requirments....\n";
read -p "Are you using Anaconda-python Distribution? >_ [y/n]" answer
if [ $answer == y ]
then
	conda install -c anaconda tk
	conda install -c conda-forge tk 
	conda install -c cogsci pygame
else
	sudo apt-get install python3-tk
	sudo apt-get install -y python3-tk
	python3 -m pip install -U pygame --user
fi
python Mypiano.py
