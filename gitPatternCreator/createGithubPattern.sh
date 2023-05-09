#!/bin/bash

LOGSFILE="./logs.log"
DAY=$(date +%A)
FULLDATE=$(date)

if [ "$DAY" == "Tuesday" ];then
    for i in {1..4};do
        echo $FULLDATE >> $LOGSFILE 
        git commit -a -m "Autocommit. Date: $FULLDATE"
    done
    git push
fi
