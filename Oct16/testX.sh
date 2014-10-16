#!/bin/sh
NAMEFILE=ddd
rm -rf NAMEFILE
Head=63
Tail=70
#Head=XXXX
#Tail=XXXX
		words=$(cat ./small.dat | awk 'NR<='$Tail'&&NR>='$Head'')
		echo $words >>$NAMEFILE

