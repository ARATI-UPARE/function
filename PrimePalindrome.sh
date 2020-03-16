#! /bin/bash 

# WAP to Check given number is Prime number and then check its palindrome is also prime number or not?

function primeNumber() {
		number=$1
		flag=0
		for (( count=2; count<=$(( number / 2 )); count++ ))
		do
				if [ $(( $number % $count )) -eq 0 ]
				then
						(( flag++ ))
						break;
				fi
		done
		if [ $flag -eq 0 ]
		then
				return=1
		else
				return=0
		fi
		echo $return
}

function reverseNo() {
		local number=$1
		local rev=0
		while [[ number -ne 0 ]]
		do
				local digit=$(( number % 10 ))
				rev=$(( $rev * 10 + $digit ))
				number=$(( $number / 10 ))
		done
		echo $rev
}

read -p" Enter one number " number  # User input
prime="$( primeNumber $number )"		# To check prime number call primeNumber function

if [[ $prime -eq 1 ]]
then
		reverse="$( reverseNo $number )"    # Reverse the prime number call reverseNumber function

		prime="$( primeNumber $reverse )"   # To check reverse number is prime or not call prime function
		if [[ $prime -eq 1 ]]
		then
				echo "Given number is Prime and Palindrome "
		else
		echo "Given number is prime but not Palindrome "
		fi
else
		echo " Given number is not Prime number"
fi
