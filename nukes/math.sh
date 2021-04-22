#!/bin/bash
echo -e "\e[1;31m                ____    ____    _   _   ___   ____    _   _  \e[0m"
echo -e "\e[1;31m               / ___|  |  _ \  | | | | |_ _| / ___|  | | | | \e[0m"
echo -e "\e[1;34m               \___ \  | |_) | | |_| |  | |  \___ \  | |_| | \e[0m"
echo -e "\e[1;32m                ___) | |  __/  |  _  |  | |   ___) | |  _  | \e[0m"
echo -e "\e[1;32m               |____/  |_|     |_| |_| |___| |____/  |_| |_| \e[0m"

function math()
{
echo "Welcome Buddy"
echo " what do you want to do? Enter 1 for addition,2 for subtraction"
echo " 3 for multiplication or 4 for Division"
read option
echo " Enter operand 1"
read first
echo "Enter operand "
read second

function ans()
{
echo -e "\e[1;31m Doing The Culculations.................................... \e[0m"
sleep 1
echo " The Answer Is........"
}
function again()
{
echo "Do you want to do another sum?" 
echo " Enter 1 for yes or 2 for no"
read optio
if [[ $optio -eq 1 ]]; then
math
else
echo "Thanks for Using our Culculator"
fi
}
function add ()
{
((ans1=$first + $second))
ans
echo "$ans1"
again
}
function multi ()
{
((ans2=$first * $second))
ans
echo "$ans2"
again
}
function div ()
{
((ans3=$first / $second ))
ans
echo "$ans3"
again
}
function sub ()
{
((ans4=$first - $second ))
ans
echo "$ans3"
again
}
if [[ $option -eq 1 ]]; then
add
elif [[ $option -eq 2 ]]; then
sub
elif [[ $option -eq 3 ]]; then
multi
elif [[ $option -eq 4 ]]; then
div
else
echo " Not found,restarting the script"
bash math.sh
fi
}
math
