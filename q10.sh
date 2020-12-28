#!/bin/bash/
read operation
read n
read result
for (( j=2 ; j<=n ; j++ ))
do
read i
	if [ "$operation" = "/" ]
	then
		result=`awk "BEGIN {print $result/$i}"`
	elif [ "$operation" = "*" ]
	then
		result=`awk "BEGIN {print $result*$i}"`
	elif [ "$operation" = "+" ]
	then
		result=`awk "BEGIN {print $result+$i}"`
	elif [ "$operation" = "-" ]
	then
		result=`awk "BEGIN {print $result-$i}"`
	fi
done
printf %.4f $(echo "$result" | bc -l)
