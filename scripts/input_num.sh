#!/bin/bash
source "$(dirname "$0")/logging_manager.sh"
num=""
inputnum() {
	# test for input number from another script and save log.
	#local num
	#read -p "input a digit: " num
	#echo "You entered: $num"

	# when you input 0 stop this script. anycase show message.
	while [ "$num" != "0" ]
	do 
		echo "please input a digit. find a digit to end this programm."
		read num
		echo "you inputed: $num" | tee -a "$log_dir"
		case "$num" in
			1) echo ": no";;
			2) echo ": noo";;
			3) echo ": nooo";;
			0) echo ": bye"
				exit;;
			*) echo ": others";;
		esac
	done
}
