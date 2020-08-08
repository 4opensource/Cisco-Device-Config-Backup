# Cisco-Device-Config-Backup
Cisco Device Startup-Config Backup</br>

These scripts take Startup-config backup on a TFTP Server.</br>

You must be have a TFTP Server.</br>
You must be install expect.</br>
`apt install expect`
`dnf install expect`

You should be erase all content and write your device Ip Address or Hostname.</br>
![devicelist.gif](https://github.com/4opensource/Cisco-Device-Config-Backup/blob/master/images/devicelist.gif)

You should be edit configuration.sh according for yourself.</br>
![configuration.gif](https://github.com/4opensource/Cisco-Device-Config-Backup/blob/master/images/configration.gif)

You should be edit run.sh according for yourself.</br>
![run.gif](https://github.com/4opensource/Cisco-Device-Config-Backup/blob/master/images/run.gif)

You may need permission to execute. </br>
`chmod u+x run.sh configuration.sh` </br>
Finally just run it. </br>
`./run.sh` </br>

![run.gif](https://github.com/4opensource/Cisco-Device-Config-Backup/blob/master/images/backup.gif)
