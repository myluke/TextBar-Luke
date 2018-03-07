#!/bin/bash

# Name:			rsyncMonitor.sh
# Version: 		0.1
# 
# Author: 		luke
# Mail: 		myluke@qq.com
#过滤出上传大小
rsyncSize=`tail -2 /tmp/rsync_info.log | grep 'received' |  sed "s/sent.*bytes  //g" | awk '{print $1}'`
echo " $[${rsyncSize%.*}/1024]K/s"
#过滤出最近上传文件
#rsyncText=`tail -10 /tmp/rsync_info.log | grep 'building file list' -A10 | grep '/' -A10 | grep -v 'sent' | grep -v 'total' | grep -v 'building'`
#rsyncText1=`tail -10 /tmp/rsync_info.log`
rsyncText=`cat /tmp/rsync_info.log| grep 'app' | tail`
#echo $rsyncText
#根据空格把rsyncText文本字符串分割
rsyncText=${rsyncText// / };
arr=($rsyncText);  
#遍历数组  
for row in ${arr[*]}  
do  
	#if [ ! -d $row ]; then 
	   	echo $row 
	#fi  
done  