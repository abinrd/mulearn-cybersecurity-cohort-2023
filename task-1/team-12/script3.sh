LOGFILE=$1
ipadd=$2
echo "Requests From "$2
grep $2 $1 | awk {'print substr($6,2) " " substr($7,2) " " substr($8,1,length($8)-1) " " substr($12,2) " " $13 " " $14 " " substr($15,1,length($15)-1) " on " substr($4,2,length($4)-10)'} | sort | uniq -c | sort -nr

