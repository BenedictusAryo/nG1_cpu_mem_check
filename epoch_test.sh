cd /home/epoch/
folder=$(ls)
epoch=${folder:0:10}
YYYY=$(date -d @$epoch +"%Y")
MM=$(date -d @$epoch +"%m")
DD=$(date -d @$epoch +"%d")
hh=$(date -d @$epoch +"%H")
mm=$(date -d @$epoch +"%M")
ss=$(date -d @$epoch +"%S")
file=$(find /home/epoch/$folder -name "GENERIC_CorrelatedXDR.csv")
mv $file /home/epoch/$YYYY$MM$DD$hh$mm$ss-GENERIC_CorrelatedXDR.csv
