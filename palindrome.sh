#! /bin/bash -x

# WAP to Check given number is palindrome or not?


function reverseNo() {
		local number1=$1
		local rev=0
		while [[ number1 -ne 0 ]]
		do
				local digit=$(( number1 % 10 ))
				rev=$(( $rev * 10 + $digit ))
				number1=$(( $number1 / 10 ))
		done
		echo $rev
}

read -p" Enter two numbers " number1 number2
reverse="$( reverseNo $number1 )"
if [[ $reverse -eq $number2 ]]
then
		echo "Given numbers are palindrome "
else
		echo "Given numbers are not Palindrome "
fi

