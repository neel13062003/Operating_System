echo -n "Enter Number : "
read num
sum=0
temp=`expr $num % 2`
if [ $temp -eq 0 ]
then 
	echo "Number Is Even...."
else
	echo "Number Is Odd...."
fi
length=`echo $num | wc -c`
length=`expr $length - 1`
echo "Length : " $length
while [ $num -gt 0 ]
do
	temp=`expr $num % 10`
	sum=`expr $sum + $temp `
	num=`expr $num / 10`
done
echo "Sum Of Digits : " $sum
