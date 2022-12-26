echo "Enter File Name : "
read fname
if [ -f $fname ]
then 
	echo `ls -l | grep $fname | cut -f9 -d ' '`
else
	echo "File Does Not Exist...."
fi
