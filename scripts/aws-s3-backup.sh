#/bin/bash

DATE=$(date +%H-%M-%S)
BACKUP=db-$DATE.sql
DB_HOST=$1
DB_PASSWORD=$2
DB_NAME=$3
BUCKET_NAME=$4
AWS_SECRET=$5

mysqldump -u root -h $DB_HOST -p$DB_PASSWORD $DB_NAME > /tmp/$BACKUP && \
export AWS_ACCESS_KEY_ID=AKIA6FMVPO4Z6KDXMKFI && \
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET && \

echo "Uploading your $BACKUP backup" && \


aws s3 cp /tmp/$BACKUP s3://$BUCKET_NAME/$BACKUP
