echo "\n....Main Menu...."
echo "1. Display Current Directory"
echo "2. List Directory"
echo "3. Make Directory"
echo "4. Change Directory"
echo "5. Copy A File"
echo "6. Rename A File"
echo "7. Delete A File"
echo "8. Edit A File"
echo -n "\nEnter Choice : "
read choice
echo "\n"
case $choice in
1)
	pwd
	echo "\nDone";;
2)
	ls -l
	echo "\nDone";;
3)
	mkdir Mansi
	echo "Done";;
4)
	cd Mansi
	echo "Done";;
5)
	cp J1 M1
	echo "Done";;
6)
	mv M1 J2
	echo "Done";;
7)
	rm J2
	echo "Done";;
8)	
	gedit J1
	echo "Done";;
esac
echo "\n"
