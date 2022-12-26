echo -n "\nEnter Directory Name : "
read d1
echo -n "Enter Directory Name : " 
read d2
echo "\n"
if [ ! $d1 ]||[ ! $d2 ]; then
	echo "Directory Does Not Exist....\n"
	exit 1
fi
ls $d1>dir1.txt
ls $d2>dir2.txt
mkdir result_dir
for name1 in `cat dir1.txt`
do
	flag=0
	for name2 in `cat dir2.txt`
	do
		if [ "$name1" = "$name2" ]; then
			flag=1
			record=`ls -lt $d1/$name1 $d2/$name2 | head -n` | 
			cpyfilename=`echo $record | cut -d " " -f9` 
			`cp $cpyfilename result_dir`
		fi
	done
	if [ $flag -eq 0 ]; then
		`cp $d1/$name1 result_dir`
	fi
done
