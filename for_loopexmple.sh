echo enter the value of n:
read n
until [ $n -lt 0 ]
do
	echo $n
	n=$(expr $n - 1)
done
