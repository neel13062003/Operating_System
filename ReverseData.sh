echo "Enter File Name : "
read fname
if [ -f $fname ]
then 
	echo `tac $fname > Jay`
else
	echo "File Does Not Exist...."
fi
echo `cat Jay`
