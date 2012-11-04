#!/bin/bash
#script name: findNumber
#Charlie Marshall

rNumber=$(($RANDOM % 100))
tNumber=1
finished=0;

while [ $finished -ne 1 ] ; do
	read -p "Enter a number(0-100): " num
	if [ $num -gt 100 ] ; then
		echo "Number should be between 0 and 100"
	elif [ $num -eq $rNumber ] ; then
		echo "Well done! You guessed it in $tNumber tries"
		finished=1
	elif [ $num -gt $rNumber ] ; then
		echo "Lower"
		tNumber=$(($tNumber + 1))
	elif [ $num -lt $rNumber ] ; then
		echo "Higher"
		tNumber=$(($tNumber + 1))
	fi
done

	
