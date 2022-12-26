echo -n "\nEnter Username : "
read username
user = `who | grep -c $username`
if [ $user -gt 0 ]
then
	echo $user
	write $username
else
	echo "\nBroadcast Message To All Logged In Users...."
	echo "Write The Message To All.... "
	echo "[Enter ctrl+d To Stop]\n"
wall
fi
echo "\n"
