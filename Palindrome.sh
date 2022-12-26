echo -n "\nEnter Number : "
read num
length=`echo $num | wc -c`
i=`expr $length - 1`
while [ $i -gt 0 ]
do
	x=`echo $num | cut -c $i`
	temp=$temp$x
	i=`expr $i - 1`
done
echo "Reverse Number : " $temp
if [ $num = $temp ]
then
	echo "Number Is Palindrome....\n"
else
	echo "Number Is Not Palindrome....\n"
fi
