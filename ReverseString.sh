echo -n "Enter The String : "
read string
length=`echo $string | wc -c`
i=`expr $length - 1`
while [ $i -gt 0 ]
do
	x=`echo $string | cut -c $i`
	temp=$temp$x
	i=`expr $i - 1`
done
echo "Reverse String : " $temp
