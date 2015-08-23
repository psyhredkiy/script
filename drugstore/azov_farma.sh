#!/usr/local/bin/bash

Recips="azov-farma.berdyansk@mail.ru , tsys_v@diad.com.ua , prog@diad.com.ua , vasilievitstep@gmail.com "
#Subj="DIAD MAILER"
#Body="DIAD"
FromDir="/Samba/drugstore/azov_farma/"



LQ=`ls -1 $FromDir| wc -l` 
PN="1"
ATTS=" "

while [ $PN -lt $[$LQ+1] ] 

do 
   
 LN=$PN"p"
 SED=`ls -1 $FromDir | sed -n $LN` 
 ATT1="-a"$FromDir$SED" "
 ATTS="$ATTS$ATT1" 
 PN=$[ $PN+1 ]
done

if [ $LQ -gt 0 ]
then
 echo "DIAD Mailer" | mutt  $ATTS -s "DIAD" -- $Recips
 echo $LQ" files sent" 
else
 echo "no files to send" && exit 1
fi
   





