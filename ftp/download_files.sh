#!/bin/bash

set -e

f=${FTP_FILE}

# read from file which has listed files for download
while read -r line; do
  mkdir -p $(dirname $line) || true
  curl ${FTP_PROTOCOL:-ftp}://${FTP_USER}:${FTP_PASSWORD}@${FTP_SERVER}/$line -o $line
done < $f
