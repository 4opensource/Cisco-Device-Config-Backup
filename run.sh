#!/bin/bash

## variables
mybackup="/var/log/mybackup.log"
Time=`date +%F--\>%R`

backupSrc=/var/lib/tftpboot
backupDst=/var/lib/tftpboot


##Function Start

function device_list {

        for device in `cat devices.list`;
        do
	./configration.sh $device;
        done
}

function backup {

        echo "Backup is Starting" $Time >> $mybackup
        tar -cvzf $backupSrc/`date +%F`.tar.gz --absolute-names $backupDst/*.txt
        echo "Your Backup Task Has Been Complate" $Time >> $mybackup
        echo "Files are Deleting $Time " >> $mybackup
        echo "\n" >> $mybackup
        rm -f /var/lib/tftpboot/*.txt
}

##Function End

device_list
backup

