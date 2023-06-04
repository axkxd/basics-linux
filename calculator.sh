#!/bin/bash

# A simple calculator script
while true; do
    # Read user input
	read num1 op num2

    # Check if user wants to exit
	if [[ $num1 == "exit" ]]; then
		echo "bye"
		break
	elif [[ $num1 =~ "^[0-9]+$" && $num2 =~ "^[0-9]+$" ]]; then
		echo "error"
		break
	fi

	case $op in
	+) let "res=$num1 + $num2" ;;
	-) let "res=$num1 - $num2" ;;
	\*) let "res=$num1 * $num2" ;;
	/) let "res=$num1 / $num2" ;;
	%) let "res=$num1 % $num2" ;;
	\*\*) let "res=$num1 ** $num2" ;;
	*) echo "error"; break ;;
	esac

    # Print result
	echo "$res"
done

