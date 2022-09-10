
echo "enter the name : \c"
read name
echo "enter the age : \c"
read age
echo "enter the gender : \c"
read gender

if [ $age -ge 18 ]
then
	if [ $gender = "male" ]
	then
		echo "hello $name you are welcome to satuday party"
	else
		echo "hello $name you are welcome to sunday party"
	fi
else
	echo "sorry $name, you are under 18yrs old, not allowed to party"
fi


