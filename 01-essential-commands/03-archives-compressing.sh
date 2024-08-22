# create tar file
printf "### Creating tar file ###\n"
tar cf my-tar.tar distinct.txt fruits.txt

# list files into tar
printf "### Listing files from tar file ###\n\n"
tar tf my-tar.tar

# extract files from .tar
mkdir -p output/

printf "\n\n### Extrating files to output/ ###\n\n"
tar -xf my-tar.tar -C output

ls output/

# creating crompressed tar file
printf "\n\n### Creating compressed tar file ###\n\n"
tar -caf my-tar.tar.gz *.txt

rm -r output/
mkdir -p output/

tar -xf my-tar.tar.gz --directory output/

ls -lh my-tar.tar.gz

printf "\n\n### Creating bzip file and keeping the original file ###\n\n"
bzip2 --keep *.txt

printf "\n\n### Compressing using xz ###\n\n"
xz fruits.txt 

printf "\n\n### Decompressing using xz and pirnt on stdout the result ###\n\n"
xz -d fruits.txt.xz -c