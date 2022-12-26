echo -n "\nEnter A : "
read a
echo -n "Enter B : "
read b
echo "\n....Main Menu...."
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo -n "\nEnter Choice : "
read choice
case $choice in 
1)
	addition=`expr $a + $b`
	echo "\nAddition : " $addition;;
2)
	subtraction=`expr $a - $b`
	echo "\nSubtraction : " $subtraction;;
3)
	multiplication=`expr $a \* $b`
	echo "\nMultiplication : " $multiplication;;
4)
	division=`expr $a / $b`
	echo "\nDivision : " $division;;
esac
echo "\n"
