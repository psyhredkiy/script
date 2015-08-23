#!/usr/local/bin/bash

Recips="garmoniaapt@gmail.com ,tsys_v@diad.com.ua , prog@diad.com.ua , vasilievistep@gmail.com"
Subj="DIAD MAILER"
Body="DIAD"
FromDir="/Samba/drugstore/Garmonia/"


Files=`ls -1 $FromDir| wc -l` 

if [ $Files -gt 0 ]
then
 echo "$Body" | mutt -s "$Subj" -a $FromDir*   -- $Recips
 echo $Files" files sent" 
else
 echo "no files to send" && exit 1
fi
   





