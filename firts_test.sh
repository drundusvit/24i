#!/bin/bash
echo "First test"
if [ $(curl -LI http://localhost:8081/about -o /dev/null -w '%{http_code}\n' -s) == "200" ]
then 
    exit 0
else
    exit 1
fi 