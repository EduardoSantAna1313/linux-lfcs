# !/bin/bash

# create file
COUNTER=0
while [[ $COUNTER -lt 100000 ]]; do
  echo "$COUNTER line blablablablablablablablablabla" >> out.log
  COUNTER=$(( $COUNTER + 1 ));
done;