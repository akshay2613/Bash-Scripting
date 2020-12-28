#!/bin/bash/
read string
answer=`echo $string | tr "()" " "`
answer=`echo $answer | sed 's/ *$//g'`
echo '('$answer')'


