#!/bin/bash

LOGSFILE="./logs.log"
DAY=$(date +%A)
FULLDATE=$(date)
UPDATEGIT=$(git add $LOGSFILE;git commit -m "Autocommit. Date: $FULLDATE";git push)

if [ "$DAY" == "Tuesday" ];then
    echo $FULLDATE >> $LOGSFILE
    echo $UPDATEGIT 
fi
