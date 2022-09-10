
echo "please enter three number :"
	read n1
	read n2
	read n3
	if [ $n1 -eq $n2 ] && [ $n1 -eq $n3 ]
	then 
		echo "numbers are equal"
	elif [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ]
	then
		echo "1st number is largest"
		elif [ $n2 -gt $n1 ] && [ $n2 -gt $n3 ]
        then
		echo "2nd number is largest"
	else
		echo "3rd number is largest"
	fi
