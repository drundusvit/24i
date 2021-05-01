#!/bin/bash -e
echo "Second test"
answer="$(curl  http://localhost:8081 -s)"
if [[ $answer == "Hello Damir" ]]
then 
    exit 0
else
    exit 1
fi 