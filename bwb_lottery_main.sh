#!/bin/sh
cronfile="/etc/crontab"             		#debian cronfile
basepath=$(cd `dirname $0`; pwd)    		#shell's dir
datapath=$basepath'/lotterydata'                #shell's datadir
datasuffix='txt'                                #datasuffix
crontaskname="bwb_lottery_everyday.sh"       	#shell's name
crontasktime="0 23\t* * 1-4,6-7" 		#crontab task run time,default everyday except friday 23:00

echo "checking..."
if [ ! -f ${cronfile} ]; then  
    echo "crontab file $cronfile doesn't exsits.\nplease check file or modify shell setting and run shell again."  
    exit 1
fi

pyver=`python -V 2>&1|awk '{print $2}'|awk -F '.' '{print $1}'`
if [ $pyver != '2' ]; then
    echo "python2(.7) is needed."
    exit 1
fi




echo "writing crontab file..."
if [ `grep -c "${crontaskname}" ${cronfile}` -eq '0' ]; then
    echo "${crontasktime}\troot\t${basepath}/${crontaskname}">>${cronfile}
else
    sed -i "s#^.*${crontaskname}.*#${crontasktime}\troot\t${basepath}/${crontaskname}#" ${cronfile}
fi
/etc/init.d/cron restart

echo "making data dir..."
if [ ! -d "${datapath}" ]; then
    mkdir ${datapath}
else
    if [ ! -d "${datapath}/bak" ]; then
        mkdir "${datapath}/bak"
    else
        mv ${datapath}/*.${datasuffix} ${datapath}/bak/ 2>/dev/null
    fi
fi

echo "changing permission..."
chmod +x "$basepath/$crontaskname"
chmod +w -R $datapath

echo "finished!"
