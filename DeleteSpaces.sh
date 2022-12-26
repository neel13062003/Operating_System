echo "\n\nRemove All Leading And Trailing Space Along With The Blank Lines From A Given File...."
echo -n "\n\nEnter File Name : "
read fname
echo "\n"
if [ -f $fname ]
then
	sed 's/^[  \t]*//; s/[  \t]*$//' $fname>temp
	sed '/^$/d' temp
	mv temp $fname
	echo "\n"
else
	echo "File Does Not Exist....\n\n"
fi
