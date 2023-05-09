#!/bin/bash

LOGSFILE="./logs.log"
DAY=$(date +%A)
FULLDATE=$(date)
UPDATEGIT=$(git add logs.log;git commit -m "Autocommit date: $FULLDATE";git push)

if [ "$DAY" == "Tuesday" ];then
    echo $FULLDATE >> $LOGSFILE
    echo $UPDATEGIT 
fi
