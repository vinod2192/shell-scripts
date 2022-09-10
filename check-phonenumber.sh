
echo "Enter your name :"
read name
echo "Enter a phone number :"
read phoneNumber
if [[ $phoneNumber =~ [0-9]{10} ]]
then
	echo "----------------------------------------------"
        firstNumber=${phoneNumber:0:1}
        if [ $firstNumber -eq 9 ]
        then
                echo "Hello $name your phone number is : AIRTEL"
        elif [ $firstNumber -eq 8 ]
        then
                echo "Hello $name your phone number is : VODAFONE"
        elif [ $firstNumber -eq 7 ]
        then
                echo "Hello $name your phone number is : JIO"
        elif [ $firstNumber -eq 6 ]
        then
                echo "Hello $name your phone number is : BSNL"
        else
                echo "SORRY $name enterd phone nubmer does not belongs to any network"

        fi

else
	echo "--------------------------------------------"
        echo "Invalid phone number, it should be 10 digits "

fi

