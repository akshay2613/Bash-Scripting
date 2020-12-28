#!/bin/bash/
read w
c1=`echo $w | grep -o . | sort | tr -d "\n"`
for c2 in `compgen -abc`
do
 c3=`echo $c2 | grep -o . | sort | tr -d "\n"`
 if [ $c3 == $c1 ]; then
 echo "YES"
 echo $c2
 exit
 fi
 done
 echo "NO"

