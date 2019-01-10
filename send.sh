#!/bin/bash
if [ "$1" == "" ] ; then
   echo usage: $0 message_file adress_list_file
else
for adr in `cat $2` ; do
   /usr/lib/sendmail $adr <$1
   echo $adr
   sleep 0.2
done
fi
