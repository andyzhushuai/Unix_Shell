#!/bin/sh
NumL=1
for k in $( seq 1 $1 )
do
	if [ $NumL -lt $1 ]
		then
			echo $k
	fi
#	NumL=$(($NumL+1))
done
