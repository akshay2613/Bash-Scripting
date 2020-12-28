#!/bin/bash/
read input
temp=0
add=0
input=$(echo $input | tr -d ' ')
k=$(echo $input | wc -c)-1
for (( j=k-1 ; j>=0 ; j-- ))
do
	m=${input:j:1}
	if [ $temp = 0 ]
	then
		add=`expr $add + $m`
		temp=1
	else
		m=`expr $m \* 2`
		if [ $m -gt 9 ]
		then
			m=`expr $m - 9`
		fi
	add=`expr $add + $m`
	temp=0	
	fi
done
if [[ $add%10 -eq 0 ]]
then
echo "Valid"
else 
echo "Invalid"
fi


