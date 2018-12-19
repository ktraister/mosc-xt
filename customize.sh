echo "ENTER TWO VALUES TO SWAP"
read -e value

if [[ -z value ]]; then
    echo "YOU NEED TO ENTER A FILE TO MODIFY"
    exit
fi

value1=$(echo $value | cut -d ' ' -f 1)
value2=$(echo $value | cut -d ' ' -f 2)

if ! [[ $(cat $1 | grep $value1) ]]; then
    echo "$value1 not found in $1! EXITING"
    exit
fi
if ! [[ $(cat $1 | grep $value2) ]]; then
    echo "$value2 not found in $1! CONTINUING"
fi

cp $1 $1.old

sed -i "s/$value1/$value2/" $1

echo 
echo outputting diff...
echo "---------------------------------"
diff $1 $1.old



