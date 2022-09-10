
read -p "Please enter any number!" num1

for I in {1..10}
do
	echo "$num1 * $I = $((num1 * I ))"
done
