#!/bin/sh
LOG="./`basename $0`_`date "+%Y%m%d"`.log"
{
    echo "start:"`date`
    cp -rp /db/* /db_tmp
    echo "end:"`date`
} 2>&1 | 
while read msg;
do
    echo "$msg" >> ${LOG}
done
