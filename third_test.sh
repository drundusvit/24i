#!/bin/bash -ex
echo "Third test"
answer="$(curl  http://localhost:8081/about -s)"
STR="+31 20 12345678"
echo $answer
if [[ "$answer" =~ .*"$STR" ]]
then 
    exit 0
else
    exit 1
fi 