echo "Are you a trainer or student ?"
read b
if [ $b = "student" ]
then
	echo "what is your name"
	read name
	awk '{print $1}' feedback_data.txt | grep -q $name
	if [ $? = 0 ]
	then
		echo "student $name is already exist"
	else
		
	       echo "how is your class going on"
	       read class_remark
	       echo "what is your trainer name"
               read trainer_name
	       echo "trainer is good in teaching or not"
	       read trainer_feedback
	       echo "what ratings you give to your trainer"
	       read trainer_rating
	       echo "$name $class_remark $trainer_name $trainer_feedback $trainer_rating" >> feedback_data.txt
       fi
elif [ $b = "trainer" ]
then 
	echo "which student feedback you need"
	read student_name
	awk '{print $1}' feedback_data.txt | grep -q $student_name 
	if [ $? = 0 ]
	then
		sdata=$(grep $student_name feedback_data.txt)
		echo "below is the feedback data from the student $student_name"
		cl_remark=$(echo $sdata | cut -d " " -f2)
                tr_name=$(echo $sdata | cut -d " " -f3)
		tr_feedback=$(echo $sdata | cut -d " " -f4)
		tr_rating=$(echo $sdata | cut  -d " " -f5)
		echo "student name = $student_name"
		echo "trainer name = $tr_name"
		echo "class remar = $cl_remark"
		echo "trainer feedback = $tr_feedback"
		echo "trainer rating = $tr_rating"
	else
		echo "Student $student_name is not present"
	fi
fi

