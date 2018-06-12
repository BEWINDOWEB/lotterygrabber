#!/bin/sh
basepath=$(cd `dirname $0`; pwd)                #shell's dir
datapath=$basepath'/lotterydata'                #shell's datadir
datasuffix='txt'                                #datasuffix

a=`date -d "${date}" +%w`
if [ $a -eq 1 ] || [ $a -eq 3 ] || [ $a -eq 6 ]; then
    python "${basepath}/grab500_ssq.py" $datapath $datasuffix
elif [ $a -eq 2 ] || [ $a -eq 4 ] || [ $a -eq 0 ]; then
    python "${basepath}/grab500_dlt.py" $datapath $datasuffix
fi

