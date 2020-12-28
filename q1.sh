#!/bin/bash
#a)
mkdir Assignment1
cd Assignment1
#b)
touch lab1.txt lab2.txt lab3.txt lab4.txt lab5.txt
#c)
find -depth -name "*.txt" -exec sh -c 'f="{}"; mv -- "$f" "${f%.txt}.c"' \;
#d)
ls -laShr
#e)
find $(pwd) -maxdepth 2
#f)
find -type f -name "*.txt"

