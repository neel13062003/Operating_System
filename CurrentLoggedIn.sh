echo -n "\nEnter Username : "
read name
echo "\n"
who | grep "^$name"
if [ $? -eq 0 ]
then
	echo "\nCurrently Logged In....\n"
else
	echo "\nNot Logged In....\n"
fi
