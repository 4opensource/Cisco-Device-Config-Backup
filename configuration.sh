#!/usr/bin/expect

## variables

set host "$argv"
set username "Your Username"
set password "Your Password"
set mybackup "Your log Location"

##Connection Current Device

exec echo "*** Connection Current Device with SSH -- [ exec date +%F--\>%R ] ***" >> $mybackup
spawn ssh -o StrictHostKeyChecking=no $username@$host
expect "*assword"
send "$password\r"
expect "*#"

##StartupConfig Copying

exec echo "Startup-Config is Copying $host -- [ exec date +%F--\>%R ] " >> /var/log/mybackup.log

send "copy nvram:startup-config tftp:\r"
expect "*[]?"
send "Your TFT Server IP Adress\r"
expect "*]?"
send "$argv.txt\r"
expect "#"
send "exit\r"
#expect ""

interact



