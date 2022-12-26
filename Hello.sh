TotalArguments=`echo $#`
if [ $TotalArguments -eq 0 ]
then
	echo "\nNo Arguments Are Passed....\n"
else
	echo "\n"$1
	echo $2 "\n"
fi
