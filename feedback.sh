echo "Are you a trainer or student ?"
read b

if [ $b = "student" ]
then
	echo "what is your name"
	read a
	echo "how is your class going on"
	read a1
	echo "what is your trainer name"
        read name
	echo "trainer is good in teaching or not"
	read teach
	echo "what ratings you give to your trainer"
	read rating
	echo "how interractive is your trainer"
	read a2
	echo "my name is $a, and my class is going $a1, my trainer name is $name & he teaches very $teach & i give $rating ratings as he is $a2" > $a.txt

elif [ $b = "trainer" ]
then
     echo "which student feedback you need"
     read c
     echo "below are the feedback from your student $c"
     cat $c.txt
	
fi
