# !/bin/bash

# create file
#COUNTER=0
#while [[ $COUNTER -lt 10000 ]]; do
#  echo "$COUNTER line blabalbalbalbalbalba" >> out.log
#  COUNTER=$(( $COUNTER + 1 ));
#done;

# split csv by ';' and get 3th column 
cut -d ';' -f 3 test.csv > fruits.txt

# sort by reversed order
sort -r fruits.txt > sorted.txt

# get only distinc lines
uniq sorted.txt > distinct.txt

cut -d ';' -f 1 test.csv | sort -r | uniq

# same as cat but reversed
tac distinct.txt

# print only the match '^3 line'
grep -o '^3 line' out.log

# extend regex with grep
egrep -o '^[0-9]{2} line' out.log

# invert the regex condition
grep -o -v -c '^[0-9]{2} line' out.log

# count records
egrep -oc '^[0-9]0 line' out.log

# Strem EDitor, replacing text
sed 's/9999 line/10000 line/g' out.log


printf "\n\n### Sorting and distinct ignoring case ###\n\n"

sort values.conf | uniq -i