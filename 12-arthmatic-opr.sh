#!/bin/bash
a=10
b=20
echo "a+b" #a+b
echo "10+20" #10+20

echo "$((a+b))" #30
echo "$((10+20))" #30

echo "$((a-b))" 
echo "$((a%b))" 
echo "$((a/b))" 
echo "$((a*b))" 
echo
echo "$(($a*$b))" 
echo "$((2**3))" 

((a++)) #a=a+1
echo $a

((a+=2)) #a=a+2
echo $a
