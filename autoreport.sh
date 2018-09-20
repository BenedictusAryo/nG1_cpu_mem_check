MM=$(date +"%m")
DD=$(date +"%d")
YY=$(date +"%Y")
HN=$(hostname)
./cpu_mem_check.sh > $YY$MM$DD.JKT-PFS-01-autoreport
sed '2d' $YY$MM$DD.JKT-PFS-01-autoreport > tmpfile ; mv tmpfile $YY$MM$DD.JKT-PFS-01-autoreport
scp $YY$MM$DD.JKT-PFS-01-autoreport psi@192.168.38.1:/home/psi/report/
