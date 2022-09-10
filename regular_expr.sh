digit=$1
if [[ $digit =~ [0-9]{10} ]]; then
    echo "$digit is a digit"
else
    echo "oops"
fi
