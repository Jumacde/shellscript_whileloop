#!/bin/bash
source "$(dirname "$0")/logging_manager.sh"
num=""
inputnum() {
	# test for input number from another script and save log.
	#local num
	#read -p "input a digit: " num
	#echo "You entered: $num"
	while [ "$num" != "0" ]
	do 
		echo "please input a digit. find a digit to end this programm."
		read num
		echo "you inputed: $num" | tee -a "$log_dir"	
	done
}
