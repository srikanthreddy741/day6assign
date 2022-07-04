#!/bin/bash -x

function Palindrome()
{
 while (($num > 0))
 do
 sd=$(( $num % 10 ))
 num=$(( $num / 10 ))
 rev=$( echo ${rev}${sd} )
 done
}
read -p "Enter a Number to check whether a given no palindrome or not :" num
originalNum=$num
sd=0
rev=""

Palindrome $num
if (( $originalNum == $rev ))
then
echo "Given number is palindrome"
else
echo "Given number is not a palindrome"
fi
