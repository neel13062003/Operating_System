echo "\nDelete Zero Size Files...."
echo `find . -type f -size 0 -exec rm{}\;`
echo "\nFiles Are Deleted....\n"
ls -l
echo "\n"
