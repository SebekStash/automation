#!/bin/bash

LOGSFILE="/home/sebek/repositories/automation/gitPatternCreator/logs.log"
DAY=$(date +%A)
FULLDATE=$(date)

if [ "$DAY" == "Tuesday" ] || [ "$DAY" == "Thursday" ];then
    for i in {1..3};do
        echo $FULLDATE >> $LOGSFILE 
        git commit -a -m "Autocommit. Date: $FULLDATE"
    done
    git push
fi

if [ "$DAY" == "Monday" ] || [ "$DAY" == "Friday" ];then
    for i in {1..2};do
        echo $FULLDATE >> $LOGSFILE 
        git commit -a -m "Autocommit. Date: $FULLDATE"
    done
    git push
fi

if [ "$DAY" == "Sunday" ] || [ "$DAY" == "Saturday" ];then
    echo $FULLDATE >> $LOGSFILE 
    git commit -a -m "Autocommit. Date: $FULLDATE"
    git push
fi
