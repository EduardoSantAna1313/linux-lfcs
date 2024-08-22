# !/bin/bash

touch file555.txt
chmod 555 file555.txt

touch file777.txt

printf "### searching all files of 555 permissions ###\n\n"

find -perm 555

printf "\n\n### searching all with name file7* ###\n\n"

find -name 'file7*'

# bash create-logs.sh

printf "\n\n### searching all files with size > 1 MB ###\n\n"

find -size +1M

printf "\n\n### searching all files with size < 1 MB AND name = *555* ###\n\n"
find -size -1M -name '*555*'