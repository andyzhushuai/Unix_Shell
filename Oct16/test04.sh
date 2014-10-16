#!/bin/sh
#for i in {`cat ./K3Pi.dat` && i<10}
rm -rf Pdf*
NumL=0
NumDau=0
NumEvt=7
NumEvt_Dau=1000
MaxDau=$[ $NumEvt * $NumEvt_Dau ]
#MaxDau=7\*2
echo $MaxDau
#NumFile=1
#NameFile="Pdf_"$NumFile".dat"
#a=$(cat ./small.dat | wc -l)
#bash : if [[ -f filename ]];then

#if [[ -f $NameFile ]]
#then 
#	rm -rf $NameFile
#fi
MaxMoth=$(cat $1 | wc -l)
for i in $(cat $1)
do
	NumL=$(($NumL+1))
	if [ $NumL -le $MaxMoth ]
	then 
#		NumDau=$(($NumDau+1))
		words=$(awk 'NR=='$NumL'' $1)
#		echo "Now starting: "$NameFile
		NumFile=$((($NumL-1)/$MaxDau))
		NameFile="Pdf_"$NumFile".dat"
		echo $words >>$NameFile

#		echo $MaxL
#		echo $NumL
	fi
done
