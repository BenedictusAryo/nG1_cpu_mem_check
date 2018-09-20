MM=$(date +"%m")
DD=$(date +"%d")
YY=$(date +"%Y")
HN=$(hostname)
cp /opt/NetScout/rtm/bin/nsprobe /root/$YY$MM$DD-nsprobe.$HN
cp /opt/NetScout/rtm/config/configfile.xml /root/$YY$MM$DD-configfile.$HN
df -h > $YY$MM$DD-df_disk-$HN.txt
fdisk -l > $YY$MM$DD-fdisk_disk-$HN.txt
zip Backup$HN.$YY$MM$DD.zip $YY$MM$DD*
rm -f $YY$MM$DD*
scp Backup$HN.$YY$MM$DD.zip psi@192.168.38.1:/home/psi/backup/
