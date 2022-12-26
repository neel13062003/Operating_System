totalargs=`echo $#`
if [ $totalargs -eq 0 ]
then
	echo "\n\nNo Argument Is Passed.... "
	echo -n "\n\nEnter 8 Digits Number : "
	read num
	echo "\n"
	cnt=0
	for i in 1 2 3 4 5 6 7 8
	do
		temp=$num
		temp=`expr $num % 10`
		x=`expr $temp % 2`
		if [ $x = 0 ]
		then
			echo $temp " "
			cnt=$cnt+1		
		fi
		num=`expr $num / 10`
	done
	echo "\n"
	if [ $cnt = 0 ]
	then
		echo "\nEven Value Is Not Found....\n\n"
	fi
else
	echo "\nArgument Is Passed....\n"
	num=$1
	cnt=0
	for i in 1 2 3 4 5 6 7 8
	do
		temp=$num
		temp=`expr $num % 10`
		x=`expr $temp % 2`
		if [ $x = 0 ]
		then
			echo $temp " "
			cnt=$cnt+1		
		fi
		num=`expr $num / 10`
	done
	echo "\n"
	if [ $cnt = 0 ]
	then
		echo "Even Value Is Not Found....\n"
	fi
fi
