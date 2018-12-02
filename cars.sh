#! /bin/bash
#cars.sh
#Alexander Ono

#cars.sh


clear
while true; do
	x=":"
	echo "What would you like to do?:"
	echo "[1] Add a car"
	echo "[2] List cars"
	echo "[3] Quit the program"

	read input
		
	case $input in
		1)
			echo "What is the year?"
			read year
			echo "What is the make?"
			read make
			echo "What is the model?"
			read model
			combination="$year$x$make$x$model"
			echo $combination >> My_old_cars.txt	
			clear
			;;
		2)
			sort My_old_cars.txt | tr : " "
			;;
		3)
			clear
			echo "Goodbye!"
			exit 113
			;;
		*)
			echo "Invalid Input..."
	esac
done	
