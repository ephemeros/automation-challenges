#!/bin/bash

infile="./puppet_access_ssl.log"

sshdconfigCount=`awk -F/ '$8~/sshd_config/' $infile | wc -l`

sshdconfigResponse200Count=`awk -F/ '$8~/sshd_config/, $9~/200/' $infile | wc -l`

sshdconfigErrorCount=$((sshdconfigCount-sshdconfigResponse200Count))

responseNot200Count=`awk -F'["]' '$3!~/200/' $infile | wc -l`

reportPutRequestCount=`awk -F'["]' '$2~/PUT \/dev\/report/' $infile | wc -l`

reportPutRequestByIpAddress=`awk -F'["]' '$2~/PUT \/dev\/report/' $infile`

echo "Now parsing $infile ..."

echo "The URL /production/file_metadata/modules/ssh/sshd_config has been fetched $sshdconfigCount times. Of these fetch attempts, $sshdconfigErrorCount failed."

echo "There are a total of $responseNot200Count HTTP responses that are not equal to 200." 

echo "There are a total of $reportPutRequestCount HTTP PUT requests made to /dev/report/."

echo "These are the PUT requests made to /dev/report by IP address:"
echo  $reportPutRequestByIpAddress

