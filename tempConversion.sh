#! /bin/bash  -x

echo "Enter-1 to convert Fahrenheit-Celsius 
Enter-2 to convert Celsius-Fahrenheit " 
read uChoice

case1=1
case2=2

# Function to convert Fahrenheit To Celsius 
function fahrenheitToCelsius() {
		local temp=$1
		div=`echo "scale=4; 5 / 9" | bc`
		degC=`echo "scale=4; ($temp - 32) * $div" | bc`
		echo $degC
}

# Function to convert Celsius To Fahrenheit
function celsiusToFahrenheit () {
      local temp=$1 
		div=`echo "scale=4; 9 / 5" | bc`
		degF=`echo "scale=4; $temp * $div + 32" | bc`
		echo $degF
}

# case to take conversion selection of user
case $uChoice in
		$case1)
				read -p "Enter Temperature in degF between 32 to 212 degree: " temp
				if [[ $temp -ge 32 && $temp -le 212 ]]
				then
						degC="$( fahrenheitToCelsius $temp )"
						echo "$temp is $degC in Celsius"
				else
						echo "Please enter temperature within range"
				fi
				;;
		$case2)
				read -p "Enter Temperature in degC between 0 to 100 degree: " temp
				if [[ $temp -ge 0 && $temp -le 100 ]]
				then
						degF="$( celsiusToFahrenheit $temp )"
						echo "$temp is $degF in fahrenheit"
				else
						echo "Please enter temperature within range"
				fi
				;;
		*)
				echo Invalid Choice
				;;
esac

