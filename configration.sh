#!/usr/bin/expect

## variables

set host "$argv"
set username "mshowto"
set password "cisco"
set mybackup "/var/log/mybackup.log"

##Connection Current Device

exec echo "*** Connection Current Device with SSH -- [ exec date +%F--\>%R ] ***" >> $
spawn ssh -o StrictHostKeyChecking=no $username@$host
expect "*assword"
send "$password\r"
expect "*#"

##StartupConfig Copying

exec echo "Startup-Config is Copying $host -- [ exec date +%F--\>%R ] " >> /var/log/m$

send "copy nvram:startup-config tftp:\r"
expect "*[]?"
send "172.16.16.129\r"
expect "*]?"
send "$argv.txt\r"
expect "#"
send "exit\r"
#expect ""

interact

