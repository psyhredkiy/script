#!/usr/local/bin/bash

Recips="largamberd@yandex.ru ,tsys_v@diad.com.ua, prog@diad.com.ua , vasilievistep@gmail.com"
Subj="DIAD MAILER"
Body="DIAD"
FromDir="/Samba/drugstore/larga_m/"


Files=`ls -1 $FromDir| wc -l` 

if [ $Files -gt 0 ]
then
 echo "$Body" | mutt -s "$Subj" -a $FromDir*   -- $Recips
 echo $Files" files sent" 
else
 echo "no files to send" && exit 1
fi
   





