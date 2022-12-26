echo "\n................ Main Menu ................"
echo "\n1. Count The Characters, Words And Lines"
echo "2. Reverse Order"
echo "3. Frequency Of Particular Word In The File"
echo "4. Lower Case To Upper Case\n"
echo -n "Enter Choice : "
read ch
case $ch in 
1) echo -n "\nEnter File Name : "
   read fname
   if [ -f $fname ]
   then
   	echo "\nCharacters : "
	   wc -m $fname
	   echo "Words : "
	   wc -w $fname
	   echo "Lines : "
	   wc -l $fname
	   echo "\n"
   else 
   	echo "\nFile Does Not Exist....\n"
   fi;;
2) echo -n "\nEnter File Name : "
   read fname
   if [ -f $fname ]
   then
	echo "\nReverse Order...."
	echo `tac $fname > Write`
 	echo `cat Write`
	echo "\n"
   else
	echo "\nFile Does Not Exist....\n"
   fi;;
3) echo -n "\nEnter File Name : "
   read fname
   echo -n "\nEnter Word To Find : "
   read w
   for i in `cat $fname`
   do
	echo $i >> Write
   done
   echo "\nTotal No. Of The Words : \c";
   grep -c $w Write
   grep $w Write
   echo "\n";;
4) echo -n "\nEnter File Name : "
   read fname
   echo "\nSee The Output....\n"
   tr [a-z] [A-Z] < $fname
   echo "\n";;
*)echo "\n.... Invalid Choice ....\n"
esac
