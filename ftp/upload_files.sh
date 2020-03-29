#!/bin/bash

set -e

f=${FTP_FILE}

# read from file which has listed files for upload
while read -r line; do
  curl -T $line ${FTP_PROTOCOL:-ftp}://${FTP_USER}:${FTP_PASSWORD}@${FTP_SERVER}/$line
done < $f
