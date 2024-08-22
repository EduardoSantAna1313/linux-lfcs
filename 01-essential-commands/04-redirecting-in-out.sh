
printf "### Using here-document as input to sort command ###\n\n"
sort <<EOF
6
5
4
3
2
1
EOF

# searching only uncomment lines, then sorting and converting into table using equal sign as delimiter
printf "\n\n### Generating table from adduser.conf file ###\n\n"
grep -v '^#' /etc/adduser.conf | sort | column -t -s '='

printf "\n\n### Redirecting success and errors logs to output files ###\n\n"
./script-with-error.sh 1> success.log 2> errors.log

printf "\n\n### Redirecting success and errors logs to same output file ###\n\n"
./script-with-error.sh 1> all_logs.log 2>&1