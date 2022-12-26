echo -n "\nEnter File Name : "
read fname
echo "\n"
if [ -f $fname ]
then 
	for i in `cat $fname`
	do
		`echo $i >> M`
	done
else
	echo "File Does Not Exist...."
fi
sort M
rm M
echo "\n"
