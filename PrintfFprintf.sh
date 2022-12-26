echo "\nInclude Line #include<stdio.d> In All The C Files....\n"
cFile=`find . -name "*.c"`
str="#include <stdio.h>"
for i in $cFile
do
	pcount=`grep -c '^printf' $i`
	fcount=`grep -c '^fprintf' $i`
	icount=`grep -c '^#' $i`
	if [ $pcount -gt 0 -a $fcount -gt 0 -a $icount -eq 0 ]
	then
		echo $str > temp
		cat $i > temp
		rm $i
		cp temp $i
	fi
done
