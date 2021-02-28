#!/bin/bash

echo "Enter the name of the bucket"

read -r bucket

aws s3 ls --summarize --human-readable --recursive s3://$bucket > newfile.txt

cat newfile.txt | grep -i "total size" 


