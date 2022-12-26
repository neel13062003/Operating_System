echo -n "Enter The String : "
read string1
echo -n "Enter The String : "
read string2
echo -n "Enter The String : "
read string3
string=`echo $string1 | sed s/$string2/$string3/g`
echo "New String : " $string
