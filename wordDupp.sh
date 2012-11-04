#!/bin/bash

if [ $# = 1 ] ; then
cd $(dirname $0)
file=$1
oldfile=$1"_old"
mv $1 ./$oldfile
sort -u $oldfile > $file
rm ./$oldfile
fi

