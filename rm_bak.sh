#!/bin/bash
#script name: rm_bak.sh
#Charlie Marshall

usage="./rm_bak.sh filename/dirname"

deleteFunc(){
currentDate=`date +"%m%d%y.%H%M%S"`
fileName="$1.$currentDate"

zip -r ~/Recycled/$fileName $1
rm -r $1
echo "~/Recycled/$fileName.zip has been created."

}



if [ $# -ne 1 ] ; then
	echo $usage
	exit
fi

input=$1

if [ -e $input ] ; then
	if [ -f	$input ] ; then
		echo "$1 is a file"
		deleteFunc $input
		exit
	elif [ -d $input ] ; then
		echo "$1 is a directory"
		deleteFunc $input
		exit
	fi
else
	echo $usage
fi
		



