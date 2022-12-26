echo "Enter A : "
read a
echo "Enter B : "
read b
if [ $a -gt $b ]
then
	echo "A Is Greater."
elif [ $b -gt $a ]
then
	echo "B Is Greater."
elif [ $a -eq $b ]
then
	echo "A And B Both No. Are Equal."
fi
