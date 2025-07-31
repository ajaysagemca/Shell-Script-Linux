#!/bin/bash
string="abcdefghijklmn0"
echo ${string:0} #abcdefghijklmn0
echo ${string:2}  #cdefghijklmn0
echo ${string:3:3} #def
echo ${string: -1} #0
echo ${string: -5} #klmn0

string1="abcgouravabcxyz"
echo ${string1#a*c} #gouravabcxyz  > from starting , sortestmatch
echo ${string1##a*c} #xyz  > from starting , longestmatch

echo ${string1%b*z} #abcgourava > from ending , sortestmatch
echo ${string1%%b*z} #a > from ending , longestmatch


echo ${string1/abc/xyz} #xyzgouravabcxyz
echo ${string1//abc/xyz} #xyzgouravxyzxyz
echo ${string1/abc} #gouravabcxyz
echo ${string1//abc} #gouravxyz