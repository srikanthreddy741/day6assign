#!/bin/bash -x

Headcount=0
Tailcount=0
count=1
isHead=0

while(( $count <= 21 ))
do
  ((count++))
  randomCheck="$((RANDOM%2))"
  if (( $isHead == $randomCheck ))
  then
      ((Headcount++))
  else
      ((Tailcount++))
  fi

  if (( $Headcount == 11 ))
  then
      echo "Head is occured 11 times"
      exit 0
  elif (( $Tailcount == 11 ))
  then
      echo "Tail is occured 11 times"
      exit 0
  else
      echo "No face occured"
  fi
done
[9:28 pm, 04/07/2022] Shivani Reddy 547: #!/bin/bash -x

function Palindrome()
{
 while (($num > 0))
 do
 rem=$(( $num % 10 ))
 num=$(( $num / 10 ))
 rev=$( echo ${rev}${rem} )
 done
}
read -p "Enter a Number to check whether a given no palindrome or not :" num
givenNum=$num
rem=0
rev=""

Palindrome $num
if (( $givenNum -eq $rev ))
then
echo "Given number is palindrome"
else
echo "Given number is not a palindrome"
fi
