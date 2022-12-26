echo "\n\nPerform Operations As Per Passed Arguments....\n"
TotalArguments=`echo $#`
if [ $TotalArguments -eq 0 ]
then
	echo "No Arguments Are Passed....\n"
	cFiles=`find . -name "*.c"`
	for i in $cFiles
	do
		echo "File : "$i
		echo "\nFirst 10 Lines Of C File....\n"
		head -10 $i
		echo -n "\nDo You Want To Remove This File [Yes:Y|No:N] : "
		read ch
		if [ $ch = "Y" -o $ch = "y" ]
		then
			echo "\nUser Wants To Delete This File : "$i
			rm -i $i
			echo "\n"

		else
			echo "\nUser Does Not Want To Delete This File : "$i
			echo "\n"
		fi
	done
else 
	if [ -f $1 ]
	then 
		echo "File Exist....\n"
		cat $1
		echo "\n"
	else
		echo "File Does Not Exist....\n\n"
	fi
fi
