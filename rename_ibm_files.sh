#===============================================================================================================================
#Rename GTPv2 File
#===============================================================================================================================
cd /opt/NetScout/nSI/Enterprise/flowengine/output/D2C1/192.168.38.9_if3/
folder=$(ls)
epoch=${folder:0:10}
YYYY=$(date -d @$epoch +"%Y")
MM=$(date -d @$epoch +"%m")
DD=$(date -d @$epoch +"%d")
hh=$(date -d @$epoch +"%H")
mm=$(date -d @$epoch +"%M")
ss=$(date -d @$epoch +"%S")
file=$(find /opt/NetScout/nSI/Enterprise/flowengine/output/D2C1/192.168.38.9_if3/$folder -name "GTPv2_CONTROL_CorrelatedXDR.csv") 
mv $file /opt/IBM/GTPv2/$YYYY$MM$DD$hh$mm$ss-GTPv2_CONTROL_CorrelatedXDR.csv
#new_files1=$(find /opt/IBM/temp/GTPv2/*GTPv2_CONTROL_CorrelatedXDR.csv) 
#for nf1 in $new_files1 
#do 
#if [[ ! $(lsof "${nf1}") ]]; then 
#       mv "${nf1}" /opt/IBM/GTPv2
#fi 
#===============================================================================================================================
#Rename SMS File
#===============================================================================================================================
cd /opt/NetScout/nSI/Enterprise/flowengine/output/D2C5/192.168.38.12_if3/
folder=$(ls)
epoch=${folder:0:10}
YYYY=$(date -d @$epoch +"%Y")
MM=$(date -d @$epoch +"%m")
DD=$(date -d @$epoch +"%d")
hh=$(date -d @$epoch +"%H")
mm=$(date -d @$epoch +"%M")
ss=$(date -d @$epoch +"%S")
file=$(find /opt/NetScout/nSI/Enterprise/flowengine/output/D2C5/192.168.38.12_if3/$folder -name "SMS_CorrelatedXDR.csv") 
mv $file /opt/IBM/SMS/$YYYY$MM$DD$hh$mm$ss-SMS_CorrelatedXDR.csv
#new_files2=$(find /opt/IBM/temp/SMS/*SMS_CorrelatedXDR.csv) 
#for nf2 in $new_files2 
#do 
#if [[ ! $(lsof "${nf2}") ]]; then 
#       mv "${nf2}" /opt/IBM/SMS 
#fi 
#==============================================================================================================================
