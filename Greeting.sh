echo "\nGreeting....\n"
date
hour=`date | cut -c 9-10`
if [ $hour -ge 0 -a $hour -le 12 ]
then
	echo "\nGood Morning....\n"
elif [ $hour -ge 12 -a $hour -le 18 ]
then
	echo "\nGood Afternoon....\n"
elif [ $hour -ge 18 -a $hour -le 20 ]
then
	echo "\nGood Evening....\n"
else
	echo "\nGood Night....\n"
fi
