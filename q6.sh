#!/bin/bash
power=1
count=0
for var in "$@"
do
if [ $count -eq 0 ]
   then 
       power=$var
else 
    power=`echo "$power ^ $var" | bc`
fi
count=$(($count+1))
done
echo $power
