#!/bin/sh
ROOT=`df -Ph | grep root | awk '{ print $4}'`
SDA1=`df -Ph | grep sda1 | awk '{ print $4}'`
MEMORY1=`free -t -m | grep "Mem" | awk '{print $3" MB";}'`
MEMORY2=`free -t -m | grep "Mem" | awk '{print $2" MB";}'`
RELEASE=`cat /etc/os-release | head -n 1 | awk -F "\"" '{print $2}'`
#System uptime
uptime=`cat /proc/uptime | cut -f1 -d.`
upDays=$((uptime/60/60/24))
upHours=$((uptime/60/60%24))
upMins=$((uptime/60%60))
upSecs=$((uptime%60))

echo "
 - OS Release:............: $RELEASE
 - Current user........: $USER
 - Memory used.........: $MEMORY1 / $MEMORY2
 - System uptime.......: $upDays days $upHours hours $upMins minutes $upSecs seconds
 - SD card space.......: $ROOT remaining
 - SDA disk space......: $SDA1 remaining
"
