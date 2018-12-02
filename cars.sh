#! /bin/bash
#numbers.sh
#Alexander Ono

#cars.sh

clear
while true; do
	echo "What would you like to do? :"
	echo "[1] Add a car"
	echo "[2] List cars"
	echo "[3] Quit the program"

	read input

	if [ $input == 1 ] ; then
		echo "What is the year?"
		read year
		echo "What is the make?"
		read make
		echo "What is the model?"
		read model
		echo $year $make $model >> My_old_cars.txt	
		clear
	elif [ $input == 2 ] ; then
		sort My_old_cars.txt

	elif [ $input == 3 ] ; then
		clear
		echo "Goodbye!"
		exit 113

	else
		echo "Invalid Input..."
	fi
done	
