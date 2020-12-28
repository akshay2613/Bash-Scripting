#!/bin/bash/
read string
string=${string,,}
a=`echo $string | wc -c`
a=`expr $a - 1`
a2=`expr $a / 2`
j=1
while test $j -le $a2
do
m=`echo $string | cut -c $j`
n=`echo $string | cut -c $a`
if [ $m != $n ]
then
echo "No"
exit
fi
j=`expr $j + 1`
a=`expr $a - 1`
done
echo "Yes"